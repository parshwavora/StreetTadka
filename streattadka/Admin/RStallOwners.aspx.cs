using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_RStallOwners : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
        DataClassesDataContext dc = new DataClassesDataContext();
        int c = 0;
        var data = (from t in dc.userdetails where t.ut_id == 3 select t).ToList();
        string str = "<table border=1 class='table table-striped table-bordered table-hover'><tr><th>Stall-Owner Name</th></tr>";
        foreach (var x in data)
        {
            str += "<tr><td>" + x.u_fname + "</td></tr>";
            c = c + 1;
        }

        str += "</table>";
        Label1.Text = "Total = " + c;
        divData.InnerHtml = str;
    }
}