using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_CatUpdate : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnInsert_Click(object sender, EventArgs e)
    {
        DataClassesDataContext dc = new DataClassesDataContext();
       
        int id = int.Parse(Request.QueryString["Id"].ToString());
        var data = (from t in dc.categories where t.cat_id == id select t).FirstOrDefault();

        if (FileUpload1.HasFile == true)
        {
            string fname = FileUpload1.FileName;
            string str = Server.MapPath("Street Tadka_images/");
            FileUpload1.SaveAs(str + "//" + fname);
            bool chk = true;

            if (chkIsDisplay.Checked == true)
            {
                chk = true;
            }
            else
            {
                chk = false;
            }

            dc.categoryupdate(id,txtCatName.Text, fname, chk);

            Response.Redirect("CatDisplay.aspx");
        }
    }

}