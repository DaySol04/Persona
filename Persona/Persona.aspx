<%@ Page Title="Persona" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Persona.aspx.vb" Inherits="Persona.Persona1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Button ID="btnGuardar" runat="server" Text="Guardar" CssClass="btn btn-primary" />

    <asp:Content ID="ddlTipoDocumento" ContentPlaceHolderID="MainContent" runat="server">

        <div class="form-group">
            <asp:Label ID="Label5" runat="server" Text="Tipo Documento" CssClass="control-label"></asp:Label>
            <asp:DropDownList ID="DdlTipoDocumento" runat="server" CssClass="form-control">
                <asp:ListItem Text="Seleccione un tipo de documento" />
                <asp:ListItem Text="Cédula Fisica" Value="1" />
                <asp:ListItem Text="Cédula Juridica" Value="2" />
                <asp:ListItem Text="Pasaporte" Value="3" />
            </asp:DropDownList>
        </div>

        <asp:RequiredFieldValidator ID="rfvTipoDocumento" runat="server" ErrorMessage="Es necesario seleccionar un tipo de documento" ControlToValidate="txtDocumento"></asp:RequiredFieldValidator>

        <div class="form-group">
            <asp:Label ID="Label6" runat="server" Text="Documento" CssClass="control-label"></asp:Label>
            <asp:TextBox ID="txtDocumento" runat="server" CssClass="form-control"></asp:TextBox>
        </div>

        <asp:RequiredFieldValidator ID="rvfNombre" runat="server" ErrorMessage="Es necesario poner un nombre" ControlToValidate="txtNombre" Display="Dynamic"></asp:RequiredFieldValidator>


        <div class="form-group">
            <asp:Label ID="Label1" runat="server" Text="Nombre" CssClass="control-label"></asp:Label>
            <asp:TextBox ID="TxtNombre" runat="server" CssClass="form-control"></asp:TextBox>
        </div>

        <asp:RequiredFieldValidator ID="rvfApellidos" runat="server" ErrorMessage="Es necesario poner los apellidos" ControlToValidate="txtFechaNacimiento" Display="Dynamic"></asp:RequiredFieldValidator>

        <div class="form-group">
            <asp:Label ID="Label2" runat="server" Text="Apellidos" CssClass="control-label"></asp:Label>
            <asp:TextBox ID="TxtApellidos" runat="server" CssClass="form-control"></asp:TextBox>
        </div>

        <asp:RequiredFieldValidator ID="rvfFechNac" runat="server" ErrorMessage="Es necesario poner una fecha de nacimiento" ControlToValidate="txtFechaNacimiento" Display="Dynamic"></asp:RequiredFieldValidator>


        <div class="form-group">
            <asp:Label ID="Label3" runat="server" Text="FechaNacimiento" CssClass="control-label"></asp:Label>
            <asp:TextBox ID="txtFechaNacimiento" runat="server" CssClass="form-control" TextMode="Date"></asp:TextBox>
        </div>

        <asp:RequiredFieldValidator ID="rvfCorreo" runat="server" ErrorMessage="Es necesario poner un correo" ControlToValidate="txtFechaNacimiento" Display="Dynamic"></asp:RequiredFieldValidator>

        <div class="form-group">
            <asp:Label ID="Label4" runat="server" Text="Correo" CssClass="control-label"></asp:Label>
            <asp:TextBox ID="txtCorreo" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <asp:Button ID="btnGuardar" runat="server" Text="Guardar" CssClass="btn btn-primary my-2" OnClick="btnGuardar_Click" />

        <asp:Label ID="lblResultado" runat="server" Text="" CssClass="control-label"></asp:Label>
    
        <asp:GridView ID="gvPersonas" runat="server"></asp:GridView>
    </asp:Content>
