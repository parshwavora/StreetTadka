using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_areaInsert : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnInsert_Click(object sender, EventArgs e)
    {
        DataClassesDataContext dc = new DataClassesDataContext();
        
        bool chk = true;
            if (chkIsDisplay.Checked == true)
            {
                chk = true;
            }
            else
            {
                chk = false;
            }

        dc.ainsert(txtAreaName.Text,chk,int.Parse(txtPincode.Text));

            Response.Redirect("areaDisplay.aspx");
        
    }
}
