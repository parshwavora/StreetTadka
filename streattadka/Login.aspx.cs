using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        DataClassesDataContext dc = new DataClassesDataContext();
        var data1 = (from t in dc.userdetails where t.u_username.Equals(txtUname.Text) && t.u_password.Equals(txtPwd.Text) select t).ToList();

        if (data1.Count == 1)
        {

            if (data1[0].ut_id == 1)
            {
                Session["UId"] = data1[0].u_id;
                Session["Uname"] = data1[0].u_username;
                Response.Redirect("Admin/adminhome.aspx");
            }
            else if (data1[0].ut_id == 2)//khali
            {
                Session["UId"] = data1[0].u_id;
                Session["Uname"] = data1[0].u_username;
                Response.Redirect("Salesman/salesmanhomepage.aspx");
            }
            else if (data1[0].ut_id == 4)//khali
            {
                Session["UId"] = data1[0].u_id;
                Session["Uname"] = data1[0].u_username;
                Response.Redirect("Home.aspx");
            }
            else
            {
                Session["UId"] = data1[0].u_id;
                Session["Uname"] = data1[0].u_username;
                Response.Redirect("Stall Owner/SOHome.aspx");
            }

        }
        else
        {

        }
    }
}