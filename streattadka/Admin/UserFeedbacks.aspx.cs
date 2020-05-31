using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_UserFeedbacks : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataClassesDataContext dc = new DataClassesDataContext();

        var data = (from t in dc.feedbacks select t).ToList();

        string str = "<table class='table table-striped table-bordered table-hover'><tr><th>Feed Back</th><th>Name</th><th>Id</th></tr>";
        foreach (var x in data)
        {
            str += "<tr><td>" + x.Feedback1 + "</td><td>" + x.Uname + "</td><td> " + x.UId + "</td></tr>";
        }

        str += "</table>";
        divData.InnerHtml = str;
    }
}