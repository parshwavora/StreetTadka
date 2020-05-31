using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Unnamed14_Click(object sender, EventArgs e)
    {
        DataClassesDataContext dc = new DataClassesDataContext();
        var data = (from t in dc.userdetails select t).ToList();
        var gn = "";
        if (Male.Checked == true)
            gn = "Male";
        else
            gn = "Female";


        if (FileUpload1.HasFile == true)
        {
            string fname = FileUpload1.FileName;
            string str = Server.MapPath("img");
            FileUpload1.SaveAs(str + "\\" + fname);
            //dc.MemberInsert(txtUname.Text, txtPwd.Text, txtFname.Text, txtLname.Text, fname, System.DateTime.Today, DateTime.Parse(txtDoB.Text), txtEmail.Text, txtContact.Text, gn, txtAddress.Text, 4);
            dc.userdetailsinsert(txtFname.Text, txtMname.Text, txtLname.Text, gn, DateTime.Parse(txtDoB.Text), txtEmail.Text, txtContact.Text, 4, fname, txtAddress.Text, txtPin.Text, txtUname.Text, txtPwd.Text,1,System.DateTime.Now,1,"yes");
        }
        Response.Redirect("User_Display.aspx");

    }
}