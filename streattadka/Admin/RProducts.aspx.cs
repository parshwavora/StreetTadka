using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_RProducts : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataClassesDataContext dc = new DataClassesDataContext();
        var data = (from t in dc.products select t).ToList();
        string str = "<table border=1 class='table table-striped table-bordered table-hover'><tr><th>Product Name</th><th>Category Id</th></tr>";
        int c = 0;
        foreach (var x in data)
        {
            str += "<tr><td>" + x.pname + "</td><td>" + x.cat_id + "</td></tr>";
            c = c + 1;
        }

        str += "</table>";
        Label1.Text = "Total = " + c;
        divData.InnerHtml = str;
    }
}