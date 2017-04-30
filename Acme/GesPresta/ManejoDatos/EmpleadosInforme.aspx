<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EmpleadosInforme.aspx.cs" Inherits="ManejoDatos_EmpleadosInforme" %>

<%@ Register Src="~/CabeceraMejorada.ascx" TagPrefix="uc1" TagName="CabeceraMejorada" %>


<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=12.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
<style type="text/css">
    h3{text-align:center;margin:15px;}
    #reportViewer{width:720px; margin:10px auto;}
</style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <uc1:CabeceraMejorada runat="server" ID="CabeceraMejorada" />
        </div>
        <h3>INFORME DE EMPLEADOS</h3>
        <div>
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        </div>
        <div id="reportViewer">
            <rsweb:ReportViewer ID="rpvEmpleados" runat="server" Font-Names="Verdana" Font-Size="8pt" Height="324px" WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" Width="720px">
                <LocalReport ReportPath="ManejoDatos\Empleados.rdlc">
                    <DataSources>
                        <rsweb:ReportDataSource DataSourceId="SqlDataSource1" Name="DataSet1" />
                    </DataSources>
                </LocalReport>
            </rsweb:ReportViewer>
        </div>
        <div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [EmpleadosImp]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
