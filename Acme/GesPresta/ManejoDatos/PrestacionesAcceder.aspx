<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PrestacionesAcceder.aspx.cs" Inherits="ManejoDatos_PrestacionesAcceder" %>

<%@ Register Src="~/CabeceraMejorada.ascx" TagPrefix="uc1" TagName="CabeceraMejorada" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
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
        <uc1:CabeceraMejorada runat="server" ID="CabeceraMejorada" />
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
                    <asp:DropDownList ID="ddlTipPre" runat="server" DataSourceID="SqlDataSource1" DataTextField="CodTip" DataValueField="CodTip">
                    </asp:DropDownList>
                </div>
            </div>
            <div class="boton">
                <asp:Button ID="btnEnviar" runat="server" Text="Enviar" />
            </div>
        </div>
        <div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [TIPO]"></asp:SqlDataSource>
        </div>
        <div>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [PRESTACION]"></asp:SqlDataSource>
        </div>
        <div>
            <asp:GridView ID="grdPrestacionesAcceder" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="CodPre" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" HorizontalAlign="Center" OnSelectedIndexChanged="grdPrestacionesAcceder_SelectedIndexChanged" PageSize="5" Width="80%">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ButtonType="Button" ShowSelectButton="True" />
                    <asp:BoundField DataField="CodPre" HeaderText="CodPre" ReadOnly="True" SortExpression="CodPre" />
                    <asp:BoundField DataField="DesPre" HeaderText="DesPre" HtmlEncode="False" SortExpression="DesPre" />
                    <asp:BoundField DataField="ImpPre" HeaderText="ImpPre" SortExpression="ImpPre" />
                    <asp:BoundField DataField="PorPre" HeaderText="PorPre" SortExpression="PorPre" />
                    <asp:BoundField DataField="CodTip" HeaderText="CodTip" SortExpression="CodTip" />
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
        </div>

    </form>
</body>
</html>
