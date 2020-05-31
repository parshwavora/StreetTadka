using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Salesman_stallownerdisplay : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)

    {
        DataClassesDataContext dc = new DataClassesDataContext();

        var data = (from t in dc.stallowners join a in dc.userdetails on t.u_id equals a.u_id join u in dc.areas on t.area_id equals u.area_id join v in dc.salesmans on t.sm_id equals v.sm_id join w in dc.categories on t.cat_id equals w.cat_id select new { t.st_id, t.st_name, t.st_pic, t.op_time, t.cl_time, t.st_doj, a.u_fname, a.u_lname, a.u_phone, u.areaname, u.pincode, v.s_doj, w.cname, w.catimage, w.isdisplay }).ToList();

        string str = "<table class='table table-striped table-bordered table-hover'><tr><th>Stallowner ID</th><th>Name</th><th>Stall Name</th><th>Stall Picture</th><th>Area Name</th><th>Opening Time</th><th>Closing Time</th><th>Salesman Date of Joining</th><th>Stall Owner Date of Joining</th><th>Category Name</th><th>Category Image</th><th>Is Display</th><th>Update</th><th>Delete</th></tr>";
        foreach (var x in data)
        {
            str += "<tr><td>" + x.st_id + "</td><td>" + x.u_fname + " " + x.u_lname + "</td><td>" + x.st_name + "</td><td><img src='Street Tadka_images/" + x.st_pic + "' width=25% /></td><td> " + x.areaname + "</td><td> " + x.pincode+ "</td><td> " + x.op_time + "</td><td> " + x.cl_time + "</td><td> " + x.s_doj + "</td><td> " + x.st_doj + "</td><td> " + x.cname + "</td><td><img src='Street Tadka_images/" + x.catimage + "' width=25% /></td><td> " + x.isdisplay + "</td><td><a href='StallownerUpdate.aspx?Id=" + x.st_id + "'>Update</a></td><td><a href='StallownerDelete.aspx?Id=" + x.st_id + "'>Delete</a></td></tr>";
        }

        str += "</table>";
        divData.InnerHtml = str;
    }
}
