<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registrarse.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Estilos/HojaEstilo.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        h2, h4{text-align:center;}
        .linea{
            text-align:center;
            width: 558px;
            margin:5px auto;
        }
        .texto, .control{margin:5px;}
        .texto{float:left; text-align:right;
            width: 222px;
        }
        .control{float:left}
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div id="cabecera">
       <div id="cabecera1">
          <br />
          comerciodaw.com &nbsp;
       </div>
       <div id="cabecera2">
           <br />
           <br />
           &nbsp;&nbsp;TIENDA VIRTUAL - SHOPPING DAW<br />
           <br />
       </div>
       <div id="cabecera3">
           <br />
           <asp:Label ID="lblDatosUsuario" runat="server" Font-Bold="True"></asp:Label>
           <br />
           <br />
       </div>
    </div>
    <div id="cuerpo">
       <div id="cuerpoinicio">
       </div>
        <h2>GesTienda</h2>
        <h4>Registro de usuarios</h4>
        <div id="formulario">
            <div class="linea">
                <div class="texto">
                    <asp:Label ID="lblTxtLogin" runat="server" Text="Login"></asp:Label>
                </div>
                <div class="control">
                    <asp:TextBox ID="txtLogin" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="linea">
                <div class="texto">
                    <asp:Label ID="lblTxtIdCliente" runat="server" Text="Número DNI"></asp:Label>
                </div>
                <div class="control">
                    <asp:TextBox ID="txtIdCliente" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="linea">
                <div class="texto">
                    <asp:Label ID="lblTxtNomCli" runat="server" Text="Nombre/Razón Social"></asp:Label>
                </div>
                <div class="control">
                    <asp:TextBox ID="txtNomCli" runat="server" Width="286px"></asp:TextBox>
                </div>
            </div>
            <div class="linea">
                <div class="texto">
                    <asp:Label ID="lblTxtDirCli" runat="server" Text="Dirección"></asp:Label>
                </div>
                <div class="control">
                    <asp:TextBox ID="txtDirCli" runat="server" Width="286px"></asp:TextBox>
                </div>
            </div>
            <div class="linea">
                <div class="texto">
                    <asp:Label ID="lblTxtPobCli" runat="server" Text="Población"></asp:Label>
                </div>
                <div class="control">
                    <asp:TextBox ID="txtPobCli" runat="server" Width="286px"></asp:TextBox>
                </div>
            </div>
            <div class="linea">
                <div class="texto">
                    <asp:Label ID="lblTxtCpoCli" runat="server" Text="Código Postal"></asp:Label>
                </div>
                <div class="control">
                    <asp:TextBox ID="txtCpoCli" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="linea">
                <div class="texto">
                    <asp:Label ID="lblTxtTelCli" runat="server" Text="Teléfono"></asp:Label>
                </div>
                <div class="control">
                    <asp:TextBox ID="txtTelCli" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="linea">
                <div class="texto">
                    <asp:Label ID="lblTxtCorCli" runat="server" Text="Correo Electrónico"></asp:Label>
                </div>
                <div class="control">
                    <asp:TextBox ID="txtCorCli" runat="server" Width="286px"></asp:TextBox>
                </div>
            </div>
            <div class="linea">
                <div class="texto">
                    <asp:Label ID="lblTxtPassword1" runat="server" Text="Contraseña"></asp:Label>
                </div>
                <div class="control">
                    <asp:TextBox ID="txtPassword1" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="linea">
                <div class="texto">
                    <asp:Label ID="lblTxtPassword2" runat="server" Text="Repita contraseña"></asp:Label>
                </div>
                <div class="control">
                    <asp:TextBox ID="txtPassword2" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="linea">
                <div class="texto"></div>
                <div class="control">
                    <asp:Button ID="btnInsertar" runat="server" Text="Insertar" OnClick="btnInsertar_Click" />
                </div>
                <div class="control">
                    <asp:LinkButton ID="lnkLoguin" runat="server" PostBackUrl="~/Default.aspx" Visible="False">Ir a la pantalla de Login</asp:LinkButton>
                </div>
            </div>
        </div>
        <div id="contenido">
           <br />
           <asp:Label ID="lblMensajes" runat="server" ForeColor="Red"></asp:Label>
           <br />
           <br />
       </div>
    </div>
       <div id="cuerpofin" class="style1">
          <br />
       </div>
        <div id="pie">
         <br />
         © Desarrollo de Aplicaciones para la Web con Acceso a Datos
          <br />
         IES Mare Nostrum (Alicante)
    </div>
    </form>
</body>
</html>
