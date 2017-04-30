<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EmpleadosCalendar.aspx.cs" Inherits="Empleados" %>

<%@ Register Src="~/cabecera.ascx" TagPrefix="uc1" TagName="cabecera" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Empleados</title>
    <style type="text/css">
        .titulo{
            text-align:center;
            font-size:24px;
            margin: 20px 0px;
            font-family:Arial;
        }
         .cuerpo
        {
            margin-left: 2%;
            margin-right: 10%;
            padding-top: 15px;
            padding-bottom: 10px;
            width: 1211px;
        }
        .linea
        {
            height: 25px;
            width: 572px;
        }
        .textos
        {
            text-align: right; 
            position: relative; 
            float: left;
            top: 0px;
            left: 0px;
            width: 222px;
        }
        .controles
        {
            text-align: left; 
            float: right;
            width:58%;
        }
        .boton
        {
            clear: both;
            text-align :center;
            padding:10px;
        }
        #lblValores{
            text-align:center;
            position:relative;
            left:20%;
        }
        .calendario1, .calendario2{
            float:left;
            width:363px;
            padding:20px;
            margin-right:5px;
        }
        .texto_calendario{
            width: 135px;
            float:left;
            text-align:right;
        }
       
        .operaciones {
            width: 181px;
            margin-left: 824px;
            margin-top: 0px;
            padding:20px;
        }
        .linea_op {
            width: 180px;
            height: 31px;
            padding:5px;
        }
        .textos_op {
            width: 61px;
            float:left;
            padding:10px;
            text-align:right;
        }
        .controles_op{
            float:right;
            padding:10px;
        }
        .errores{
            clear:both;
            width:100%;
            text-align:center;
            border-bottom:1px solid grey;
            color:red;
        }
        .control_err{
            padding:5px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <uc1:cabecera runat="server" ID="cabecera" />
        </div>
        <div class="titulo">
            DATOS DE LOS EMPLEADOS
        </div>
        <div class="cuerpo">
            <div class="linea">
                <div class="textos">
                    Código Empleado
                </div>
                <div class="controles">
                    <asp:TextBox ID="txtCodEmp" runat="server" Width="214px"></asp:TextBox>
                </div>
            </div>
            <div class="linea">
                <div class="textos">
                    NIF
                </div>
                <div class="controles">
                    <asp:TextBox ID="txtNifEmp" runat="server" Width="216px"></asp:TextBox>
                </div>
            </div>
            <div class="linea">
                <div class="textos">
                    Apellidos y Nombre
                </div>
                <div class="controles">
                    <asp:TextBox ID="txtNomEmp" runat="server" Width="409px"></asp:TextBox>
                </div>
            </div>
            <div class="linea">
                <div class="textos">
                    Dirección
                </div>
                <div class="controles">
                    <asp:TextBox ID="txtDirEmp" runat="server" Width="440px"></asp:TextBox>
                </div>
            </div>
            <div class="linea">
                <div class="textos">
                    Ciudad
                </div>
                <div class="controles">
                    <asp:TextBox ID="txtCiuEmp" runat="server" Width="440px"></asp:TextBox>
                </div>
            </div>
            <div class="linea">
                <div class="textos">
                    Teléfonos
                </div>
                <div class="controles">
                    <asp:TextBox ID="txtTelEmp" runat="server" Width="307px"></asp:TextBox>
                </div>
            </div>
            
            <div class="linea">
                <div class="textos">
                    Sexo
                </div>
                <div class="controles">
                    <asp:RadioButtonList ID="rblSexEmp" runat="server" RepeatDirection="Horizontal" Width="189px">
                        <asp:ListItem Selected="True">Mujer</asp:ListItem>
                        <asp:ListItem>Hombre</asp:ListItem>
                    </asp:RadioButtonList>
                </div>
            </div>
            <div class="linea">
                <div class="textos">
                    Departamento
                </div>
                <div class="controles">
                    <asp:DropDownList ID="ddlDepEmp" runat="server">
                        <asp:ListItem Selected="True">Investigación</asp:ListItem>
                        <asp:ListItem>Desarrollo</asp:ListItem>
                        <asp:ListItem>Innovación</asp:ListItem>
                        <asp:ListItem>Administración</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
            <div class="calendario1">
                <div class="texto_calendario">
                    Fecha de Nacimiento
                </div>
                <div class="controles">
                    <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" Width="200px">
                        <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                        <NextPrevStyle VerticalAlign="Bottom" />
                        <OtherMonthDayStyle ForeColor="#808080" />
                        <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                        <SelectorStyle BackColor="#CCCCCC" />
                        <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                        <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                        <WeekendDayStyle BackColor="#FFFFCC" />
                    </asp:Calendar>
                </div>  
            </div>
            <div class="calendario2">
                <div class="texto_calendario">
                    Fecha de Ingreso
                </div>
                <div class="controles">
                    <asp:Calendar ID="Calendar2" runat="server" OnSelectionChanged="Calendar2_SelectionChanged" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" Width="200px">
                        <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                        <NextPrevStyle VerticalAlign="Bottom" />
                        <OtherMonthDayStyle ForeColor="#808080" />
                        <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                        <SelectorStyle BackColor="#CCCCCC" />
                        <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                        <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                        <WeekendDayStyle BackColor="#FFFFCC" />
                    </asp:Calendar>
                </div>
            </div>
            <div class="operaciones">
                    Antigüedad:
                <div class="linea_op">
                    <div class="controles_op">
                        <asp:TextBox ID="anyos" runat="server" Width="68px"></asp:TextBox>
                    </div>
                    <div class="textos_op">
                        años
                    </div>
                </div>
                <div class="linea_op">
                    <div class="controles_op">
                        <asp:TextBox ID="meses" runat="server" Width="68px" Height="16px"></asp:TextBox>
                    </div>
                    <div class="textos_op">  
                        meses
                    </div>
                </div>
                <div class="linea_op">
                    <div class="controles_op"> 
                        <asp:TextBox ID="dias" runat="server" Width="68px"></asp:TextBox>
                    </div>
                    <div class="textos_op">
                         días
                    </div>
                </div>
            </div>
            <div class="errores">
                <div class="control_err">
                    <asp:Label ID="lblerror1" runat="server" Width="573px"></asp:Label>
                </div>
                <div class="control_err">
                    <asp:Label ID="lblerror2" runat="server" Width="573px"></asp:Label>
                </div>
            </div>
            <div class="boton">
                <asp:Button ID="cmdEnviar" runat="server" Text="Enviar" OnClick="cmdEnviar_Click" Height="31px" />
            </div>
            <div>
                <asp:Label ID="lblValores" runat="server" BackColor="#66FFFF" Visible="False" Width="60%"></asp:Label>
            </div>
        </div>
        
    </form>
</body>
</html>