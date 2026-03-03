Imports System.Data.SqlClient
Imports Persona.Utils
Public Class Persona1
    Inherits System.Web.UI.Page
    Private db As New PersonaDB()

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
        Dim resultado = db.CrearPersona(persona)

        If resultado Then
            SwalUtils.ShowSwal(Me, "Persona creada exitosamente.")
            gvPersonas.DataBind()
        Else
            SwalUtils.ShowSwalError(Me, "No se puedo crear persona")
        End If
    End Sub

    Protected Sub gvPersonas_RowDeleting(sender As Object, e As GridViewDeleteEventArgs)
        e.Cancel = True ' Cancelar la eliminación predeterminada del GridView
        Dim id As Integer = Convert.ToInt32(gvPersonas.DataKeys(e.RowIndex).Value)
        Dim resultado = db.EliminarPersona(id)
        If resultado Then
            SwalUtils.ShowSwal(Me, "Persona eliminada exitosamente.")
            gvPersonas.DataBind() ' Refrescar el GridView después de eliminar
        Else
            SwalUtils.ShowSwalError(Me, "No se pudo eliminar persona.")
        End If
    End Sub
End Class



