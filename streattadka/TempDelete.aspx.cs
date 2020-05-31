using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class TempDelete : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        DataClassesDataContext dc = new DataClassesDataContext();

        int id = int.Parse(Request.QueryString["Id"].ToString());
        dc.TempDelete(id);
        Response.Redirect("TempCartView.aspx");
    }
    

    
}