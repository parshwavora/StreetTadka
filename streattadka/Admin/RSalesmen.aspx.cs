using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_RSalesmen : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
        DataClassesDataContext dc = new DataClassesDataContext();
        var data = (from t in dc.userdetails where t.ut_id == 2 select t).ToList();
        int count = 0;
        string str = "<table border=1 class='table table-striped table-bordered table-hover'><tr><th>Salesmen Name</th></tr>";
        foreach (var x in data)
        {
            count = count + 1;
            str += "<tr><td>" + x.u_fname + "</td></tr>";
        }

        str += "</table>";
        Label1.Text = "Count = " + count;
        divData.InnerHtml = str;
    }
}