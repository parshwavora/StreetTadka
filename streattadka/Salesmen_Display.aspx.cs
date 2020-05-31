using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Salesmen_Display : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataClassesDataContext dc = new DataClassesDataContext();
        var data = (from t in dc.salesmans select t).ToList();
        string str = "<table class='table table-bordered'><tr><td>Salesmen Id</td><td>First Name</td><td>Last Name</td><td>Date Of Joining</td><td>Date Of Birth</td><td>Password</td><td>E-mail</td><td>Contact-Number</td><td>Gender</td><td>Notes</td><td>Address</td><td>AreaId</td><td>Image</td><td>Update</td><td>Delete</td></tr>";
        foreach (var x in data)
        {
            str += "<tr><td>" + x.sm_id + "</td><td>" + x.FName + "</td><td>" + x.LName + "</td><td>" + x.DoJ + "</td><td>" + x.DoB + "</td><td>" + x.Password + "</td><td>" + x.E_mail + "</td><td>" + x.Contact_Number + "</td><td>" + x.Gender + "</td><td>" + x.Notes + "</td><td>" + x.Address + "</td><td>" + x.AreaId + "</td><td><img src='Img/" + x.SalesmenImg + "'height=100 width=100></td><td><a href='Salesmen_Update.aspx?Id=" + x.sm_id + "'>Update</a></td><td><a href='Salesmen_Delete.aspx?Id=" + x.sm_id + "'>Delete</a></td></tr>";
        }
        str += "</table>";
        divData.InnerHtml = str;
    }
}