using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SalesmenRegister : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataClassesDataContext dc = new DataClassesDataContext();
        var data = (from t in dc.areas select t).ToList();

        DropDownList1.DataSource = data;
        DropDownList1.DataTextField = "areaname";
        DropDownList1.DataValueField = "area_id"; 

        DropDownList1.DataBind();  
        //d1.DataSource=data;
        //d1.
        //d1.dataBind();
    }

    protected void Unnamed14_Click(object sender, EventArgs e)
    { 
        DataClassesDataContext dc = new DataClassesDataContext();
        var data = (from t in dc.userdetails where t.u_username.Equals(txtUname.Text  )   select t).ToList();

        if (data.Count == 1)
        {

        }
        else
        {

            String gn = "";
            if (Male.Checked == true)
            {
                gn = "Male";
            }
            else
            {
                gn = "Female";
            }
            if (FileUpload1.HasFile == true)
            {
                string fname = FileUpload1.FileName;
                string str = Server.MapPath("img");
                FileUpload1.SaveAs(str + "\\" + fname);

                dc.userdetailsinsert(txtFname.Text, txtMname.Text, txtLname.Text, gn, DateTime.Parse(txtDoB.Text), txtEmail.Text, txtContact.Text, 2, fname, txtAddress.Text, txtPin.Text, txtUname.Text, txtPwd.Text, 1, System.DateTime.Now, 1, "yes");
                var smId = (from t in dc.userdetails where t.u_username.Equals(txtUname.Text) select t).ToList();
                int id = smId[0].u_id;
                int did = int.Parse(DropDownList1.SelectedItem.Value);

                dc.SalesmenArea(did, id);
                Response.Redirect("SalesmenRegister.aspx");
            }
            
        }
    }
}