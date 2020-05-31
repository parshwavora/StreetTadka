using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class feedback : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Unnamed1_Click(object sender, EventArgs e)
    {
        int uid = int.Parse(Session["UId"].ToString());
        DataClassesDataContext dc = new DataClassesDataContext();
        var data = (from t in dc.userdetails where t.u_id == uid select t).FirstOrDefault();
        dc.UserFeedback(uid, data.u_fname, TextBox1.Text);
        Response.Redirect("SubmittedSuccess.aspx");

    }
}