<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ControlError.aspx.cs" Inherits="ControlError" %>

<%@ Register Src="~/CabeceraMejorada.ascx" TagPrefix="uc1" TagName="CabeceraMejorada" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
<style type="text/css">
    #titulo{margin:15px; text-align:center;}
    .linea{width: 70%; margin:15px auto;}
</style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <uc1:CabeceraMejorada runat="server" ID="CabeceraMejorada" />
        </div>
        <div id="titulo">
            Aplicación Web GesPresta. Error en tiempo de ejecución.
        </div>
        <div class="linea">
            <div class="texto">
                Error de ASP.NET:
            </div>
            <div class="control">
                <asp:Label ID="lblErrorASP" runat="server" ForeColor="Red"></asp:Label>
            </div>
        </div>
        <div class="linea">
            <div class="texto">
                Error de ADO.NET
            </div>
            <div class="control">
                <asp:Label ID="lblErrorADO" runat="server" ForeColor="Red"></asp:Label>
            </div>
        </div>
    </form>
</body>
</html>
