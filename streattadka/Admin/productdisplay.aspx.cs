using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_productdisplay : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
         DataClassesDataContext dc = new DataClassesDataContext();
        var data = (from t in dc.products select t).ToList();

        string str = "<table class='table table-striped table-bordered table-hover'><tr><th>Product Name</th><th>Product Image</th><th>Update</th><th>Delete</th></tr>";
        foreach(var x in data)
        {
            str += "<tr><td>"+x.pname+ "</td><td><img src='Street Tadka_images/" + x.pimg+"' width=25% /></td><td><a href='ProductUpdate.aspx?Id="+x.p_id+"'>Update</a></td><td><a href='ProductDelete.aspx?Id="+x.p_id+"'>Delete</a></td></tr>";
        }

        str += "</table>";
        divData.InnerHtml = str;
    }
}