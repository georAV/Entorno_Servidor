<%@ Control Language="C#" AutoEventWireup="true" CodeFile="cabecera.ascx.cs" Inherits="cabecera" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>ACME cabecera</title>
    <style type="text/css">
        #cabecera{
            border-bottom:solid #808080 2px;
            text-align:center;
            padding:5px;
        }
        #menu{
            display:inline-block;
        }
        .btncabecera{
            padding:0px 10px;
        }
        h1{
            margin:0px;
            padding-top:20px;
        }
        p{
            margin:0px;
        }
    </style>
</head>
<body>
    <div id="cabecera">
        <div id="menu">
            <asp:LinkButton ID="botonicio" runat="server" CssClass="btncabecera" PostBackUrl="Default.aspx">Inicio</asp:LinkButton>
            <asp:LinkButton ID="botonEmp" runat="server" CssClass="btncabecera" PostBackUrl="Empleados.aspx">Empleados</asp:LinkButton>
            <asp:LinkButton ID="botonPrest" runat="server" CssClass="btncabecera" PostBackUrl="Prestaciones.aspx">Prestaciones</asp:LinkButton>
        </div>
        <h1>ACME INNOVACIÓN , S.FIG.</h1>
        <p>Gestión de Prestaciones Sociales</p>
    </div>
</body>
</html>