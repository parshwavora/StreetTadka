using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Search : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Request.QueryString["Id"] != null)
        {
            String Id = Request.QueryString["Id"].ToString();
            Label2.Text = Id;
            DataClassesDataContext dc = new DataClassesDataContext();
            var data = (from t in dc.stallowners where t.st_name.StartsWith(Id) select t).ToList();
            string str = "<table class='table table-striped table-bordered table-hover'><tr><th>Stall Name</th><th>Stall Image</th></tr>";
            foreach (var x in data)
            {
                str += "<tr><td>" + x.st_name + "</td><td><img src='Street Tadka_images/" + x.st_pic + "' width=25% /></td></tr>";
            }

            str += "</table>";
            divData.InnerHtml = str;
        }
        else
        {
            Label2.Text = "(A-Z)";
            DataClassesDataContext dc = new DataClassesDataContext();
            var data = (from t in dc.stallowners  select t).ToList();
            string str = "<table class='table table-striped table-bordered table-hover'><tr><th>Stall Name</th><th>Stall Image</th></tr>";
            foreach (var x in data)
            {
                str += "<tr><td>" + x.st_name + "</td><td><img src='Street Tadka_images/" + x.st_pic + "' width=25% /></td></tr>";
            }

            str += "</table>";
            divData.InnerHtml = str;
        }
    }
}