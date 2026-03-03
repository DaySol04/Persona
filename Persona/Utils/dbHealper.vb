Imports System.Data.SqlClient

Public Class dbHealper

    Private connectionString As String = ConfigurationManager.ConnectionStrings("Cambiar-NOMBRE").ConnectionString

    Public Function GetConnection() As SqlConnection
        Return New SqlConnection(connectionString)
    End Function
End Class
