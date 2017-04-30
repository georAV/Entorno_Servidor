<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>
<%@ Register src="cabecera.ascx" tagname="cabecera" tagprefix="uc1" %>

<%@ Register src="CabeceraMejorada.ascx" tagname="CabeceraMejorada" tagprefix="uc2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>ACME</title>
    <style type="text/css">
        #contenido{
            margin-top:30px;
        }
        .linea{margin:20px auto; width:708px;
        }
        .texto {
            float:left;
            width: 480px;
            margin:10px;
        }
        
        .control{
            float:left;
            margin:10px 0;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <uc2:CabeceraMejorada ID="CabeceraMejorada1" runat="server" />
        </div>
        <div id="contenido">
            <p>La corporación ACME está comprometida con sus empleados. Para ello
                ha establecido una serie de prestaciones que pueden utilizar sus
                empleados para obtener ayudas sociales asociados a diversos gastos
                de tipo familiar, médico, etc.
            </p><br/>
            <p>Esta aplicación a través de Web permite realizar todas las tareas de 
                gestión relacionadas con la prestación de ayudas a empleados.
            </p><br/>
            <p>Para cualquier duda o consulta puede contactar con el Departamento de 
               Ayuda Social:
               <asp:LinkButton ID="botonConsulta" runat="server">ayuda.social@acme.com</asp:LinkButton>
            </p>
        </div>
        <div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT count(*) as prestaciones FROM PRESTACION;"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT count(*) as empleados FROM EMPLEADO;"></asp:SqlDataSource>
        </div>
        <div class="linea">
            <div class="texto">
                Número de prestaciones que ofrecemos actualmente a nuestros empleados:
            </div>
            <div class="control">
                <asp:ListBox ID="lstNumPrestaciones" runat="server" DataSourceID="SqlDataSource1" DataTextField="prestaciones" DataValueField="prestaciones" Rows="1" SelectionMode="Multiple"></asp:ListBox>
            </div>
        </div>
        <div class="linea">
            <div class="texto">
                Número de empleados a los que ofrecemos nuestros servicios:
            </div>
            <div class="control">
                <asp:ListBox ID="lstNumEmpleados" runat="server" DataSourceID="SqlDataSource2" DataTextField="empleados" DataValueField="empleados" Rows="1" SelectionMode="Multiple"></asp:ListBox>
            </div>
        </div>
    </form>
</body>
</html>
