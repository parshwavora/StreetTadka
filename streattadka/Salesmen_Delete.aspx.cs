using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Salesmen_Delete : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Unnamed2_Click(object sender, EventArgs e)
    {
        DataClassesDataContext dc = new DataClassesDataContext();
        int id = int.Parse(Request.QueryString["Id"].ToString());
        var data = (from t in dc.salesmans where t.sm_id == id select t);
        dc.salesmandelet(id);
        Response.Redirect("Salesmen_Display.aspx");
    }

    protected void Unnamed3_Click(object sender, EventArgs e)
    {
        Response.Redirect("Salesmen_Display.aspx");
    }
}