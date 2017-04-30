using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Convert.ToString(Session["Rol"]) != "U")
        {
            Response.Redirect("~/Default.aspx");
        }
        lblDatosUsuario.Text = Convert.ToString(Session["Rol"]) +
        " - " + Convert.ToString(Session["Nombre"]);

        int InNumeroFilas;
        string StrResul, StrError;
        string StrCadenaConexion = "Data Source=(localdb)\\MSSQLLocalDB;AttachDbFilename=" +
        Server.MapPath("~/App_Data/Tienda.mdf") +
        ";Integrated Security=True;Connect Timeout=30";
        string StrComandoSql = "SELECT IdProducto,DesPro,PrePro,IdUnidad,DesTip FROM PRODUCTO " +
        "INNER JOIN TIPO ON PRODUCTO.IdTipo = TIPO.IdTipo;";
        try
        {
            SqlConnection conexion = new SqlConnection(StrCadenaConexion);
            SqlCommand comando = new SqlCommand(StrComandoSql, conexion);
            conexion.Open();
            SqlDataReader reader = comando.ExecuteReader();
            if (reader.HasRows)
            {
                StrResul = "<div style='display:table;border-style:solid;border-color:#336699;width:70%'>";
                StrResul += "<div style='display:table-row; background:#336699;color:white'>";
                StrResul += "<div style='display:table-cell; font-weight:bold'>Código</div>";
                StrResul += "<div style='display:table-cell; font-weight:bold'>Descripción</div>";
                StrResul += "<div style='display:table-cell; font-weight:bold'>Precio</div>";
                StrResul += "<div style='display:table-cell; font-weight:bold'>Unidad</div>";
                StrResul += "<div style='display:table-cell; font-weight:bold'>Tipo Producto</div>";
                StrResul += "</div>";
                InNumeroFilas = 0;
                while (reader.Read())
                {
                    StrResul += "<div style='display:table-row'>";
                    StrResul += "<div style='display:table-cell'> &nbsp;" + reader.GetString(0) + "</div>";
                    StrResul += "<div style='display:table-cell'>" + reader.GetString(1) + "</div>";
                    StrResul += "<div style='display:table-cell; text-align: right'>"
                    + string.Format("{0:C}", reader.GetValue(2)) + "&nbsp; &nbsp; </div>";
                    StrResul += "<div style='display:table-cell'>" + reader.GetString(3) + "</div>";
                    StrResul += "<div style='display:table-cell'>" + reader.GetString(4) + "</div>";
                    StrResul += "</div>";
                    InNumeroFilas++;
                }
                StrResul += "</div>";
                StrResul += "<p> Número de Filas: " + InNumeroFilas + "</p>";
                lblResultado.Text = StrResul;
            }
            else
            {
                lblMensajes.Text = "No existen registros resultantes de la consulta";
            }
            reader.Close();
            comando.Dispose();
            conexion.Close();
        }
        catch (SqlException ex)
        {
            StrError = "<p>Se han producido errores en el acceso a la base de datos.</p>";
            StrError = StrError + "<div>Código: " + ex.Number + "</div>";
            StrError = StrError + "<div>Descripción: " + ex.Message + "</div>";
            lblMensajes.Text = StrError;
            return;
        }
    }
}