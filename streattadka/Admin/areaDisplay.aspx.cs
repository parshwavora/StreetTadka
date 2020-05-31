using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_areaDisplay : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataClassesDataContext dc = new DataClassesDataContext();
        
        var data = (from t in dc.areas select t).ToList();

        string str = "<table class='table table-striped table-bordered table-hover'><tr><th>Area Name</th><th>Pincode</th><th>Area IsDisplay</th><th>Update</th><th>Delete</th></tr>";
        foreach (var x in data)
        {
            str += "<tr><td>" + x.areaname + "</td><td>" + x.pincode +"</td><td> " + x.isdiplay + "</td><td><a href='areaUpdate.aspx?Id=" + x.area_id + "'>Update</a></td><td><a href='areaDelete.aspx?Id=" + x.area_id + "'>Delete</a></td></tr>";
        }

        str += "</table>";
        divData.InnerHtml = str;
    }
}