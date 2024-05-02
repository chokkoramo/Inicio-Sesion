<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="IniciarSesion.aspx.cs" Inherits="Inicio_Sesion.IniciarSesion" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="Styles/estilos.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <nav>
        <div class="navbar">
            <a href="PgInicio.aspx">Inicio</a>
            <a href="IniciarSesion.aspx">Iniciar Sesion</a>
            <a href="CrearUsuario.aspx">Crear Usuario</a>
        </div>
    </nav>
    <form id="form1" runat="server">
        <div class="form-div">
            <asp:Label ID="Label1" AssociatedControlID="txtNombre" runat="server" Text="Nombre"></asp:Label>
            <asp:TextBox ID="txtNombre" type="text" runat="server" placeholder="Juanito Perez"></asp:TextBox>
        </div>
        <div class="form-div">
            <asp:Label ID="Label3" AssociatedControlID="txtEmail" runat="server" Text="Email"></asp:Label>
            <asp:TextBox ID="txtEmail" type="email" runat="server" placeholder="example@gmail.com"></asp:TextBox>
        </div>
        <div class="form-div">
            <asp:Label ID="Label2" AssociatedControlID="txtContrasena" runat="server" Text="Constraseña"></asp:Label>
            <asp:TextBox ID="txtContrasena" type="password" runat="server" placeholder="1234"></asp:TextBox>
        </div>
        <div class="form-div">
            <asp:Button ID="btnGuardar" runat="server" Text="Iniciar Sesion" OnClick="btnIniciarSesion_Click"/>
        </div>
        <asp:Label ID="lblMensaje" runat="server" Text=""></asp:Label>
    </form>
</body>
</html>
