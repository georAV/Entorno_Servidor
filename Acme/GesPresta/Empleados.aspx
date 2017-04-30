<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Empleados.aspx.cs" Inherits="Empleados" %>

<%@ Register Src="~/cabecera.ascx" TagPrefix="uc1" TagName="cabecera" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Empleados</title>
    <style type="text/css">
        .titulo{
            text-align:center;
            font-size:24px;
            margin: 20px 0px;
            font-family:Arial;
        }
         .cuerpo
        {
            margin-left: 10%;
            margin-right: 10%;
            padding-top: 15px;
            padding-bottom: 10px;
        }
        .linea
        {
            height: 25px;
        }
        .textos
        {
            text-align: right; 
            width: 30%; 
            position: relative; 
            float: left;
        }
        .controles
        {
            text-align: left; 
            float: right;
            width:68%;
        }
        .boton
        {
            clear: both;
            text-align :center;
            padding:30px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <uc1:cabecera runat="server" ID="cabecera" />
        </div>
        <div class="titulo">
            DATOS DE LOS EMPLEADOS
        </div>
        <div class="cuerpo">
            <div class="linea">
                <div class="textos">
                    Código Empleado
                </div>
                <div class="controles">
                    <asp:TextBox ID="txtCodEmp" runat="server" Width="216px"></asp:TextBox>
                </div>
            </div>
            <div class="linea">
                <div class="textos">
                    NIF
                </div>
                <div class="controles">
                    <asp:TextBox ID="txtNifEmp" runat="server" Width="216px"></asp:TextBox>
                </div>
            </div>
            <div class="linea">
                <div class="textos">
                    Apellidos y Nombre
                </div>
                <div class="controles">
                    <asp:TextBox ID="txtNomEmp" runat="server" Width="409px"></asp:TextBox>
                </div>
            </div>
            <div class="linea">
                <div class="textos">
                    Dirección
                </div>
                <div class="controles">
                    <asp:TextBox ID="txtDirEmp" runat="server" Width="440px"></asp:TextBox>
                </div>
            </div>
            <div class="linea">
                <div class="textos">
                    Ciudad
                </div>
                <div class="controles">
                    <asp:TextBox ID="txtCiuEmp" runat="server" Width="440px"></asp:TextBox>
                </div>
            </div>
            <div class="linea">
                <div class="textos">
                    Teléfonos
                </div>
                <div class="controles">
                    <asp:TextBox ID="txtTelEmp" runat="server" Width="307px"></asp:TextBox>
                </div>
            </div>
            <div class="linea">
                <div class="textos">
                    Fecha de Nacimiento
                </div>
                <div class="controles">
                    <asp:TextBox ID="txtFnaEmp" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="linea">
                <div class="textos">
                    Fecha de Ingreso
                </div>
                <div class="controles">
                    <asp:TextBox ID="txtFinEmp" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="linea">
                <div class="textos">
                    Sexo
                </div>
                <div class="controles">
                    <asp:RadioButtonList ID="rblSexEmp" runat="server" RepeatDirection="Horizontal" Width="189px">
                        <asp:ListItem Selected="True">Mujer</asp:ListItem>
                        <asp:ListItem>Hombre</asp:ListItem>
                    </asp:RadioButtonList>
                </div>
            </div>
            <div class="linea">
                <div class="textos">
                    Departamento
                </div>
                <div class="controles">
                    <asp:DropDownList ID="ddlDepEmp" runat="server">
                        <asp:ListItem Selected="True">Investigación</asp:ListItem>
                        <asp:ListItem>Desarrollo</asp:ListItem>
                        <asp:ListItem>Innovación</asp:ListItem>
                        <asp:ListItem>Administración</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
            <div class="boton">
                <asp:Button ID="cmdEnviar" runat="server" Text="Enviar" />
            </div>
        </div>
    </form>
</body>
</html>
