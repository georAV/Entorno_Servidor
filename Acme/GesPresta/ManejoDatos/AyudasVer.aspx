<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AyudasVer.aspx.cs" Inherits="ManejoDatos_AyudasVer" %>

<%@ Register Src="~/CabeceraMejorada.ascx" TagPrefix="uc1" TagName="CabeceraMejorada" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
<style type="text/css">
    h2{text-align:center;}
</style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [AYUDA-CAB]"></asp:SqlDataSource>
        </div>
        <div class="texto">
            <h2>Ayudas sociales solicitadas</h2>
        </div>
        <div class="control">
            <asp:GridView ID="grdAyudasCab" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="NumAyu" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" HorizontalAlign="Center" PageSize="6" Width="60%">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="NumAyu" HeaderText="Núm. Ayuda" ReadOnly="True" SortExpression="NumAyu">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="FsoAyu" DataFormatString="{0:d}" HeaderText="Fecha solicitud" SortExpression="FsoAyu"></asp:BoundField>
                    <asp:BoundField DataField="FcoAyu" DataFormatString="{0:d}" HeaderText="Fecha concesión" SortExpression="FcoAyu" />
                    <asp:BoundField DataField="FpaAyu" DataFormatString="{0:d}" HeaderText="Fecha Pago" SortExpression="FpaAyu" />
                    <asp:BoundField DataField="ObsAyu" HeaderText="Observaciones" SortExpression="ObsAyu" />
                    <asp:BoundField DataField="CodEmp" HeaderText="Código Empleado" SortExpression="CodEmp" />
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
            <div class="texto">
                <h2>Detalle de la ayuda social</h2>
            </div>
            <div>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [AYUDA-DET] WHERE ([NumAyu] = @NumAyu)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="grdAyudasCab" Name="NumAyu" PropertyName="SelectedValue" Type="Int64" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </div>
            <div class="control">
                <asp:GridView ID="grdAyudasDet" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="NumAyu,CodPre" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" HorizontalAlign="Center" PageSize="8" Width="60%">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="NumAyu" HeaderText="Núm. Ayuda" ReadOnly="True" SortExpression="NumAyu">
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="CodPre" HeaderText="Código prestación" ReadOnly="True" SortExpression="CodPre" />
                        <asp:BoundField DataField="ImpDet" HeaderText="Importe" SortExpression="ImpDet">
                        <ItemStyle HorizontalAlign="Right" />
                        </asp:BoundField>
                        <asp:BoundField DataField="CanDet" HeaderText="Cantidad" SortExpression="CanDet">
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="PorDet" HeaderText="Porcentaje de gasto" SortExpression="PorDet">
                        <ItemStyle HorizontalAlign="Right" />
                        </asp:BoundField>
                        <asp:BoundField DataField="GasDet" HeaderText="Gasto realizado" SortExpression="GasDet">
                        <ItemStyle HorizontalAlign="Right" />
                        </asp:BoundField>
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
    </form>
</body>
</html>
