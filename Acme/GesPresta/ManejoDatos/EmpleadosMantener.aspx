<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EmpleadosMantener.aspx.cs" Inherits="ManejoDatos_EmpleadosMantener" %>

<%@ Register Src="~/CabeceraMejorada.ascx" TagPrefix="uc1" TagName="CabeceraMejorada" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
<style type="text/css">
    #bloque1 {margin:20px;overflow:hidden}
    #bloque1 .control{float:left;}
    #bloque2, #bloque3{clear:both; margin:20px;}
</style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <uc1:CabeceraMejorada runat="server" ID="CabeceraMejorada" />
    </div>
    <div id="bloque1">
        <div class="control">
            <asp:TextBox ID="txtNombreBuscar" runat="server"></asp:TextBox>
        </div>
        <div class="control">
            <asp:Button ID="cmdBuscar" runat="server" Text="Buscar" />
        </div>
    </div>
     <div id="bloque2">
        <div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [EmpleadosSel] WHERE ([NomEmp] LIKE '%' + @NomEmp + '%')">
                <SelectParameters>
                    <asp:ControlParameter ControlID="txtNombreBuscar" DefaultValue="_" Name="NomEmp" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
        <div>
            <asp:GridView ID="grdEmpleados" runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="CodEmp" ForeColor="#333333" GridLines="None" Width="667px">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ButtonType="Button" ShowSelectButton="True" />
                    <asp:BoundField DataField="CodEmp" HeaderText="CodEmp" ReadOnly="True" SortExpression="CodEmp" />
                    <asp:BoundField DataField="NifEmp" HeaderText="NifEmp" SortExpression="NifEmp" />
                    <asp:BoundField DataField="NomEmp" HeaderText="NomEmp" SortExpression="NomEmp" />
                    <asp:BoundField DataField="DesDep" HeaderText="DesDep" SortExpression="DesDep" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
        </div>
    </div>
    <div id="bloque3">
        <div>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [EMPLEADO] WHERE [CodEmp] = @CodEmp" InsertCommand="INSERT INTO [EMPLEADO] ([CodEmp], [NifEmp], [NomEmp], [DirEmp], [CiuEmp], [TelEmp], [CorEmp], [FnaEmp], [FinEmp], [SexEmp], [CodDep]) VALUES (@CodEmp, @NifEmp, @NomEmp, @DirEmp, @CiuEmp, @TelEmp, @CorEmp, @FnaEmp, @FinEmp, @SexEmp, @CodDep)" SelectCommand="SELECT * FROM [EMPLEADO] WHERE ([CodEmp] = @CodEmp)" UpdateCommand="UPDATE [EMPLEADO] SET [NifEmp] = @NifEmp, [NomEmp] = @NomEmp, [DirEmp] = @DirEmp, [CiuEmp] = @CiuEmp, [TelEmp] = @TelEmp, [CorEmp] = @CorEmp, [FnaEmp] = @FnaEmp, [FinEmp] = @FinEmp, [SexEmp] = @SexEmp, [CodDep] = @CodDep WHERE [CodEmp] = @CodEmp">
                <DeleteParameters>
                    <asp:Parameter Name="CodEmp" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="CodEmp" Type="String" />
                    <asp:Parameter Name="NifEmp" Type="String" />
                    <asp:Parameter Name="NomEmp" Type="String" />
                    <asp:Parameter Name="DirEmp" Type="String" />
                    <asp:Parameter Name="CiuEmp" Type="String" />
                    <asp:Parameter Name="TelEmp" Type="String" />
                    <asp:Parameter Name="CorEmp" Type="String" />
                    <asp:Parameter DbType="Date" Name="FnaEmp" />
                    <asp:Parameter DbType="Date" Name="FinEmp" />
                    <asp:Parameter Name="SexEmp" Type="String" />
                    <asp:Parameter Name="CodDep" Type="String" />
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="grdEmpleados" Name="CodEmp" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="NifEmp" Type="String" />
                    <asp:Parameter Name="NomEmp" Type="String" />
                    <asp:Parameter Name="DirEmp" Type="String" />
                    <asp:Parameter Name="CiuEmp" Type="String" />
                    <asp:Parameter Name="TelEmp" Type="String" />
                    <asp:Parameter Name="CorEmp" Type="String" />
                    <asp:Parameter DbType="Date" Name="FnaEmp" />
                    <asp:Parameter DbType="Date" Name="FinEmp" />
                    <asp:Parameter Name="SexEmp" Type="String" />
                    <asp:Parameter Name="CodDep" Type="String" />
                    <asp:Parameter Name="CodEmp" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
        <div>
            <asp:DetailsView ID="dtlEmpleados" runat="server" Height="50px" Width="40%" AutoGenerateRows="False" DataKeyNames="CodEmp" DataSourceID="SqlDataSource2" CellPadding="4" ForeColor="#333333" GridLines="None" OnItemDeleted="dtlEmpleados_ItemDeleted" OnItemInserted="dtlEmpleados_ItemInserted" OnItemUpdated="dtlEmpleados_ItemUpdated">
                <AlternatingRowStyle BackColor="White" />
                <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
                <EditRowStyle BackColor="#99CCFF" />
                <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" Width="30%" />
                <Fields>
                    <asp:BoundField DataField="CodEmp" HeaderText="Código Empleado" ReadOnly="True" SortExpression="CodEmp" />
                    <asp:BoundField DataField="NifEmp" HeaderText="NIF" SortExpression="NifEmp" >
                    <ControlStyle Width="30%" />
                    </asp:BoundField>
                    <asp:BoundField DataField="NomEmp" HeaderText="Nombre y apellidos" SortExpression="NomEmp" >
                    <ControlStyle Width="90%" />
                    </asp:BoundField>
                    <asp:BoundField DataField="DirEmp" HeaderText="Dirección" SortExpression="DirEmp" >
                    <ControlStyle Width="90%" />
                    </asp:BoundField>
                    <asp:BoundField DataField="CiuEmp" HeaderText="Ciudad" SortExpression="CiuEmp" >
                    <ControlStyle Width="90%" />
                    </asp:BoundField>
                    <asp:BoundField DataField="TelEmp" HeaderText="Teléfono" SortExpression="TelEmp" >
                    <ControlStyle Width="70%" />
                    </asp:BoundField>
                    <asp:BoundField DataField="CorEmp" HeaderText="Correo electrónico" SortExpression="CorEmp" >
                    <ControlStyle Width="70%" />
                    </asp:BoundField>
                    <asp:BoundField DataField="FnaEmp" HeaderText="Fecha de Nacimiento" SortExpression="FnaEmp" ApplyFormatInEditMode="True" DataFormatString="{0:d}" >
                    <ControlStyle Width="20%" />
                    </asp:BoundField>
                    <asp:BoundField DataField="FinEmp" HeaderText="Fecha de Ingreso" SortExpression="FinEmp" ApplyFormatInEditMode="True" DataFormatString="{0:d}" >
                    <ControlStyle Width="20%" />
                    </asp:BoundField>
                    <asp:TemplateField HeaderText="Sexo" SortExpression="SexEmp">
                        <EditItemTemplate>
                            <asp:RadioButtonList ID="rblSexEmp" runat="server" DataSourceID="SqlDataSource4" DataTextField="SexEmp" DataValueField="SexEmp" RepeatDirection="Horizontal" SelectedValue='<%# Bind("SexEmp") %>' Width="208px">
                                <asp:ListItem>Mujer</asp:ListItem>
                                <asp:ListItem>Hombre</asp:ListItem>
                            </asp:RadioButtonList>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:RadioButtonList ID="rblSexEmp" runat="server" DataSourceID="SqlDataSource4" DataTextField="SexEmp" DataValueField="SexEmp" RepeatDirection="Horizontal" SelectedValue='<%# Bind("SexEmp") %>' Width="232px" Height="28px">
                                <asp:ListItem>Mujer</asp:ListItem>
                                <asp:ListItem>Hombre</asp:ListItem>
                            </asp:RadioButtonList>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:RadioButtonList ID="rblSexEmp" runat="server" DataSourceID="SqlDataSource2" DataTextField="SexEmp" DataValueField="SexEmp" RepeatDirection="Horizontal" SelectedValue='<%# Bind("SexEmp") %>' Width="208px">
                                <asp:ListItem>Mujer</asp:ListItem>
                                <asp:ListItem>Hombre</asp:ListItem>
                            </asp:RadioButtonList>
                        </ItemTemplate>
                        <ControlStyle Width="40%" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Código Departamento" SortExpression="CodDep">
                        <EditItemTemplate>
                            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource3" DataTextField="DesDep" DataValueField="CodDep" SelectedValue='<%# Bind("CodDep") %>'>
                            </asp:DropDownList>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource3" DataTextField="DesDep" DataValueField="CodDep" SelectedValue='<%# Bind("CodDep") %>'>
                            </asp:DropDownList>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("CodDep") %>'></asp:Label>
                        </ItemTemplate>
                        <ControlStyle Width="40%" />
                    </asp:TemplateField>
                    <asp:CommandField ButtonType="Button" ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
            </asp:DetailsView>
            <div>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [DEPARTAMENTO]"></asp:SqlDataSource>
            </div>
            <div>
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [SexEmp] FROM [EMPLEADO]"></asp:SqlDataSource>
            </div>
        </div>
    </div>
    </form>
</body>
</html>
