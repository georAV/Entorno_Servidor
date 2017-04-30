<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PrestacionesVer.aspx.cs" Inherits="ManejoDatos_PrestacionesVer" %>

<%@ Register Src="~/CabeceraMejorada.ascx" TagPrefix="uc1" TagName="CabeceraMejorada" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .nuevoEstilo1 {
            font-family: Arial, Helvetica, sans-serif;
            font-size: small;
        }
        .texto{text-align:center; font-size: 22px; margin:15px; font-weight:bold;}
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <uc1:CabeceraMejorada runat="server" ID="CabeceraMejorada" />
        </div>
        <div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [PRESTACION]"></asp:SqlDataSource>
        </div>
        <div class="texto">
            Prestaciones
        </div>
        <div id="control">
            <asp:GridView ID="grdPrestaciones" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="CodPre" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" CssClass="nuevoEstilo1" HorizontalAlign="Center" PageSize="5" style="font-size: small" Width="60%">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:BoundField DataField="CodPre" HeaderText="Código" ReadOnly="True" SortExpression="CodPre" />
                    <asp:BoundField DataField="DesPre" HeaderText="Descripción" SortExpression="DesPre" />
                    <asp:BoundField DataField="ImpPre" HeaderText="Importe" SortExpression="ImpPre" DataFormatString="{0:c}" >
                    <ItemStyle HorizontalAlign="Right" />
                    </asp:BoundField>
                    <asp:BoundField DataField="PorPre" HeaderText="Porcentaje" SortExpression="PorPre" DataFormatString="{0:n2} %" >
                    <ItemStyle HorizontalAlign="Right" />
                    </asp:BoundField>
                    <asp:BoundField DataField="CodTip" HeaderText="Tipo prestación" SortExpression="CodTip" />
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerSettings FirstPageText="Primero" LastPageText="Último" Mode="NextPreviousFirstLast" NextPageText="Siguiente" PreviousPageText="Anterior" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
        </div>
    </form>
</body>
</html>
