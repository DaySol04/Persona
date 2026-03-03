
Namespace Models
    Public Class Persona
        Private _nombre As String
        Private _apellidos As String
        Private _tipodocumento As String
        Private _numerodocumento As String
        Private _fechanacimiento As Date
        Private _correo As String

        Public Sub New()
        End Sub

        Public Sub New(nombre As String, apellidos As String, tipodocumento As String, numerodocumento As String, fechanacimiento As Date, correo As String)
            Me.Nombre = nombre
            Me.Apellidos = apellidos
            Me.Tipodocumento = tipodocumento
            Me.Numerodocumento = numerodocumento
            Me.Fechanacimiento = fechanacimiento
            Me.Correo = correo
        End Sub

        Public Property Nombre As String
            Get
                Return _nombre
            End Get
            Set(value As String)
                _nombre = value
            End Set
        End Property

        Public Property Apellidos As String
            Get
                Return _apellidos
            End Get
            Set(value As String)
                _apellidos = value
            End Set
        End Property

        Public Property Tipodocumento As String
            Get
                Return _tipodocumento
            End Get
            Set(value As String)
                _tipodocumento = value
            End Set
        End Property

        Public Property Numerodocumento As String
            Get
                Return _numerodocumento
            End Get
            Set(value As String)
                _numerodocumento = value
            End Set
        End Property

        Public Property Fechanacimiento As Date
            Get
                Return _fechanacimiento
            End Get
            Set(value As Date)
                _fechanacimiento = value
            End Set
        End Property

        Public Property Correo As String
            Get
                Return _correo
            End Get
            Set(value As String)
                _correo = value
            End Set
        End Property

        Public Function Resumen() As String
            Return $"Nombre: {Nombre} {Apellidos} - {Correo}"
        End Function

    End Class
End Namespace

