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

        <div class="form-group">
            <asp:Label ID="lblCorreo" runat="server" Text="Correo" CssClass="control-label"></asp:Label>
            <asp:TextBox ID="txtCorreo" runat="server" placeholder="jkgarciag@edu.uc.ac.cr" CssClass="form-control"></asp:TextBox>
        </div>
        <asp:RequiredFieldValidator ID="rfvCorreo" runat="server"
            ErrorMessage="Es necesario indicar el correo"
            ControlToValidate="txtCorreo" Display="Dynamic"></asp:RequiredFieldValidator>
        <asp:Button ID="Button1" runat="server" Text="Guardar" CssClass="btn btn-primary my-2" OnClick="btnGuardar_Click" />
        <asp:Label ID="lblResultado" runat="server" Text="" CssClass="control-label"></asp:Label>
        <asp:GridView ID="gvPersonas" runat="server" AutoGenerateColumns="False" DataKeyNames="IDPersona" DataSourceID="SqlDataSource1" OnRowDeleting="gvPersonas_RowDeleting">
            <Columns>
                <asp:BoundField DataField="IDPersona" HeaderText="IDPersona" InsertVisible="False" ReadOnly="True" SortExpression="IDPersona" />
                <asp:BoundField DataField="TipoDocumento" HeaderText="TipoDocumento" SortExpression="TipoDocumento" />
                <asp:BoundField DataField="Documento" HeaderText="Documento" SortExpression="Documento" />
                <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                <asp:BoundField DataField="Apellidos" HeaderText="Apellidos" SortExpression="Apellidos" />
                <asp:BoundField DataField="FechaNac" HeaderText="FechaNac" SortExpression="FechaNac" />
                <asp:BoundField DataField="Correo" HeaderText="Correo" SortExpression="Correo" />
                <asp:CommandField ShowDeleteButton="True" />
            </Columns>
        </asp:GridView>

    </asp:Content>
