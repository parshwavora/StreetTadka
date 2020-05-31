using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_CatDisplay : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataClassesDataContext dc = new DataClassesDataContext();
        var data = (from t in dc.categories select t).ToList();

        string str = "<table class='table table-striped table-bordered table-hover'><tr><th>Cat Name</th><th>Cat Image</th><th>Cat IsDisplay</th><th>Update</th><th>Delete</th></tr>";
        foreach (var x in data)
        {
            str += "<tr><td>" + x.cname + "</td><td><img src='Street Tadka_images/" + x.catimage + "' width=25% /></td><td>" + x.isdisplay + "</td><td><a href='CatUpdate.aspx?Id=" + x.cat_id + "'>Update</a></td><td><a href='CatDelete.aspx?Id=" + x.cat_id + "'>Delete</a></td></tr>";
        }

        str += "</table>";
        divData.InnerHtml = str;
    }
}




















