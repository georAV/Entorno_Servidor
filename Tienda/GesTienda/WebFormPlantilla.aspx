﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="WebFormPlantilla.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Estilos/HojaEstilo.css" rel="stylesheet" type="text/css" />
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
       <div id="menu">
           <asp:Menu ID="Menu1" runat="server" BackColor="#B5C7DE" 
               DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.8em" 
               ForeColor="#284E98" StaticSubMenuIndent="10px">
               <DynamicHoverStyle BackColor="#284E98" ForeColor="White" />
               <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
               <DynamicMenuStyle BackColor="#B5C7DE" />
               <DynamicSelectedStyle BackColor="#507CD1" />
               <Items>
                   <asp:MenuItem Text="Inicio" Value="Inicio"></asp:MenuItem>
                   <asp:MenuItem Selectable="False" Text="Productos" Value="Productos">
                       <asp:MenuItem Text="Ver Productos" Value="Ver Productos"></asp:MenuItem>
                   </asp:MenuItem>
                   <asp:MenuItem Selectable="False" Text="Ventas" Value="Ventas"></asp:MenuItem>
               </Items>
               <StaticHoverStyle BackColor="#284E98" ForeColor="White" />
               <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
               <StaticSelectedStyle BackColor="#507CD1" />
           </asp:Menu>
           <br />
           <br />
           <br />
           <br />
           <br />
           <br />
           <br />
           <br />
           <br />
           <br />
           <br />
           <br />
           <br />
           <br />
           <br />
           <br />
           <br />
           <br />
           <br />
           <br />
           <br />
           <br />
           <br />
           <br />
       </div>
       <div id="contenido">
            <div id="contenidotitulo">Título</div>
            <br />
           Agregar aquí el contenido del Web Form
           <br />
           <br />
           <br />
           <asp:Label ID="lblMensajes" runat="server" ForeColor="Red"></asp:Label>
           <br />
           <br />
       </div>
       <div id="cuerpofin" class="style1">
          <br />
       </div>
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
