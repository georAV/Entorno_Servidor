<%@ Page Language="C#" AutoEventWireup="true" CodeFile="prestaciones1Respuesta.aspx.cs" Inherits="prestaciones1Respuesta" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .caja{
            position:relative;
            left:15%;
            text-align:center;
            width:100%;
        }
        .label{
            float:left;
            margin:10px;
            padding:10px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="caja">
        <asp:Label ID="lblValores1" runat="server" BackColor="#C0FFFF" CssClass="label" Width="70%"></asp:Label>
        <asp:Label ID="lblValores2" runat="server" BackColor="#C0FFC0" CssClass="label" Width="70%"></asp:Label>
        <asp:Label ID="lblValores3" runat="server" BackColor="#FFC0C0" CssClass="label" Width="70%"></asp:Label>
        <asp:Label ID="lblValores4" runat="server" BackColor="#FFFFC0" Width="70%" CssClass="label"></asp:Label>
    </div>
    </form>
</body>
</html>
