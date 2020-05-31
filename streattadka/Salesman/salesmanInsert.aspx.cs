using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Salesman_salesmanInsert : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DataClassesDataContext dc = new DataClassesDataContext();
            var data = (from t in dc.areas select t).ToList();

            drpArea.DataSource = data;
            drpArea.DataTextField = "areaname";
            drpArea.DataValueField = "area_id";
            drpArea.DataBind();
        }
    }




    protected void btnInsert_Click(object sender, EventArgs e)
    {

        DataClassesDataContext dc = new DataClassesDataContext();
        var data = (from t in dc.userdetails select t).ToList();

        if (SalesmanPicture.HasFile == true)
        {
            string fname = SalesmanPicture.FileName;
            string str = Server.MapPath("Street Tadka_images/");
            SalesmanPicture.SaveAs(str + "//" + fname);
            bool gnd = true;
            if (Male.Checked == true)
            {
                gnd = true;
            }
            else
            {
                gnd = false;
            }

            dc.userdetailsinsert(txtfname.Text, txtmname.Text, txtlname.Text,gnd,txtdob.Text,txtemail.Text,txtphone.Text,2,fname,txtaddress.Text,txtpincode.Text,txtusername.Text,txtpassword.Text);
            var data1 =(from t in dc.userdetails select t).ToList();
            int id = data1.Count-1; 
            dc.salesmaninsert(data1[id].u_id, System.DateTime.Today, int.Parse(drpArea.SelectedValue));
            Response.Redirect("Thanks.aspx");
        }
    }
}