using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_Display : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataClassesDataContext dc = new DataClassesDataContext();
        var data = (from t in dc.userdetails select t).ToList();
        string str = "<table class='table table-bordered'><tr><td>First Name</td><td>Middle Name</td><td>Last Name</td><td>Gender</td><td>Date Of Birth</td><td>E-mail</td><td>Contact-Number</td><td>User type</td><td>Image</td><td>Address</td><td>Pin-Code</td><td>User-Name</td><td>Password</td><td>View Count</td><td>Last Seen</td><td>Visit Count</td><td>isActive</td><td>Update</td><td>Delete</td></tr>";
        foreach (var x in data)
        {
            str += "<tr><td>" + x.u_fname + "</td><td>" + x.u_mname + "</td><td>" + x.u_lname + "</td><td>" + x.u_gender + "</td><td>" + x.u_dob + "</td><td>" + x.u_email + "</td><td>" + x.u_phone + "</td><td>" + x.ut_id + "</td><td><img src='Img/" + x.u_photo + "'height=100 width=100></td><td>" + x.u_address + "</td><td>" + x.u_pincode + "</td><td>" + x.u_username + "</td><td>" + x.u_password + "</td><td>" + x.viewcount + "</td><td>" + x.lseen + "</td><td>" + x.visitcount + "</td><td>" + x.isActive + "</td><td><a href='User_Update.aspx?Id=" + x.u_id + "'>Update</a></td><td><a href='User_Delete.aspx?Id=" + x.u_id + "'>Delete</a></td></tr>";
        }
        str += "</table>";
        divData.InnerHtml = str;
    }
}