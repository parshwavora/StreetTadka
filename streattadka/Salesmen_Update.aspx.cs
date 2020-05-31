using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Salesmen_Update : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Unnamed12_Click(object sender, EventArgs e)
    {
        DataClassesDataContext dc = new DataClassesDataContext();
        int id = int.Parse(Request.QueryString["Id"].ToString());
        var data = (from t in dc.Salesmens where t.SalesmenId == id select t).FirstOrDefault();
        if(FileUpload1.HasFile==true)
        {
            string fname = FileUpload1.FileName;
            string str = Server.MapPath("img");
            FileUpload1.SaveAs(str + "\\" + fname);
            var gn = "";
            if (Male.Checked == true)
            {
                gn = "Male";
            }
            else
                gn = "Female";
            dc.Salesmen_RegUpdate(id, txtFname.Text, txtLname.Text, System.DateTime.Today, DateTime.Parse(txtDoB.Text), txtPwd.Text, txtEmail.Text, txtContact.Text, txtNotes.Text, txtAddress.Text, int.Parse(txtAreaId.Text), fname, gn);
        }
        Response.Redirect("Salesmen_Display.aspx");
    }
}