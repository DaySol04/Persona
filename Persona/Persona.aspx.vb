Imports System.Data.SqlClient

Public Class Persona1
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnGuardar_Click(sender As Object, e As EventArgs)

        Dim persona As New Models.Persona()

        If txtFechaNacimiento.Text = "" Or TxtApellidos.Text = "" Or txtCorreo.Text = "" Or txtDocumento.Text = "" Then
            lblResultado.Text = "Por favor, complete todos los campos"
            Return
        End If

        persona.Nombre = TxtNombre.Text.Trim()
        persona.Apellidos = TxtApellidos.Text
        persona.Fechanacimiento = txtFechaNacimiento.Text
        persona.Correo = txtCorreo.Text
        persona.Tipodocumento = DdlTipoDocumento.SelectedItem.Text
        persona.Numerodocumento = txtDocumento.Text

        lblResultado.Text = persona.Resumen()
    End Sub
End Class