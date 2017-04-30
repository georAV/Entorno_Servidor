using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ManejoDatos_EmpleadosMantener : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void dtlEmpleados_ItemUpdated(object sender, DetailsViewUpdatedEventArgs e)
    {
        grdEmpleados.DataBind();
    }

    protected void dtlEmpleados_ItemInserted(object sender, DetailsViewInsertedEventArgs e)
    {
        grdEmpleados.DataBind();
    }

    protected void dtlEmpleados_ItemDeleted(object sender, DetailsViewDeletedEventArgs e)
    {
        grdEmpleados.DataBind();
    }
}