using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_productinsert : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            DataClassesDataContext dc = new DataClassesDataContext();
            var data = (from t in dc.categories select t).ToList();
            drpProduct.DataSource = data;
            drpProduct.DataTextField = "cname";
            drpProduct.DataValueField = "cat_id";
            drpProduct.DataBind();

        }
    }

    protected void btnInsert_Click(object sender, EventArgs e)
    {
        DataClassesDataContext dc = new DataClassesDataContext();

        if (FileUpload1.HasFile == true)
        {
            string fname = FileUpload1.FileName;
            string str = Server.MapPath("Street Tadka_images/");
            FileUpload1.SaveAs(str + "//" + fname);

            dc.productinsert(txtCatName.Text, fname, int.Parse(drpProduct.SelectedValue));
        }
    }
}