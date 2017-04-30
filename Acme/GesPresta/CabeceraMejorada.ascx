<%@ Control Language="C#" AutoEventWireup="true" CodeFile="CabeceraMejorada.ascx.cs" Inherits="CabeceraMejorada" %>

<div id="cabecera" align="center">
        <h2>ACME INNOVACIÓN , S.FIG.</h2>
        <p>Gestión de Prestaciones Sociales</p><br>
</div>
<div>
    <asp:Menu ID="Menu1" runat="server" BackColor="#E3EAEB" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#666666" Orientation="Horizontal" StaticSubMenuIndent="10px">
        <DynamicHoverStyle BackColor="#666666" ForeColor="White" />
        <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
        <DynamicMenuStyle BackColor="#E3EAEB" />
        <DynamicSelectedStyle BackColor="#1C5E55" />
        <Items>
            <asp:MenuItem NavigateUrl="~/Default.aspx" Text="Inicio" Value="Nuevo elemento"></asp:MenuItem>
            <asp:MenuItem Selectable="False" Text="Empleados" Value="Empleados">
                <asp:MenuItem NavigateUrl="~/ManejoDatos/EmpleadosMantener.aspx" Text="Mantenimiento Empleados" Value="Mantenimiento Empleados"></asp:MenuItem>
            </asp:MenuItem>
            <asp:MenuItem Selectable="False" Text="Prestaciones y Ayudas" Value="Prestaciones y Ayudas">
                <asp:MenuItem NavigateUrl="~/ManejoDatos/PrestacionesVer.aspx" Text="Ver Prestaciones" Value="Ver Prestaciones"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/ManejoDatos/AyudasVer1.aspx" Text="Ver Ayudas" Value="Ver Ayudas"></asp:MenuItem>
            </asp:MenuItem>
        </Items>
        <StaticHoverStyle BackColor="#666666" ForeColor="White" />
        <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
        <StaticSelectedStyle BackColor="#1C5E55" />
    </asp:Menu>
</div>