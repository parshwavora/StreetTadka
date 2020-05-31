using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Salesman_SalesmenProfile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataClassesDataContext dc = new DataClassesDataContext();
        int uid = int.Parse(Session["UId"].ToString());
        var data = (from t in dc.userdetails where t.u_id == uid select t).FirstOrDefault();
        var img = data.u_photo;
        var name = data.u_fname + " " + data.u_lname;
        //string dob = data.u_dob; 
        Name.Text = name;
        Label1.Text = name;
        Label2.Text = data.u_username;
        Label3.Text = data.u_email;
        Label4.Text = data.u_phone;
        Label5.Text = data.u_gender;
        Label7.Text = data.u_address;
        img1.ImageUrl = "~/Img/" + img;
    }
}