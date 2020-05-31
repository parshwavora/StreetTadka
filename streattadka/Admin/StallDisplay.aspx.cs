using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_StallDisplay : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataClassesDataContext dc = new DataClassesDataContext();
        var data = (from t in dc.stallowners select t).ToList();
        string str = "<table class='table table-striped table-bordered table-hover'><tr><th>Stall Name</th><th>Stall Image</th></tr>";
        foreach (var x in data)
        {
            str += "<tr><td><a href='StallDetails.aspx?Id=" + x.st_id + "'>" + x.st_name + "</a></td></td><td><img src='Street Tadka_images/" + x.st_pic + "' width=25% /></td></tr>";
        }

        str += "</table>";
        divData.InnerHtml = str;
    }
}