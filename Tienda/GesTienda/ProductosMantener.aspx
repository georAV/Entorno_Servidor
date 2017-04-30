<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ProductosMantener.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Estilos/HojaEstilo.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        #formulario{
            float:left; 
            margin-left:30px;
            overflow:hidden;
            width:500px;
        }
        .linea, .texto {
            float:left;
        }
        .texto{
            width:111px; 
            text-align:right; 
            margin:5px 10px;
        }
        .control {
            float:right; 
            margin:5px 10px;}
        #botones{
            float:left; 
            margin: 20px 0px 0px 20px;}
        .mensaje{
            clear:both;
            margin:30px;
        }
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
            <div id="contenidotitulo">Mantenimiento Productos</div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [IdProducto], [DesPro], [PrePro] FROM [PRODUCTO]"></asp:SqlDataSource>
           <br />
           <div class="linea">
               <div class="control">
                    <asp:GridView ID="grdProductos" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="IdProducto" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" PageSize="5" OnSelectedIndexChanged="grdProductos_SelectedIndexChanged">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
                            <asp:CommandField ButtonType="Button" ShowSelectButton="True" />
                            <asp:BoundField DataField="IdProducto" HeaderText="IdProducto" ReadOnly="True" SortExpression="IdProducto" />
                            <asp:BoundField DataField="DesPro" HeaderText="DesPro" SortExpression="DesPro" />
                            <asp:BoundField DataField="PrePro" HeaderText="PrePro" SortExpression="PrePro" />
                        </Columns>
                        <EditRowStyle BackColor="#999999" />
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <PagerSettings FirstPageText="Primera" LastPageText="Última" Mode="NextPreviousFirstLast" NextPageText="Siguiente" PreviousPageText="Anterior" />
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#E9E7E2" />
                        <SortedAscendingHeaderStyle BackColor="#506C8C" />
                        <SortedDescendingCellStyle BackColor="#FFFDF8" />
                        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                    </asp:GridView>
                </div>
            </div>
            <div id="formulario">
                <div class="linea">
                    <div class="texto">
                        <asp:Label ID="lblIdProducto" runat="server" Text="ID Producto"></asp:Label>
                    </div>
                    <div class="control">
                        <asp:TextBox ID="txtIdProducto" runat="server" Enabled="False"></asp:TextBox>
                    </div>
                </div>
                <div class="linea">
                    <div class="texto">
                        <asp:Label ID="lblDesPro" runat="server" Text="Descripción"></asp:Label>
                    </div>
                    <div class="control">
                        <asp:TextBox ID="txtDesPro" runat="server" Enabled="False"></asp:TextBox>
                    </div>
                </div>
                <div class="linea">
                    <div class="texto">
                        <asp:Label ID="lblPrePro" runat="server" Text="Precio Producto"></asp:Label>
                    </div>
                    <div class="control">
                        <asp:TextBox ID="txtPrePro" runat="server" Enabled="False">0</asp:TextBox>
                    </div>
                </div>
                <div class="linea">
                    <div class="texto">
                        <asp:Label ID="lblIdUnidad" runat="server" Text="Unidad"></asp:Label>
                    </div>
                    <div class="control">
                        <asp:DropDownList ID="ddlIdUnidad" runat="server" Enabled="False" DataSourceID="SqlDataSource2" DataTextField="IdUnidad" DataValueField="IdUnidad"></asp:DropDownList>
                    </div>
                </div>
                <div class="linea">
                    <div class="texto">
                        <asp:Label ID="lblIdTipo" runat="server" Text="Tipo Producto"></asp:Label>
                    </div>
                    <div class="control">
                        <asp:DropDownList ID="ddlIdTipo" runat="server" Enabled="False" DataSourceID="SqlDataSource3" DataTextField="DesTip" DataValueField="IdTipo"></asp:DropDownList>
                    </div>
                </div>
                <div id="botones">
                    <asp:Button ID="btnNuevo" runat="server" Text="Nuevo" OnClick="btnNuevo_Click" />
                    <asp:Button ID="btnEditar" runat="server" Text="Editar" Visible="False" OnClick="btnEditar_Click" />
                    <asp:Button ID="btnEliminar" runat="server" Text="Eliminar" Visible="False" OnClick="btnEliminar_Click" />
                    <asp:Button ID="btnInsertar" runat="server" Text="Insertar" Visible="False" OnClick="btnInsertar_Click" />
                    <asp:Button ID="btnModificar" runat="server" Text="Modificar" Visible="False" OnClick="btnModificar_Click" />
                    <asp:Button ID="btnBorrar" runat="server" Text="Borrar" Visible="False" OnClick="btnBorrar_Click" />
                    <asp:Button ID="btnCancelar" runat="server" Text="Cancelar" Visible="False" OnClick="btnCancelar_Click" />
                </div>
            </div>
            <br />
            <br />
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [UNIDAD]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [TIPO]"></asp:SqlDataSource>
        </div>
        <asp:Label ID="lblMensajes" runat="server" ForeColor="Red" CssClass="mensaje"></asp:Label>
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
