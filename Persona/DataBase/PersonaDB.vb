Public Class PersonaDB
    Private db As New dbHealper()
    'Crear Persona
    Public Function CrearPersona(ByVal pPersona As Models.Persona) As Boolean
        'Lógica para crear una nueva persona en la base de datos
        Using db.GetConnection()
            Dim query As String = "INSERT INTO Personas (TipoDocumento, Documento, Nombre, Apellidos, FechaNac, Correo) " &
                                  "VALUES (@TipoDocumento, @Documento, @Nombre, @Apellidos, @FechaNac, @Correo)"

            Dim parameters As New Dictionary(Of String, Object) From {
                {"@Nombre", pPersona.Nombre},
                {"@FechaNac", pPersona.Fechanacimiento},
                {"@Correo", pPersona.Correo},
                {"@Apellidos", pPersona.Apellidos},
                {"@Documento", pPersona.Numerodocumento},
                {"@TipoDocumento", pPersona.Tipodocumento}
            }

            'recuerda guardar en git
            Return db.ExecuteNonQuery(query, parameters)

            'Dim resultado = db.ExecuteNonQuery(query, parameters)
        End Using
        Return True
    End Function

    Public Function EliminarPersona(ByVal id As Integer) As Boolean
        Dim query As String = "DELETE FROM Personas WHERE IDPersona = @Id"
        Dim parameters As New Dictionary(Of String, Object) From {
        {"@Id", id}
    }
        Return db.ExecuteNonQuery(query, parameters)
    End Function
End Class





