<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PedidosPorCliente.aspx.cs" Inherits="_Default" %>

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
                   <asp:MenuItem Text="Inicio" Value="Inicio" NavigateUrl="~/MenuAdmin.aspx"></asp:MenuItem>
                   <asp:MenuItem Selectable="False" Text="Productos" Value="Productos">
                       <asp:MenuItem Text="Mantener" Value="Mantener" NavigateUrl="~/ProductosMantener.aspx"></asp:MenuItem>
                   </asp:MenuItem>
                   <asp:MenuItem Selectable="False" Text="Ventas" Value="Ventas">
                       <asp:MenuItem NavigateUrl="~/PedidosPorCliente.aspx" Text="Pedidos por cliente" Value="Pedidos por cliente"></asp:MenuItem>
                   </asp:MenuItem>
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
            <div id="contenidotitulo">Pedidos realizados</div>
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [IdCliente], [NomCli], [PobCli], [CorCli], [Login] FROM [CLIENTE]"></asp:SqlDataSource>
            <asp:GridView ID="grdClientes" runat="server" AutoGenerateColumns="False" DataKeyNames="IdCliente" DataSourceID="SqlDataSource1" AllowPaging="True" CellPadding="4" ForeColor="#333333" GridLines="None" PageSize="5" OnSelectedIndexChanged="grdClientes_SelectedIndexChanged" OnPageIndexChanged="grdClientes_PageIndexChanged">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ButtonType="Button" ShowSelectButton="True" />
                    <asp:BoundField DataField="IdCliente" HeaderText="IdCliente" ReadOnly="True" SortExpression="IdCliente" />
                    <asp:BoundField DataField="NomCli" HeaderText="NomCli" SortExpression="NomCli" />
                    <asp:BoundField DataField="PobCli" HeaderText="PobCli" SortExpression="PobCli" />
                    <asp:BoundField DataField="CorCli" HeaderText="CorCli" SortExpression="CorCli" />
                    <asp:BoundField DataField="Login" HeaderText="Login" SortExpression="Login" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerSettings FirstPageText="Primera" LastPageText="Última" Mode="NextPreviousFirstLast" NextPageText="Siguiente" PreviousPageText="Anterior" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
           <br />
           <asp:Label ID="lblMensajes" runat="server" ForeColor="Red"></asp:Label>
           <br />
             <asp:Label ID="lblResultado" runat="server" Visible="False"></asp:Label>
           <br />
           <br />
           <asp:Label ID="lblTotal" runat="server" Visible="False"></asp:Label>
           <br />
       </div>
       <br />
       <br />
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
