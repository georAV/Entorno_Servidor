using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class prestaciones1Respuesta : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //Acceso por ID a los valores de la colección Request.Form
        string cadena = "";
        cadena = cadena + "Código: " + Request.Form["txtCodPre"] + "<br/>";
        cadena = cadena + "Descripción: " + Request.Form["txtDesPre"] + "<br/>";
        cadena = cadena + "Importe: " + Request.Form["txtImpPre"] + "<br/>";
        cadena = cadena + "Porcentaje: " + Request.Form["txtPorPre"] + "<br/>";
        cadena = cadena + "Tipo de prestación: " + Request.Form["ddlTipPre"] + "<br/>";
        lblValores1.Text = cadena;

        //Recorrido por la colección Request.Form
        System.Collections.Specialized.NameValueCollection valor1 = Request.Form;
        cadena = "";
        foreach(string campo in Request.Form)
        {
            if (campo.Substring(0, 2) != "__")
            {
                cadena = cadena + campo + ": " + valor1[campo] + "<br/>";
            }
        }
        lblValores2.Text = cadena;

        //Recorrido por la colección Request.Form con índice numérico.
        System.Collections.Specialized.NameValueCollection valor2 = Request.Form;
        cadena = "";
        int i = 0;
        foreach (string campo in Request.Form)
        {
            if (campo.Substring(0, 2) != "__")
            {
                cadena = cadena + campo + ": " + valor2[i] + "<br/>";
            }
            i++;
        }
        lblValores3.Text = cadena;

        //Compartir valores de controles entre Web Forms.
        cadena = "";
        if (Page.PreviousPage != null)
        {
            cadena = cadena + ((TextBox)Page.PreviousPage.FindControl("txtCodPre")).Text + "<br/>";
            cadena = cadena + ((TextBox)Page.PreviousPage.FindControl("txtDesPre")).Text + "<br/>";
            cadena = cadena + ((TextBox)Page.PreviousPage.FindControl("txtImpPre")).Text + "<br/>";
            cadena = cadena + ((TextBox)Page.PreviousPage.FindControl("txtPorPre")).Text + "<br/>";
            cadena = cadena + ((DropDownList)Page.PreviousPage.FindControl("ddlTipPre")).Text;
            cadena = cadena + "<br/>";
        }
        else
        {
            cadena = "No existe el Web Form origen";
        }
        lblValores4.Text = cadena;
    }
}