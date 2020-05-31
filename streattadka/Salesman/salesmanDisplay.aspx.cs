using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Salesman_salesmanDisplay : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        {
            DataClassesDataContext dc = new DataClassesDataContext();

            var data = (from t in dc.salesmans join a in dc.areas on t.area_id equals a.area_id join u in dc.userdetails on t.u_id equals u.u_id select new { t.sm_id,t.s_doj,a.areaname,u.u_fname,u.u_lname}).ToList();

            string str = "<table class='table table-striped table-bordered table-hover'><tr><th>Salesman ID</th><th>Userdetails</th><th>Salesman Date of Joining</th><th>Area Details</th><th>Update</th><th>Delete</th></tr>";
            foreach (var x in data)
            {
                str += "<tr><td>" + x.sm_id + "</td><td>" + x.u_fname + " " + x.u_lname + "</td><td>" + x.s_doj + "</td><td> " + x.areaname + "</td><td><a href='SalesmanUpdate.aspx?Id=" + x.sm_id + "'>Update</a></td><td><a href='SalesmanDelete.aspx?Id=" + x.sm_id + "'>Delete</a></td></tr>";
            }

            str += "</table>";
            divData.InnerHtml = str;
        }        
    }
}