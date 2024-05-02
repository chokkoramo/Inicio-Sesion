<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CrearUsuario.aspx.cs" Inherits="Inicio_Sesion.CrearUsuario" %>

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
            <asp:Label ID="Label1" AssociatedControlID="txtWNombre" runat="server" Text="Ingrese su Nombre"></asp:Label>
            <asp:TextBox ID="txtWNombre" runat="server" placeholder="Pepito"></asp:TextBox>
        </div>
        <div class="form-div">
            <asp:Label ID="Label2" AssociatedControlID="txtWCorreo" runat="server" Text="Ingrese su Correo"></asp:Label>
            <asp:TextBox ID="txtWCorreo" runat="server" TextMode="email" placeholder="example@gmail.com"></asp:TextBox>
        </div>
        <div class="form-div">
            <asp:Label ID="Label3" AssociatedControlID="txtWContrasena" runat="server" Text="Ingrese su Contraseña"></asp:Label>
            <asp:TextBox ID="txtWContrasena" runat="server" TextMode="Password" placeholder="Contraseña1"></asp:TextBox>
        </div>
        <div class="form-div">
            <asp:Label ID="Label4" AssociatedControlID="txtWConfirmarContrasena" runat="server" Text="Confirmar Contraseña"></asp:Label>
            <asp:TextBox ID="txtWConfirmarContrasena" runat="server" TextMode="Password" placeholder="Contraseña1"></asp:TextBox>
        </div>
        <div class="form-div">
            <asp:Button ID="btnCrearUsuario" runat="server" Text="Crear Usuario" OnClick="btnCrearUsuario_Click"/>
        </div>
        <asp:Label ID="lblMensaje" runat="server" Text=""></asp:Label>
    </form>
</body>
</html>
