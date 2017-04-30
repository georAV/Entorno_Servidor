using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ManejoDatos_PrestacionesAcceder : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void grdPrestacionesAcceder_SelectedIndexChanged(object sender, EventArgs e)
    {
        txtCodPre.Text = grdPrestacionesAcceder.SelectedRow.Cells[1].Text;
        txtDesPre.Text = grdPrestacionesAcceder.SelectedRow.Cells[2].Text;
        txtImpPre.Text = grdPrestacionesAcceder.SelectedRow.Cells[3].Text;
        txtPorPre.Text = grdPrestacionesAcceder.SelectedRow.Cells[4].Text;
        ddlTipPre.SelectedItem.Selected = false;
        ddlTipPre.SelectedItem.Text = grdPrestacionesAcceder.SelectedRow.Cells[5].Text;
    }
}