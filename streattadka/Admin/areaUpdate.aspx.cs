using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_areaUpdate : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DataClassesDataContext dc = new DataClassesDataContext();
            
            int id = int.Parse(Request.QueryString["Id"].ToString());

            var data = (from t in dc.areas where t.area_id == id select t).FirstOrDefault();

            txtAreaName.Text = data.areaname;
            txtPincode.Text = data.pincode.ToString();
        }
    }

    protected void btnInsert_Click(object sender, EventArgs e)
    {
        DataClassesDataContext dc = new DataClassesDataContext();
        
        int id = int.Parse(Request.QueryString["Id"].ToString());

        var data = (from t in dc.areas where t.area_id == id select t).FirstOrDefault();
            bool chk = true;

            if (chkIsDisplay.Checked == true)
            {
                chk = true;
            }
            else
            {
                chk = false;
            }

            dc.aupdate(id, txtAreaName.Text,chk,int.Parse(txtPincode.Text));

            Response.Redirect("areaDisplay.aspx");        
    }
}
