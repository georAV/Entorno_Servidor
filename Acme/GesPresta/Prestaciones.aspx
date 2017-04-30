<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Prestaciones.aspx.cs" Inherits="Prestaciones" %>
<%@ Register Src="~/cabecera.ascx" TagPrefix="uc1" TagName="cabecera" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Prestaciones</title>
    <style type="text/css">
        .titulo{
            font-family:Arial;
            text-align:center;
            font-size:24px;
            margin: 20px 0px;
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
            DATOS DE LAS PRESTACIONES
        </div>
        <div class="cuerpo">
            <div class="linea">
                <div class="textos">
                    Código Prestación
                </div>
                <div class="controles">
                    <asp:TextBox ID="txtCodPre" runat="server" Width="175px"></asp:TextBox>
                </div>
            </div>
            <div class="linea">
                <div class="textos">
                    Descripción
                </div>
                <div class="controles">
                    <asp:TextBox ID="txtDesPre" runat="server" Width="461px"></asp:TextBox>
                </div>
            </div>
            <div class="linea">
                <div class="textos">
                    Importe fijo
                </div>
                <div class="controles">
                    <asp:TextBox ID="txtImpPre" runat="server" Width="175px"></asp:TextBox>
                </div>
            </div>
            <div class="linea">
                <div class="textos">
                    Porcentaje del importe
                </div>
                <div class="controles">
                    <asp:TextBox ID="txtPorPre" runat="server" Width="175px"></asp:TextBox>
                </div>
            </div>
            <div class="linea">
                <div class="textos">
                    Tipo de prestación
                </div>
                <div class="controles">
                    <asp:DropDownList ID="ddlTipPre" runat="server">
                        <asp:ListItem>Dentaria</asp:ListItem>
                        <asp:ListItem>Familiar</asp:ListItem>
                        <asp:ListItem Selected="True">Ocular</asp:ListItem>
                        <asp:ListItem>Otras</asp:ListItem>
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
