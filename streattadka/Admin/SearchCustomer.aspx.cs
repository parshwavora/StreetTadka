using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_SearchCustomer : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["Id"] != null)
        {
            String Id = Request.QueryString["Id"].ToString();
            Label2.Text = Id;
            DataClassesDataContext dc = new DataClassesDataContext();
            var data = (from t in dc.userdetails where t.u_fname.StartsWith(Id) && t.ut_id == 4 select t).ToList();
            string str = "<table class='table table-striped table-bordered table-hover'><tr><th>Customer Name</th><th>Customer Image</th></tr>";
            foreach (var x in data)
            {
                str += "<tr><td>" + x.u_fname + "</td><td><img src='../img/" + x.u_photo + "' width=25% /></td></tr>";
            }

            str += "</table>";
            divData.InnerHtml = str;
        }
        else
        {
            Label2.Text = "(A-Z)";
            DataClassesDataContext dc = new DataClassesDataContext();
            var data = (from t in dc.userdetails where  t.ut_id == 4 select t).ToList();
            string str = "<table class='table table-striped table-bordered table-hover'><tr><th>Customer Name</th><th>Customer Image</th></tr>";
            foreach (var x in data)
            {
                str += "<tr><td>" + x.u_fname + "</td><td><img src='../img/" + x.u_photo + "' width=25% /></td></tr>";
            }

            str += "</table>";
            divData.InnerHtml = str;
        }
    }
}