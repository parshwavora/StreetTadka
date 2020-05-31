using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_ChangePassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Unnamed14_Click(object sender, EventArgs e)
    {
        DataClassesDataContext dc = new DataClassesDataContext();
        int uid = int.Parse(Session["UId"].ToString());
        var data = (from t in dc.userdetails where t.u_id == uid select t).FirstOrDefault();
        string pwd = data.u_password;
        if (txtOld.Text.Equals(pwd))
        {
            if (txtNew.Text.Equals(txtConfirm.Text))
            {
                dc.ChangePassword(uid, txtNew.Text);
                Response.Redirect("ChangeSuccess.aspx");
            }
            else
            {
                Response.Redirect("ChangeUnsuccess.aspx");
            }
        }
        else
        {
            Response.Redirect("ChangeUnsuccess.aspx");
        }
    }
}