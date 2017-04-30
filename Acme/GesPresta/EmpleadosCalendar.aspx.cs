using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Empleados : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        txtCodEmp.Focus();

        // Pone fechas de los calendarios por defecto al día actual mientras no haya interacción 
        if (!IsPostBack) 
        {
            Calendar1.SelectedDate = DateTime.Today;
            Calendar2.SelectedDate = DateTime.Today;
            cmdEnviar.Enabled = false;
        }
    }

    protected void cmdEnviar_Click(object sender, EventArgs e)
    {
        lblValores.Visible = true;
        lblValores.Text = "VALORES DEL FORMULARIO: " +
            "<br/> Código Empleado: " + txtCodEmp.Text +
            "<br/> Nif Empleado: " + txtNifEmp.Text +
            "<br/> Apellidos y Nombre: " + txtNomEmp.Text +
            "<br/> Dirección: " + txtDirEmp.Text +
            "<br/> Ciudad: " + txtCiuEmp.Text +
            "<br/> Teléfono: " + txtTelEmp.Text +
            //Agrego las líneas para las fechas de los calendarios:
            "<br/> Fecha de Nacimiento: " + Calendar1.SelectedDate.ToShortDateString() +
            "<br/> Fecha de incorporación: " + Calendar2.SelectedDate.ToShortDateString() +
            "<br/> Sexo: " + rblSexEmp.SelectedItem.Value +
            //Agrego la línea para la antigüedad:
            "<br/> Antigüedad: " + anyos.Text + " año/s, " + meses.Text + " mes/es y " + dias.Text + " día/s." +
            "<br/> Departamento: " + ddlDepEmp.Text;
    }
    private void calendario() // función que será llamada por los dos calendarios.
    {
        //Obtener las fechas.
        DateTime fecha_nac = Calendar1.SelectedDate;
        DateTime fecha_ing = Calendar2.SelectedDate;
        DateTime fecha_actual = System.DateTime.Now;

        //Manejo de errores.

        if (fecha_nac > fecha_ing)
        {
            lblerror1.Text = "La fecha de nacimiento no puede ser mayor a la de ingreso.";
            cmdEnviar.Enabled = false;
        }

        else if(fecha_ing > fecha_actual)
        {
            lblerror2.Text = "La fecha de ingreso no puede ser mayor a la de hoy.";
            cmdEnviar.Enabled = false;
        }

        else
        {
            //Si anteriormente ha saltado errores, borrarlos.
            lblerror1.Text = "";
            lblerror2.Text = "";

            /*Calcular antigüedad:
              Obtener el intervalo de tiempo entre las dos fechas.
              El tipo TimeSpan obtiene los días, horas, minutos y segundos*/
            TimeSpan intervalo = System.DateTime.Now - Calendar2.SelectedDate;

            // Operaciones usando la propiedad .Days del tipo TimeSpan:
            int anyos_total = intervalo.Days / 365;
            int meses_total = (intervalo.Days % 365) / 30;
            int dias_total = (intervalo.Days % 365) % 30;

            //Mostrar en textBox.
            anyos.Text = anyos_total.ToString();
            meses.Text = meses_total.ToString();
            dias.Text = dias_total.ToString();

            // Habilitar el botón de envío.
            cmdEnviar.Enabled = true;
        }
    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        //Llamar a la función
        calendario();
    }
    protected void Calendar2_SelectionChanged(object sender, EventArgs e)
    {
        //Llamar a la función
        calendario();
    } 
}