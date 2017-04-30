<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AyudasVer1.aspx.cs" Inherits="ManejoDatos_AyudasVer1" %>

<%@ Register Src="~/CabeceraMejorada.ascx" TagPrefix="uc1" TagName="CabeceraMejorada" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
<style type="text/css">
    .texto{
        text-align:center;
        margin:15px;
        font-weight:bold;
        font-size:22px;}
    #bloque3 .texto, #bloque3 .control{
        float:left;
        margin:5px;
        width: 216px;
        font-size:16px;
    }
    #bloque3{
        width:52%;
        overflow:hidden;
        margin-left:680px;
        margin-right: 15px;
        margin-top: 15px;
        margin-bottom: 15px;
    }
</style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <uc1:CabeceraMejorada runat="server" ID="CabeceraMejorada" />
        </div>
        <div id="bloque1">
            <div>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [AyudasCab]" ProviderName="System.Data.SqlClient"></asp:SqlDataSource>
            </div>
            <div class="texto">
                 <asp:Label ID="Label1" runat="server" Text="Ayudas sociales solicitadas"></asp:Label>
            </div>
            <div class="control">
                <asp:GridView ID="grdAyudasCab" runat="server" AutoGenerateColumns="False" DataKeyNames="NumAyu" DataSourceID="SqlDataSource1" AllowPaging="True" CellPadding="4" ForeColor="#333333" GridLines="None" HorizontalAlign="Center" PageSize="5" Width="70%" OnSelectedIndexChanging="grdAyudasCab_SelectedIndexChanging">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="NumAyu" HeaderText="NumAyu" ReadOnly="True" SortExpression="NumAyu" />
                        <asp:BoundField DataField="FsoAyu" HeaderText="FsoAyu" SortExpression="FsoAyu" />
                        <asp:BoundField DataField="FcoAyu" HeaderText="FcoAyu" SortExpression="FcoAyu" />
                        <asp:BoundField DataField="FpaAyu" HeaderText="FpaAyu" SortExpression="FpaAyu" />
                        <asp:BoundField DataField="ObsAyu" HeaderText="ObsAyu" SortExpression="ObsAyu" />
                        <asp:BoundField DataField="CodEmp" HeaderText="CodEmp" SortExpression="CodEmp" />
                        <asp:BoundField DataField="NomEmp" HeaderText="NomEmp" SortExpression="NomEmp" />
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
        <div id="bloque2">
            <div>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [AyudasDet] WHERE ([NumAyu] = @NumAyu)" ProviderName="System.Data.SqlClient">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="grdAyudasCab" Name="NumAyu" PropertyName="SelectedValue" Type="Int64" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </div>
             <div class="texto">
                 <asp:Label ID="lblTotalAyuda" runat="server" Text="Detalle de la Ayuda Social" Visible="False"></asp:Label>
            </div>
            <div class="control">
                <asp:GridView ID="grdAyudasDet" runat="server" AutoGenerateColumns="False" DataKeyNames="NumAyu,CodPre" DataSourceID="SqlDataSource2" CellPadding="4" ForeColor="#333333" GridLines="None" HorizontalAlign="Center" PageSize="5" Width="70%">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="NumAyu" HeaderText="NumAyu" ReadOnly="True" SortExpression="NumAyu" />
                        <asp:BoundField DataField="CodPre" HeaderText="CodPre" ReadOnly="True" SortExpression="CodPre" />
                        <asp:BoundField DataField="DesPre" HeaderText="DesPre" SortExpression="DesPre" />
                        <asp:BoundField DataField="ImpDet" HeaderText="ImpDet" SortExpression="ImpDet" />
                        <asp:BoundField DataField="CanDet" HeaderText="CanDet" SortExpression="CanDet" />
                        <asp:BoundField DataField="PorDet" HeaderText="PorDet" SortExpression="PorDet" />
                        <asp:BoundField DataField="GasDet" HeaderText="GasDet" SortExpression="GasDet" />
                        <asp:BoundField DataField="Total" HeaderText="Total" ReadOnly="True" SortExpression="Total" />
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
        <div id="bloque3">
            <div>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [AyudasTotal] WHERE ([NumAyu] = @NumAyu)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="grdAyudasCab" Name="NumAyu" PropertyName="SelectedValue" Type="Int64" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </div>
            <div class="texto">
                 <asp:Label ID="lblTotalSolicitado" runat="server" Text="Total solicitado en ayuda social" Visible="False"></asp:Label>
            </div>
            <div class="control">
                <asp:ListBox ID="lstTotalAyuda" runat="server" DataSourceID="SqlDataSource3" DataTextField="TotalSolicitado" DataValueField="TotalSolicitado" Height="23px" Width="159px" Visible="False"></asp:ListBox>
            </div>
        </div>
    </form>
</body>
</html>
