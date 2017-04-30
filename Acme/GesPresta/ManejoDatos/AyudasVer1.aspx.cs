using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ManejoDatos_AyudasVer1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void grdAyudasCab_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {
        lblTotalAyuda.Visible = true;
        lblTotalSolicitado.Visible = true;
        lstTotalAyuda.Visible = true;
    }
}