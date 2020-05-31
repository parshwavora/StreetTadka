using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_Delete : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataClassesDataContext dc = new DataClassesDataContext();
        int id = int.Parse(Request.QueryString["Id"].ToString());
        var data = (from t in dc.userdetails where t.u_id == id select t);
        dc.userdetailsdelete(id);
        Response.Redirect("User_Display.aspx");
    }
}