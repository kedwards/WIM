Imports System.Data
Imports System.Data.OracleClient
Imports TalismanEnergy.WIM.Common
Imports TalismanEnergy.WIM.Common.AppConstants

Public Class DBAccess

  Private _ConnectionString As String

  Public Sub New(ByVal ConnectionString As String)
    _ConnectionString = ConnectionString
  End Sub

  Private Function GetConnectionString() As String

    Dim strConn As String
    strConn = _ConnectionString
    Return strConn

  End Function

  Public Function getDBName() As String

    Try
      Using cn As New OracleConnection(GetConnectionString())
        cn.Open()
        Return cn.DataSource.ToString()
      End Using

    Catch ex As Exception
      Return ex.Message
    End Try

  End Function

  Public Function ValidateUser(ByVal iUserIdentity As String) As Boolean

    Dim isValidUser As Boolean
    Dim strUserIdentity As String = IIf(iUserIdentity.IndexOf("\") > 0, iUserIdentity.Substring(iUserIdentity.IndexOf("\") + 1), iUserIdentity)

    Try
      Using cn As New OracleConnection(GetConnectionString())
        cn.Open()

        Using cmd As OracleCommand = cn.CreateCommand()
          cmd.CommandText = "SELECT COUNT(*) FROM V_WELL_MANAGER_PERMISSIONS " & _
                            "WHERE UPPER(USERID) = '" & strUserIdentity.ToUpper & "'"
          cmd.CommandType = CommandType.Text

          Try
            isValidUser = IIf(cmd.ExecuteScalar() > 0, True, False)

          Catch ex As Exception
            Throw ex

          Finally
            cn.Close()

          End Try

        End Using

      End Using

    Catch ex As Exception
      Throw ex

    End Try

    Return isValidUser

  End Function

  Public Function GetUserPermissions(ByVal iuserID As String) As DataSet

    Dim sTables As New Text.StringBuilder
    Dim sSql As New Text.StringBuilder

    'Setup table name and query for Create permission
    sTables.Append(USER_CREATE_PERMISSION)
    sTables.Append(";")

    sSql.Append("SELECT S.SOURCE, S.SHORT_NAME")
    sSql.Append(" FROM V_WELL_MANAGER_PERMISSIONS WMP, PPDM.R_SOURCE S")
    sSql.Append(" WHERE UPPER(USERID) = '")
    sSql.Append(iuserID)
    sSql.Append("'")
    sSql.Append(" AND ACTION = 'C'")
    sSql.Append(" AND WMP.SOURCE = S.SOURCE")
    sSql.Append(" AND S.ROW_SOURCE = 'WELL'")
    sSql.Append(" AND S.ACTIVE_IND = 'Y'")
    sSql.Append(" AND S.SHORT_NAME IS NOT NULL")
    sSql.Append(" ORDER BY S.SHORT_NAME")
    sSql.Append(" ;")

    'Setup table name and query for Add permission
    sTables.Append(USER_ADD_PERMISSION)
    sTables.Append(";")

    sSql.Append("SELECT S.SOURCE, S.SHORT_NAME")
    sSql.Append(" FROM V_WELL_MANAGER_PERMISSIONS WMP, PPDM.R_SOURCE S")
    sSql.Append(" WHERE UPPER(USERID) = '")
    sSql.Append(iuserID)
    sSql.Append("'")
    sSql.Append(" AND ACTION = 'A'")
    sSql.Append(" AND WMP.SOURCE = S.SOURCE")
    sSql.Append(" AND S.ROW_SOURCE = 'WELL'")
    sSql.Append(" AND S.ACTIVE_IND = 'Y'")
    sSql.Append(" AND S.SHORT_NAME IS NOT NULL")
    sSql.Append(" ORDER BY S.SHORT_NAME")
    sSql.Append(" ;")

    'Setup table name and query for Update permission
    sTables.Append(USER_UPDATE_PERMISSION)
    sTables.Append(";")

    sSql.Append("SELECT S.SOURCE, S.SHORT_NAME")
    sSql.Append(" FROM V_WELL_MANAGER_PERMISSIONS WMP, PPDM.R_SOURCE S")
    sSql.Append(" WHERE UPPER(USERID) = '")
    sSql.Append(iuserID)
    sSql.Append("'")
    sSql.Append(" AND ACTION = 'U'")
    sSql.Append(" AND WMP.SOURCE = S.SOURCE")
    sSql.Append(" AND S.ROW_SOURCE = 'WELL'")
    sSql.Append(" AND S.ACTIVE_IND = 'Y'")
    sSql.Append(" AND S.SHORT_NAME IS NOT NULL")
    sSql.Append(" ORDER BY S.SHORT_NAME")
    sSql.Append(" ;")

    'Setup table name and query for Inactivate permission
    sTables.Append(USER_INACTIVATE_PERMISSION)
    sTables.Append(";")

    sSql.Append("SELECT S.SOURCE, S.SHORT_NAME")
    sSql.Append(" FROM V_WELL_MANAGER_PERMISSIONS WMP, PPDM.R_SOURCE S")
    sSql.Append(" WHERE UPPER(USERID) = '")
    sSql.Append(iuserID)
    sSql.Append("'")
    sSql.Append(" AND ACTION = 'I'")
    sSql.Append(" AND WMP.SOURCE = S.SOURCE")
    sSql.Append(" AND S.ROW_SOURCE = 'WELL'")
    sSql.Append(" AND S.ACTIVE_IND = 'Y'")
    sSql.Append(" AND S.SHORT_NAME IS NOT NULL")
    sSql.Append(" ORDER BY S.SHORT_NAME")
    sSql.Append(" ;")

    'Setup table name and query for Delete permission
    sTables.Append(USER_DELETE_PERMISSION)
    sTables.Append(";")

    sSql.Append("SELECT S.SOURCE, S.SHORT_NAME")
    sSql.Append(" FROM V_WELL_MANAGER_PERMISSIONS WMP, PPDM.R_SOURCE S")
    sSql.Append(" WHERE UPPER(USERID) = '")
    sSql.Append(iuserID)
    sSql.Append("'")
    sSql.Append(" AND ACTION = 'D'")
    sSql.Append(" AND WMP.SOURCE = S.SOURCE")
    sSql.Append(" AND S.ROW_SOURCE = 'WELL'")
    sSql.Append(" AND S.ACTIVE_IND = 'Y'")
    sSql.Append(" AND S.SHORT_NAME IS NOT NULL")
    sSql.Append(" ORDER BY S.SHORT_NAME")
    sSql.Append(" ;")

    'Setup table name and query for Move permission
    sTables.Append(USER_MOVE_PERMISSION)

    sSql.Append("SELECT S.SOURCE, S.SHORT_NAME")
    sSql.Append(" FROM V_WELL_MANAGER_PERMISSIONS WMP, PPDM.R_SOURCE S")
    sSql.Append(" WHERE UPPER(USERID) = '")
    sSql.Append(iuserID)
    sSql.Append("'")
    sSql.Append(" AND ACTION = 'M'")
    sSql.Append(" AND WMP.SOURCE = S.SOURCE")
    sSql.Append(" AND S.ROW_SOURCE = 'WELL'")
    sSql.Append(" AND S.ACTIVE_IND = 'Y'")
    sSql.Append(" AND S.SHORT_NAME IS NOT NULL")
    sSql.Append(" ORDER BY S.SHORT_NAME")

    Return GetDataSet(sSql.ToString, USER_PERMISSIONS, sTables.ToString)

  End Function

  Public Function CallWellActionSP(ByRef wa As WellActionDTO) As WellActionDTO

    Try
      Using cn As New OracleConnection(GetConnectionString())
        cn.Open()

        Using cmd As OracleCommand = cn.CreateCommand()
          cmd.CommandType = CommandType.StoredProcedure

          cmd.CommandText = "WIM.WIM_GATEWAY.Well_Action"
          cmd.Parameters.Add("pWIM_STG_ID", OracleType.Number).Value = wa.STG_ID
          cmd.Parameters.Add("pTLM_ID", OracleType.VarChar, 20).Direction = ParameterDirection.InputOutput
          cmd.Parameters("pTLM_ID").Value = wa.UWI
          cmd.Parameters.Add("pSTATUS_CD", OracleType.VarChar, 1).Direction = ParameterDirection.Output
          cmd.Parameters.Add("pAUDIT_NO", OracleType.Number).Direction = ParameterDirection.Output

          Try
            cmd.ExecuteNonQuery()

            wa.UWI = cmd.Parameters("pTLM_ID").Value.ToString
            wa.STATUS_CD = cmd.Parameters("pSTATUS_CD").Value.ToString
            wa.AUDIT_NO = cmd.Parameters("pAUDIT_NO").Value

          Catch ex As Exception
            wa.STATUS_CD = WELL_ACTION_ERROR
            wa.AUDIT_NO = WELL_MOVE_SP_CALL_FAULT
          Finally
            cn.Close()

          End Try

        End Using

      End Using

      If wa.STATUS_CD <> WELL_ACTION_COMPLETE Then
        If wa.AUDIT_NO = WELL_MOVE_SP_CALL_FAULT Then
          wa.ERRORMSG = ATTR_WIM_GATEWAY_WELL_ACTION & ",Gateway ""WIM.WIM_GATEWAY.WELL_ACTION"" stored procedure execution failure."
        Else
          wa.ERRORMSG = GetErrorMsg(wa.AUDIT_NO)
          'wa.WIM_AUDIT_LOG = GetDataTable("SELECT * FROM WIM.WIM_AUDIT_LOG WHERE AUDIT_ID = " & wa.AUDIT_NO)
        End If
      End If

    Catch ex As Exception
      Throw ex

    End Try

    Return wa

  End Function

  Public Function CallWellMoveSP(ByVal wm As WellMoveDTO) As WellMoveDTO

    Try
      Using cn As New OracleConnection(GetConnectionString())

        cn.Open()
        Using cmd As OracleCommand = cn.CreateCommand()

          cmd.CommandText = "WIM.WIM_GATEWAY.Well_Move"
          cmd.CommandType = CommandType.StoredProcedure

          cmd.Parameters.Add("pFROM_TLM_ID", OracleType.VarChar, 20).Value = wm.FROM_UWI
          cmd.Parameters.Add("pFROM_SOURCE", OracleType.VarChar, 20).Value = wm.FROM_SOURCE
          cmd.Parameters.Add("pTO_TLM_ID", OracleType.VarChar, 20).Value = wm.TO_UWI
          cmd.Parameters("pTO_TLM_ID").Direction = ParameterDirection.InputOutput
          cmd.Parameters.Add("pUSER", OracleType.VarChar, 20).Value = wm.USERID
          cmd.Parameters.Add("pSTATUS", OracleType.Number).Direction = ParameterDirection.Output

          Try
            cmd.ExecuteNonQuery()
            wm.TO_UWI = cmd.Parameters("pTO_TLM_ID").Value.ToString
            wm.STATUS = cmd.Parameters("pSTATUS").Value

          Catch ex As Exception
            wm.STATUS = WELL_MOVE_SP_CALL_FAULT

          Finally
            cn.Close()

          End Try

        End Using

      End Using

      If wm.STATUS = WELL_MOVE_SP_CALL_FAULT Then
        wm.ERRORMSG = ATTR_WIM_GATEWAY_MOVE & ",Gateway WIM_GATEWAY.WELL_MOVE stored procedure execution failure."
      ElseIf wm.STATUS <> WELL_MOVE_SUCCESSFUL Then
        wm.ERRORMSG = GetErrorMsg(wm.STATUS)
      End If

    Catch ex As Exception
      Throw ex

    End Try

    Return wm

  End Function

  Public Function CallFindWellSP(ByVal aliasType As String, _
                                 ByVal aliasValue As String) _
  As String

    Using cn As New OracleConnection(GetConnectionString())

      cn.Open()
      Using cmd As OracleCommand = cn.CreateCommand()

        cmd.CommandText = "WIM.WIM_GATEWAY.find_well"
        cmd.CommandType = CommandType.StoredProcedure

        cmd.Parameters.Add("ptlmid", OracleType.VarChar, 20)
        cmd.Parameters("ptlmid").Direction = ParameterDirection.ReturnValue
        cmd.Parameters.Add("palias", OracleType.VarChar, 66).Value = aliasValue
        cmd.Parameters.Add("pfind_type", OracleType.VarChar, 20).Value = aliasType

        cmd.ExecuteNonQuery()
        Return cmd.Parameters("ptlmid").Value.ToString
      End Using
    End Using

  End Function

  Public Function GetWell(ByVal iWell As String) As WellMoveHeaderDTO

    Dim sSql As New Text.StringBuilder
    Dim dt As New DataTable
    Dim wa As New WellMoveHeaderDTO

    sSql.Append("SELECT W.UWI, W.IPL_UWI_LOCAL, W.COUNTRY, RC.LONG_NAME COUNTRY_NAME, W.WELL_NAME ") _
        .Append("FROM PPDM.WELL W ") _
        .Append("LEFT OUTER JOIN PPDM.R_COUNTRY RC ") _
        .Append("ON W.COUNTRY = RC.COUNTRY ") _
        .Append("WHERE W.UWI = '").Append(iWell).Append("' ") _
        .Append("AND W.ACTIVE_IND = 'Y'")

    dt = GetDataTable(sSql.ToString)

    If dt.Rows.Count = 1 Then
      wa.UWI = GetValue(dt.Rows(0).Item("UWI"))
      wa.IPL_UWI_LOCAL = GetValue(dt.Rows(0).Item("IPL_UWI_LOCAL"))
      wa.COUNTRY = GetValue(dt.Rows(0).Item("COUNTRY"))
      wa.COUNTRY_NAME = GetValue(dt.Rows(0).Item("COUNTRY_NAME"))
      wa.WELL_NAME = GetValue(dt.Rows(0).Item("WELL_NAME"))
    End If

    Return wa

  End Function

  Public Function FindWellOrigUOM(ByVal iWell As String) As WellActionDTO

    Dim sSql As New Text.StringBuilder
    Dim dt As New DataTable
    Dim wa As New WellActionDTO(GetVersionOrigUOM("", ""))

    sSql.Append("SELECT W.UWI, W.IPL_UWI_LOCAL, W.COUNTRY, RC.LONG_NAME COUNTRY_NAME, W.WELL_NAME ") _
        .Append("FROM PPDM.WELL W ") _
        .Append("LEFT OUTER JOIN PPDM.R_COUNTRY RC ") _
        .Append("ON W.COUNTRY = RC.COUNTRY ") _
        .Append("WHERE W.UWI = '").Append(iWell).Append("' ") _
        .Append("AND W.ACTIVE_IND = 'Y'")

    dt = GetDataTable(sSql.ToString)

    If dt.Rows.Count = 1 Then
      wa.UWI = GetValue(dt.Rows(0).Item("UWI"))
      wa.IPL_UWI_LOCAL = GetValue(dt.Rows(0).Item("IPL_UWI_LOCAL"))
      wa.COUNTRY = GetValue(dt.Rows(0).Item("COUNTRY"))
      wa.COUNTRY_NAME = GetValue(dt.Rows(0).Item("COUNTRY_NAME"))
      wa.WELL_NAME = GetValue(dt.Rows(0).Item("WELL_NAME"))
    End If

    Return wa

  End Function

  Public Function FindWellsStdUOM(ByVal iWellList As String, ByVal iTableName As String) As DataTable

    Dim sWellList() As String = iWellList.Split(",")
    Dim sbWellList As New Text.StringBuilder
    Dim sSql As New Text.StringBuilder

    For Each sWell As String In sWellList
      sbWellList.Append("'").Append(sWell).Append("',")
    Next

    sbWellList = sbWellList.Remove(sbWellList.Length - 1, 1)
    sSql.Append("SELECT W.UWI, W.IPL_UWI_LOCAL, RS.SOURCE, RS.SHORT_NAME SOURCE_SHORT_NAME, W.ACTIVE_IND, RC.LONG_NAME COUNTRY,")
    sSql.Append(" W.WELL_NAME WELL_NAME, W.PLOT_NAME, RWS.SHORT_NAME CURRENT_STATUS, TO_CHAR(W.SPUD_DATE, 'dd/mm/yyyy') SPUD_DATE,")
    sSql.Append(" TO_CHAR(W.RIG_RELEASE_DATE, 'dd/mm/yyyy') RIG_RELEASE_DATE, W.GROUND_ELEV GROUND_ELEV,")
    sSql.Append(" W.KB_ELEV KB_ELEV, W.DRILL_TD DRILL_TD,")
    sSql.Append(" W.SURFACE_LATITUDE SURFACE_LATITUDE,")
    sSql.Append(" W.SURFACE_LONGITUDE SURFACE_LONGITUDE,")
    sSql.Append(" W.BOTTOM_HOLE_LATITUDE BOTTOM_HOLE_LATITUDE,")
    sSql.Append(" W.BOTTOM_HOLE_LONGITUDE BOTTOM_HOLE_LONGITUDE,")
    sSql.Append(" TO_CHAR(W.ROW_CHANGED_DATE, 'dd/mm/yyyy') ROW_CHANGED,")
    sSql.Append(" WL.LICENSE_NUM, WL.RIG_TYPE, WL.CONTRACTOR, WL.DRILL_RIG_NUM, WL.RIG_NAME")
    sSql.Append(" FROM ((PPDM.WELL W LEFT OUTER JOIN PPDM.WELL_LICENSE WL ON W.UWI = WL.UWI AND W.PRIMARY_SOURCE = WL.SOURCE AND UPPER(WL.ACTIVE_IND) = 'Y')")
    sSql.Append(" LEFT OUTER JOIN PPDM.R_SOURCE RS ON W.PRIMARY_SOURCE = RS.SOURCE AND UPPER(RS.ACTIVE_IND) = 'Y')")
    sSql.Append(" LEFT OUTER JOIN PPDM.R_COUNTRY RC ON W.COUNTRY = RC.COUNTRY")
    sSql.Append(" LEFT OUTER JOIN PPDM.R_WELL_STATUS RWS ON W.CURRENT_STATUS = RWS.STATUS")
    sSql.Append(" LEFT OUTER JOIN PPDM.R_RIG_TYPE RT ON WL.RIG_TYPE = RT.RIG_TYPE")
    sSql.Append(" WHERE W.UWI IN (")
    sSql.Append(sbWellList)
    sSql.Append(")")
    sSql.Append(" AND UPPER(W.ACTIVE_IND) = 'Y'")
    sSql.Append(" ORDER BY W.UWI, W.PRIMARY_SOURCE")

    Return GetDataTable(sSql.ToString, iTableName)

  End Function

  Public Function GetVersionOrigUOM(ByVal iTLMID As String, ByVal iSource As String) As DataSet

    Dim sTables As New Text.StringBuilder
    Dim sSql As New Text.StringBuilder
    Dim ds As New DataSet
    Dim dt As New DataTable

    sTables.Append("WELL_VERSION")
    sTables.Append(";")

    sSql.Append("SELECT DISTINCT W.* ")
    sSql.Append("FROM WIM.WELL_VERSION_OUOM_VW W ")
    sSql.Append("WHERE W.UWI = '").Append(iTLMID).Append("' ")
    sSql.Append("AND W.SOURCE = '").Append(iSource).Append("' ")
    sSql.Append("AND W.ACTIVE_IND = 'Y'")
    sSql.Append(";")

    sTables.Append("WELL_LICENSE")
    sTables.Append(";")

    sSql.Append("SELECT * FROM WIM.WELL_LICENSE_OUOM_VW ")
    sSql.Append("WHERE UWI = '").Append(iTLMID).Append("' ")
    sSql.Append("AND SOURCE = '").Append(iSource).Append("' ")
    sSql.Append("AND ACTIVE_IND = 'Y'")
    sSql.Append(";")

    sTables.Append("WELL_NODE_VERSION")

    sSql.Append("SELECT ROWNUM LIST_ID, WNV.* ") _
        .Append("FROM WIM.WELL_NODE_VERSION_OUOM_VW WNV ") _
        .Append("WHERE WNV.IPL_UWI = '").Append(iTLMID).Append("' ") _
        .Append("AND WNV.SOURCE = '").Append(iSource).Append("' ") _
        .Append("AND WNV.ACTIVE_IND = 'Y' ") _
        .Append("ORDER BY WNV.NODE_POSITION DESC, WNV.NODE_OBS_NO DESC")

    Dim dsRealData As DataSet
    dsRealData = GetDataSet(sSql.ToString(), "WELL_VERSION_REAL_TABLE", sTables.ToString())

    dsRealData.EnforceConstraints = False
    Dim dr As DataRow

    If dsRealData.Tables("WELL_VERSION").Rows.Count = 0 Then
      dr = dsRealData.Tables("WELL_VERSION").NewRow()
      dsRealData.Tables("WELL_VERSION").Rows.Add(dr)
    End If
    If dsRealData.Tables("WELL_LICENSE").Rows.Count = 0 Then
      dr = dsRealData.Tables("WELL_LICENSE").NewRow()
      dsRealData.Tables("WELL_LICENSE").Rows.Add(dr)
    End If

    Dim WIMStgID As Integer = -1

    sTables = New Text.StringBuilder
    sTables.Append("WIM_STG_WELL_VERSION")
    sTables.Append(";")

    sSql = New Text.StringBuilder
    sSql.Append("SELECT * FROM WIM.WIM_STG_WELL_VERSION ")
    sSql.Append("WHERE WIM_STG_ID = ").Append(WIMStgID)
    sSql.Append(";")

    sTables.Append("WIM_STG_WELL_LICENSE")
    sTables.Append(";")

    sSql.Append("SELECT * FROM WIM.WIM_STG_WELL_LICENSE ")
    sSql.Append("WHERE WIM_STG_ID = ").Append(WIMStgID)
    sSql.Append(";")

    sTables.Append("WIM_STG_WELL_NODE_VERSION")

    sSql.Append("SELECT * FROM WIM.WIM_STG_WELL_NODE_VERSION ")
    sSql.Append("WHERE WIM_STG_ID = ").Append(WIMStgID)

    Dim dsStgData As DataSet
    dsStgData = GetDataSet(sSql.ToString(), "WIM_STG_TABLES", sTables.ToString())

    ' update staging dataset with misc fields from dataset1 with real table data + ui data
    dsStgData.EnforceConstraints = False
    dsStgData.Tables("WIM_STG_WELL_VERSION").Merge(dsRealData.Tables("WELL_VERSION"))
    dsStgData.Tables("WIM_STG_WELL_LICENSE").Merge(dsRealData.Tables("WELL_LICENSE"))
    dsStgData.Tables("WIM_STG_WELL_NODE_VERSION").Merge(dsRealData.Tables("WELL_NODE_VERSION"))

    dsStgData.EnforceConstraints = False
    dsStgData.Tables("WIM_STG_WELL_VERSION").Columns("WIM_STG_ID").AllowDBNull() = True
    dsStgData.Tables("WIM_STG_WELL_LICENSE").Columns("WIM_STG_ID").AllowDBNull() = True
    dsStgData.Tables("WIM_STG_WELL_NODE_VERSION").Columns("WIM_STG_ID").AllowDBNull() = True
    dsStgData.Tables("WIM_STG_WELL_NODE_VERSION").Columns("WIM_SEQ").AllowDBNull() = True

    Return dsStgData

  End Function

  Public Function FindVersionsOrigUOM(ByVal iWellList As String, ByVal iTableName As String) As DataTable

    Dim sWellList() As String = iWellList.Split(",")
    Dim sbWellList As New Text.StringBuilder
    Dim sSql As New Text.StringBuilder

    For Each sWell As String In sWellList
      sbWellList.Append("'").Append(sWell).Append("',")
    Next

    sbWellList = sbWellList.Remove(sbWellList.Length - 1, 1)

    sSql.Append("SELECT W.UWI, W.IPL_UWI_LOCAL, W.SOURCE, W.SOURCE_NAME SOURCE_SHORT_NAME, W.ACTIVE_IND, W.COUNTRY_NAME COUNTRY,")
    sSql.Append(" W.WELL_NAME WELL_NAME, W.PLOT_NAME, RWS.SHORT_NAME CURRENT_STATUS, TO_CHAR(W.SPUD_DATE, 'dd/mm/yyyy') SPUD_DATE,")
    sSql.Append(" TO_CHAR(W.RIG_RELEASE_DATE, 'dd/mm/yyyy') RIG_RELEASE_DATE, W.GROUND_ELEV GROUND_ELEV,")
    sSql.Append(" W.KB_ELEV KB_ELEV, W.DRILL_TD DRILL_TD,")
    sSql.Append(" W.SURFACE_LATITUDE SURFACE_LATITUDE,")
    sSql.Append(" W.SURFACE_LONGITUDE SURFACE_LONGITUDE,")
    sSql.Append(" W.BOTTOM_HOLE_LATITUDE BOTTOM_HOLE_LATITUDE,")
    sSql.Append(" W.BOTTOM_HOLE_LONGITUDE BOTTOM_HOLE_LONGITUDE,")
    sSql.Append(" WL.LICENSE_NUM")
    sSql.Append(" FROM (WIM.WELL_VERSION_OUOM_VW W LEFT OUTER JOIN WIM.WELL_LICENSE_OUOM_VW WL ON W.UWI = WL.UWI AND W.SOURCE = WL.SOURCE AND UPPER(WL.ACTIVE_IND) = 'Y')")
    sSql.Append(" LEFT OUTER JOIN PPDM.R_WELL_STATUS RWS ON W.CURRENT_STATUS = RWS.STATUS")
    sSql.Append(" WHERE W.UWI IN (")
    sSql.Append(sbWellList)
    sSql.Append(")")
    sSql.Append(" AND UPPER(W.ACTIVE_IND) = 'Y'")
    sSql.Append(" ORDER BY W.UWI, W.SOURCE")

    Return GetDataTable(sSql.ToString, iTableName)

  End Function

  Public Function FindVersionsStdUOM(ByVal iWellList As String, ByVal iTableName As String) As DataTable

    Dim sWellList() As String = iWellList.Split(",")
    Dim sbWellList As New Text.StringBuilder
    Dim sSql As New Text.StringBuilder

    For Each sWell As String In sWellList
      sbWellList.Append("'").Append(sWell).Append("',")
    Next

    sbWellList = sbWellList.Remove(sbWellList.Length - 1, 1)

    sSql.Append("SELECT W.UWI, W.IPL_UWI_LOCAL, W.SOURCE, RS.SHORT_NAME SOURCE_SHORT_NAME, W.ACTIVE_IND, RC.LONG_NAME COUNTRY,")
    sSql.Append(" W.WELL_NAME WELL_NAME, W.PLOT_NAME, RWS.SHORT_NAME CURRENT_STATUS, TO_CHAR(W.SPUD_DATE, 'dd/mm/yyyy') SPUD_DATE,")
    sSql.Append(" TO_CHAR(W.RIG_RELEASE_DATE, 'dd/mm/yyyy') RIG_RELEASE_DATE, W.GROUND_ELEV GROUND_ELEV,")
    sSql.Append(" W.KB_ELEV KB_ELEV, W.DRILL_TD DRILL_TD,")
    sSql.Append(" W.SURFACE_LATITUDE SURFACE_LATITUDE,")
    sSql.Append(" W.SURFACE_LONGITUDE SURFACE_LONGITUDE,")
    sSql.Append(" W.BOTTOM_HOLE_LATITUDE BOTTOM_HOLE_LATITUDE,")
    sSql.Append(" W.BOTTOM_HOLE_LONGITUDE BOTTOM_HOLE_LONGITUDE,")
    sSql.Append(" TO_CHAR(W.ROW_CHANGED_DATE, 'dd/mm/yyyy')||' ('||W.ROW_CHANGED_BY||')' ROW_CHANGED,")
    sSql.Append(" WL.LICENSE_NUM")
    sSql.Append(" FROM PPDM.WELL_VERSION W")
    sSql.Append(" LEFT OUTER JOIN PPDM.WELL_LICENSE WL ON W.UWI = WL.UWI AND W.SOURCE = WL.SOURCE AND UPPER(WL.ACTIVE_IND) = 'Y'")
    sSql.Append(" LEFT OUTER JOIN PPDM.R_SOURCE RS ON W.SOURCE = RS.SOURCE AND UPPER(RS.ACTIVE_IND) = 'Y'")
    sSql.Append(" LEFT OUTER JOIN PPDM.R_COUNTRY RC ON W.COUNTRY = RC.COUNTRY")
    sSql.Append(" LEFT OUTER JOIN PPDM.R_WELL_STATUS RWS ON W.CURRENT_STATUS = RWS.STATUS")
    sSql.Append(" WHERE W.UWI IN (")
    sSql.Append(sbWellList)
    sSql.Append(")")
    sSql.Append(" AND UPPER(W.ACTIVE_IND) = 'Y'")
    sSql.Append(" ORDER BY W.UWI, W.SOURCE")

    Return GetDataTable(sSql.ToString, iTableName)




  End Function

  Public Function GetLookUpTables(ByVal LookUpList As String) As DataSet

    Dim sTables As New Text.StringBuilder
    Dim sSql As New Text.StringBuilder

    If LookUpList.Contains(APP_COUNTRY_LOOKUP_DATA) Or LookUpList.Length = 0 Then
      'Setup table name and query for Country lookup
      sTables.Append(APP_COUNTRY_LOOKUP_DATA)
      sTables.Append(";")

      sSql.Append("SELECT COUNTRY, LONG_NAME")
      sSql.Append(" FROM PPDM.R_COUNTRY")
      sSql.Append(" WHERE ACTIVE_IND = 'Y' AND LONG_NAME IS NOT NULL")
      sSql.Append(" ORDER BY 2")
      sSql.Append(" ;")
    End If

    If LookUpList.Contains(APP_PROVINCESTATE_LOOKUP_DATA) Or LookUpList.Length = 0 Then
      'Setup table name and query for Province/State lookup
      sTables.Append(APP_PROVINCESTATE_LOOKUP_DATA)
      sTables.Append(";")

      sSql.Append("SELECT COUNTRY, PROVINCE_STATE, LONG_NAME")
      sSql.Append(" FROM PPDM.R_PROVINCE_STATE")
      sSql.Append(" WHERE ACTIVE_IND = 'Y' AND LONG_NAME IS NOT NULL")
      sSql.Append(" ORDER BY 2")
      sSql.Append(" ;")
    End If

    If LookUpList.Contains(APP_COUNTY_LOOKUP_DATA) Or LookUpList.Length = 0 Then
      'Setup table name and query for County lookup
      sTables.Append(APP_COUNTY_LOOKUP_DATA)
      sTables.Append(";")

      sSql.Append("SELECT COUNTRY, PROVINCE_STATE, COUNTY, LONG_NAME")
      sSql.Append(" FROM PPDM.R_COUNTY")
      sSql.Append(" WHERE ACTIVE_IND = 'Y' AND LONG_NAME IS NOT NULL")
      sSql.Append(" ORDER BY 2")
      sSql.Append(" ;")
    End If

    If LookUpList.Contains(APP_WELL_PROFILE_TYPE_LOOKUP_DATA) Or LookUpList.Length = 0 Then
      'Setup table name and query for Well Profile Type lookup
      sTables.Append(APP_WELL_PROFILE_TYPE_LOOKUP_DATA)
      sTables.Append(";")

      sSql.Append("SELECT WELL_PROFILE_TYPE, LONG_NAME")
      sSql.Append(" FROM PPDM.R_WELL_PROFILE_TYPE")
      sSql.Append(" WHERE ACTIVE_IND = 'Y' AND LONG_NAME IS NOT NULL")
      sSql.Append(" ORDER BY 2")
      sSql.Append(" ;")
    End If

    If LookUpList.Contains(APP_CURRENT_STATUS_LOOKUP_DATA) Or LookUpList.Length = 0 Then
      'Setup table name and query for Current Status lookup
      sTables.Append(APP_CURRENT_STATUS_LOOKUP_DATA)
      sTables.Append(";")

      sSql.Append("SELECT STATUS, LONG_NAME")
      sSql.Append(" FROM PPDM.R_WELL_STATUS")
      sSql.Append(" WHERE ACTIVE_IND = 'Y' AND LONG_NAME IS NOT NULL AND UPPER(STATUS_TYPE) = 'WELL'")
      sSql.Append(" ORDER BY 2")
      sSql.Append(" ;")
    End If

    If LookUpList.Contains(APP_COORD_SYSTEM_LOOKUP_DATA) Or LookUpList.Length = 0 Then
      'Setup table name and query for Coordinate System lookup
      sTables.Append(APP_COORD_SYSTEM_LOOKUP_DATA)
      sTables.Append(";")

      sSql.Append("SELECT NVL(C.COORD_SYSTEM_NAME,'#'||C.COORD_SYSTEM_ID) DISPLAY_TEXT, C.COORD_SYSTEM_ID VALUE")
      sSql.Append(" FROM PPDM.CS_COORDINATE_SYSTEM C")
      sSql.Append(" WHERE C.ACTIVE_IND = 'Y'")
      sSql.Append(" AND C.COORDINATE_SYSTEM_TYPE = 'ellipsoidal'")
      'sSql.Append(" AND SOURCE = 'IWIM'")
      'sSql.Append(" AND C.COORD_SYSTEM_SHORT_NAME IS NOT NULL")
      'sSql.Append(" UNION")
      'sSql.Append(" SELECT "", "" FROM DUAL")
      sSql.Append(" ORDER BY 1")
      sSql.Append(" ;")
    End If

        Dim needBA As Boolean = False  ' Only if filtering BA lists from cache rather than direct SQL to the DB

    If needBA And (LookUpList.Contains(APP_TLM_BUSINESS_ASSOCIATE_LOOKUP_DATA) Or LookUpList.Length = 0) Then
      'Setup table name and query for Operator and Licensee and lookup
      sTables.Append(APP_TLM_BUSINESS_ASSOCIATE_LOOKUP_DATA)
      sTables.Append(";")

      sSql.Append("SELECT BA_NAME || ' {' || BUSINESS_ASSOCIATE || '}' DISPLAY_TEXT, '' || BUSINESS_ASSOCIATE VALUE")
      sSql.Append(" FROM PPDM.BUSINESS_ASSOCIATE")
      sSql.Append(" WHERE ACTIVE_IND = 'Y' AND BA_TYPE = 'COMPANY' AND BA_NAME IS NOT NULL")
      sSql.Append(" ORDER BY 1")
      sSql.Append(" ;")
    End If

    If LookUpList.Contains(APP_STRAT_AGE_LOOKUP_DATA) Or LookUpList.Length = 0 Then
      'Setup table name and query for Strat Age lookup
      sTables.Append(APP_STRAT_AGE_LOOKUP_DATA)
      sTables.Append(";")

      sSql.Append("SELECT ORDINAL_AGE_CODE, STRAT_UNIT_ID STRAT_UNIT_ID")
      sSql.Append(" FROM PPDM.STRAT_UNIT")
      sSql.Append(" WHERE ACTIVE_IND = 'Y'")
      sSql.Append(" ORDER BY 2")
      sSql.Append(" ;")
    End If

    If LookUpList.Contains(APP_BASIN_LOOKUP_DATA) Or LookUpList.Length = 0 Then
      'Setup table name and query for Strat Age lookup
      sTables.Append(APP_BASIN_LOOKUP_DATA)
      sTables.Append(";")

      'sSql.Append("SELECT AREA_ID, PREFERRED_NAME as BASIN_NAME")
      'sSql.Append(" FROM PPDM.AREA")
      'sSql.Append(" WHERE ACTIVE_IND = 'Y'")
      'sSql.Append(" AND AREA_TYPE = 'BASIN'")
      'sSql.Append(" AND REMARK = 'PARENT BASIN'")
      'sSql.Append(" ORDER BY 2")
      'sSql.Append(" ;")

      sSql.Append("SELECT A.AREA_ID, A.PREFERRED_NAME as BASIN_NAME, A2.COUNTRY")
      sSql.Append(" FROM PPDM.AREA A")
      sSql.Append(" INNER JOIN PPDM.AREA_CONTAIN AC ON AC.CONTAINED_AREA_ID = A.AREA_ID")
      sSql.Append(" INNER JOIN PPDM.AREA A2 ON A2.AREA_ID = AC.CONTAINING_AREA_ID AND AC.CONTAINING_AREA_TYPE = 'COUNTRY'")
      sSql.Append(" WHERE A.ACTIVE_IND = 'Y'")
      sSql.Append(" AND a.AREA_TYPE = 'BASIN'")
      ' --AND REMARK = 'PARENT BASIN'     
      sSql.Append(" ORDER BY 2;")


    End If

    'RIG Type Table Look Up 
    If LookUpList.Contains(APP_RIG_TYPE_LOOKUP_DATA) Or LookUpList.Length = 0 Then
      'Setup table name and query for Strat Age lookup
      sTables.Append(APP_RIG_TYPE_LOOKUP_DATA)
      sTables.Append(";")

      sSql.Append("SELECT RIG_TYPE RIG_TYPE_CODE, LONG_NAME as RIG_TYPE_NAME")
      sSql.Append(" FROM PPDM.R_RIG_TYPE")
      sSql.Append(" WHERE ACTIVE_IND = 'Y'")
      sSql.Append(" ORDER BY 2")
      sSql.Append(" ;")
    End If

    sTables.Remove(sTables.Length - 1, 1)
    sSql.Remove(sSql.Length - 1, 1)

    Return GetDataSet(sSql.ToString, APP_WIM_LOOKUP_TABLES, sTables.ToString)

  End Function

  Public Function GetFilteredBAList(ByVal filter As String, ByVal maxRows As Integer) As DataRow()
    If filter Is Nothing Then filter = String.Empty
    If filter <> String.Empty Then filter = " AND " + filter

    Return GetDataTable("SELECT * FROM (" & _
                        "SELECT BA_NAME || ' {' || BUSINESS_ASSOCIATE || '}' DISPLAY_TEXT, '' || BUSINESS_ASSOCIATE VALUE" & _
                        " FROM PPDM.BUSINESS_ASSOCIATE" & _
                        " WHERE ACTIVE_IND = 'Y' AND BA_TYPE = 'COMPANY' AND BA_NAME IS NOT NULL " & _
                        filter & _
                        " ORDER BY BA_NAME, BUSINESS_ASSOCIATE" & _
                        ") WHERE ROWNUM <= " & maxRows).Select()

  End Function

  Private Sub InsertToStagingTable(ByVal sSQL As String)

    Try
      Using cn As New OracleConnection(GetConnectionString())

        cn.Open()
        Using cmd As OracleCommand = cn.CreateCommand()

          cmd.CommandText = sSQL
          cmd.CommandType = CommandType.Text

          Try
            cmd.ExecuteNonQuery()

          Catch ex As Exception
            Throw ex

          Finally
            cn.Close()

          End Try

        End Using

      End Using

    Catch ex As Exception
      Throw ex

    End Try

  End Sub

  Private Function GetErrorMsg(ByVal iStatus As Integer) As String

    Dim rErrorMsg As New Text.StringBuilder
    Dim sSql As String = "SELECT NVL(ATTRIBUTE, 'UNKNOWN') ATTRIBUTE, " & _
                                "CASE WHEN WIM_SEQ > 0 THEN " & _
                                    "TO_CHAR(WIM_SEQ) || '=>' || NVL(TEXT, 'UNKNOWN') " & _
                                "ELSE " & _
                                    "NVL(TEXT, 'UNKNOWN') " & _
                                "END AS TEXT " & _
                        "FROM WIM.WIM_AUDIT_LOG WHERE AUDIT_ID = " & iStatus & _
                        " AND AUDIT_TYPE NOT IN ('I','W')"
    Try
      Using cn As New OracleConnection(GetConnectionString())

        cn.Open()
        Using cmd As OracleCommand = cn.CreateCommand()

          cmd.CommandText = sSql
          cmd.CommandType = CommandType.Text

          Try
            Using rdr As OracleDataReader = cmd.ExecuteReader()
              While rdr.Read
                Dim strAttribute As String
                If rdr.Item(0).ToString.LastIndexOf(".") > 0 Then
                  Dim strAr() As String = rdr.Item(0).ToString.Split(".")
                  strAttribute = strAr(1)
                Else
                  strAttribute = rdr.Item(0).ToString
                End If

                rErrorMsg.Append(strAttribute).Append(",").Append(rdr.Item(1).ToString().Replace(vbLf, "\n")).Append(";")
              End While

            End Using

          Catch ex As Exception
            Throw ex

          Finally
            cn.Close()

          End Try

        End Using

      End Using

    Catch ex As Exception
      Throw ex

    End Try

    If Not String.IsNullOrEmpty(rErrorMsg.ToString()) Then
      rErrorMsg = rErrorMsg.Remove(rErrorMsg.Length - 1, 1)
    End If

    Return rErrorMsg.ToString

  End Function

  Private Function GetDataTable(ByVal command As String, Optional ByVal dtName As String = "") As DataTable

    Dim dt As New DataTable(dtName)

    Try
      Using cn As New OracleConnection(GetConnectionString())
        cn.Open()

        Try
          Using cmd As OracleCommand = cn.CreateCommand()

            cmd.CommandText = command
            cmd.CommandType = CommandType.Text
            Using rdr As OracleDataReader = cmd.ExecuteReader()
              dt.Load(rdr)
            End Using

          End Using

        Catch ex As Exception
          Throw ex

        Finally
          cn.Close()

        End Try

      End Using

    Catch ex As Exception
      Throw ex

    End Try

    Return dt

  End Function

  Private Function GetDataSet(ByVal sSql As String, ByVal dsName As String, ByVal sTables As String) As DataSet

    Dim sSqlList As String() = sSql.Split(";")
    Dim sTableList As String() = sTables.Split(";")

    Dim i As Integer = 0

    Dim ds As New DataSet(dsName)
    Dim dt As DataTable

    Try
      Using cn As New OracleConnection(GetConnectionString())
        cn.Open()

        Try
          For Each sQry As String In sSqlList
            Using cmd As OracleCommand = cn.CreateCommand()

              cmd.CommandText = sQry
              cmd.CommandType = CommandType.Text

              Using rdr As OracleDataReader = cmd.ExecuteReader()
                dt = New DataTable(sTableList(i))
                dt.Load(rdr)
                ds.Tables.Add(dt)
                i += 1
              End Using

            End Using

          Next

        Catch ex As Exception
          Throw ex

        Finally
          cn.Close()

        End Try

      End Using

    Catch ex As Exception
      Throw ex

    End Try

    Return ds

  End Function

  Private Function GetValue(ByVal df As Object) As String

    Dim value As String = String.Empty

    If Not df Is System.DBNull.Value Then
      value = df.ToString
    End If

    Return value

  End Function

  Public Function IsNullOrEmptyText(ByVal attr As String) As String

    Dim value As String = "NULL"

    If String.IsNullOrEmpty(attr) = False Then
      value = "'" & attr & "'"
    End If

    Return value

  End Function

  Private Function GetWIMStgID() As Decimal

    Dim WIMStgID As Integer

    Try
      Using cn As New OracleConnection(GetConnectionString())

        cn.Open()
        Using cmd As OracleCommand = cn.CreateCommand()

          cmd.CommandText = "SELECT WIM.WIM_STG_ID_SEQ.NEXTVAL FROM DUAL"
          cmd.CommandType = CommandType.Text

          Try
            WIMStgID = cmd.ExecuteScalar

          Catch ex As Exception
            Throw ex

          Finally

            cn.Close()

          End Try

        End Using

      End Using

    Catch ex As Exception
      Throw ex

    End Try

    Return WIMStgID

  End Function

  Public Function ProcessWellAction(ByVal wa As WellActionDTO) As WellActionDTO

    UploadWellActionToStaging(wa)

    wa = CallWellActionSP(wa)

    Return wa

  End Function

  Private Sub UploadWellActionToStaging(ByRef wa As WellActionDTO)

    Dim sSql As New Text.StringBuilder
    Dim sTable As String
    Dim seq As Decimal = 1
    Dim node_action As String

    Dim WIMStgID As Decimal = GetWIMStgID()

    If WIMStgID > 0 Then

      wa.STG_ID = WIMStgID
      wa.ACTION_DATE = Date.Now()
      wa.STATUS_CD = WELL_ACTION_READY

      InsertToStagingTable(Build_StgRequestInsertQry(wa))

      If wa.IsWellVersionChanged Then
        wa.WELL_VERSION.Rows(0).Item("ROW_CHANGED_BY") = wa.USERID
        wa.WELL_VERSION.Rows(0).Item("ROW_CHANGED_DATE") = wa.ACTION_DATE
        wa.WELL_VERSION.AcceptChanges()
        wa.WELL_VERSION.Rows(0).SetAdded()
      End If

      If wa.IsWellLicenseChanged Then
        wa.WELL_LICENSE.Rows(0).Item("ROW_CHANGED_BY") = wa.USERID
        wa.WELL_LICENSE.Rows(0).Item("ROW_CHANGED_DATE") = wa.ACTION_DATE
        wa.WELL_LICENSE.AcceptChanges()
        wa.WELL_LICENSE.Rows(0).SetAdded()
      End If

      If wa.IsWellNodeVersionChanged Then
        For Each dr As DataRow In wa.WELL_NODE_VERSION.Rows()
          node_action = dr.Item("WIM_ACTION_CD").ToString()
          Select Case node_action
            Case ""
              dr.Delete()
            Case NODE_ACTION_CREATE_VERSION, NODE_ACTION_ADD_VERSION
              dr.Item("SOURCE") = wa.SOURCE
              dr.Item("ACTIVE_IND") = WELL_ACTIVE_IND
              dr.Item("COUNTRY") = wa.COUNTRY
              dr.Item("COUNTY") = wa.COUNTY
              dr.Item("PROVINCE_STATE") = wa.PROVINCE_STATE
              dr.Item("ROW_CREATED_BY") = wa.USERID
              dr.Item("ROW_CREATED_DATE") = wa.ACTION_DATE
              dr.Item("IPL_UWI") = wa.UWI
            Case NODE_ACTION_UPDATE_VERSION
              dr.Item("ACTIVE_IND") = WELL_ACTIVE_IND
              dr.Item("COUNTRY") = wa.COUNTRY
              dr.Item("COUNTY") = wa.COUNTY
              dr.Item("PROVINCE_STATE") = wa.PROVINCE_STATE
              dr.Item("IPL_UWI") = wa.UWI
            Case NODE_ACTION_INACTIVATE_VERSION
              dr.Item("ACTIVE_IND") = WELL_INACTIVE_IND
          End Select

          If node_action <> "" Then
            dr.Item("WIM_STG_ID") = WIMStgID
            dr.Item("WIM_SEQ") = seq
            dr.Item("ROW_CHANGED_BY") = wa.USERID
            dr.Item("ROW_CHANGED_DATE") = wa.ACTION_DATE
            seq += 1
          End If

        Next

        wa.WELL_NODE_VERSION.AcceptChanges()

        For Each dr As DataRow In wa.WELL_NODE_VERSION.Rows()
          dr.SetAdded()
        Next
      End If

      If wa.IsWellVersionChanged Then
        sTable = "WIM_STG_WELL_VERSION"
        sSql.Append("SELECT * FROM WIM.WIM_STG_WELL_VERSION ")
        sSql.AppendFormat("WHERE WIM_STG_ID = {0}", WIMStgID)
        UpdateStagingDataAdapter(wa.WELL_VERSION, sSql.ToString(), sTable)
      End If

      If wa.IsWellLicenseChanged Then
        sTable = "WIM_STG_WELL_LICENSE"
        sSql = New Text.StringBuilder
        sSql.Append("SELECT * FROM WIM.WIM_STG_WELL_LICENSE ")
        sSql.AppendFormat("WHERE WIM_STG_ID = {0}", WIMStgID)
        UpdateStagingDataAdapter(wa.WELL_LICENSE, sSql.ToString(), sTable)
      End If

      If wa.IsWellNodeVersionChanged Then
        sTable = "WIM_STG_WELL_NODE_VERSION"
        sSql = New Text.StringBuilder
        sSql.Append("SELECT * FROM WIM.WIM_STG_WELL_NODE_VERSION ")
        sSql.AppendFormat("WHERE WIM_STG_ID = {0}", WIMStgID)
        UpdateStagingDataAdapter(wa.WELL_NODE_VERSION, sSql.ToString(), sTable)
      End If
    Else
      Throw New Exception("Invalid WIM staging sequence number - " & WIMStgID & ".")
    End If

  End Sub

  Private Sub UpdateStagingDataAdapter(ByRef waDt As DataTable, ByVal sSql As String, ByVal sTable As String)

    Dim ds As New DataSet("WELLACTION_STAGE")

    Try
      Using cn As New OracleConnection(GetConnectionString())
        cn.Open()

        Try
          Using da As New OracleDataAdapter(sSql, cn)
            Using cmdBldr As New OracleCommandBuilder(da)
              da.Fill(ds, sTable)
              ds.Tables(sTable).Merge(waDt, False, MissingSchemaAction.Ignore)

              da.InsertCommand = cmdBldr.GetInsertCommand()
              da.UpdateBatchSize = 4
              da.Update(ds.Tables(sTable))
            End Using
          End Using

        Catch ex As Exception
          Throw ex

        Finally
          cn.Close()

        End Try

      End Using

    Catch ex As Exception
      Throw ex

    End Try

  End Sub

  Private Function Build_StgRequestInsertQry(ByRef wa As WellActionDTO) As String

    Dim sSQL As New Text.StringBuilder

    sSQL.Append("INSERT INTO WIM.WIM_STG_REQUEST (")
    sSQL.Append("WIM_STG_ID, STATUS_CD, AUDIT_NO, ")
    sSQL.Append("JOB_ID, ROW_CHANGED_BY, ROW_CHANGED_DATE, ")
    sSQL.Append("ROW_CREATED_BY, ROW_CREATED_DATE) ")
    sSQL.AppendFormat("VALUES ({0}, '{1}', NULL, NULL, {2}, TO_DATE('{3}', 'mm/dd/yyyy hh:mi:ssam'), {2}, TO_DATE('{3}', 'mm/dd/yyyy hh:mi:ssam'))", _
                                wa.STG_ID, _
                                wa.STATUS_CD, _
                                IsNullOrEmptyText(wa.USERID), _
                                wa.ACTION_DATE)
    Return sSQL.ToString()

  End Function

End Class

