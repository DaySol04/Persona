Public Class PersonaDB
    Private db As New DbHelper()
    Public Function CrearPersona(ByVal pPersona As Models.Persona) As Boolean
        Using dbHealper As New dbHealper().GetConnection()
            Dim query As String = "Insert into Personas (TipoDocumento, Documento, Nombre, Edad, FechaNac, Email) 
            VALUES (@TipoDocumento, @Documento, @Nombre, @Edad, @FechaNac, @Email)"

           

            Dim parameters As New Dictionary(Of String, Object) From {
                {"@Nombre", pPersona.Nombre},
                {"@Edad", pPersona.Edad},
                {"@Email", pPersona.Email}
            }
            db.ExecuteNonQuery(query, parameters)

        End Using
        Return True
    End Function

End Class
