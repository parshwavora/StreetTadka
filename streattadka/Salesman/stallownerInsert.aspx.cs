using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Salesman_stallownerInsert : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataClassesDataContext dc = new DataClassesDataContext();
        var data = (from t in dc.areas select t).ToList();

        DropDownList1.DataSource = data;
        DropDownList1.DataTextField = "areaname";
        DropDownList1.DataValueField = "area_id";

        DropDownList1.DataBind();
    }

    protected void btnInsert_Click(object sender, EventArgs e)
    {
        DataClassesDataContext dc = new DataClassesDataContext();
        var data = (from t in dc.stallowners select t).ToList();
        int uid = int.Parse(Session["UId"].ToString());
        int aid = int.Parse(DropDownList1.SelectedItem.Value);
        if (StallPicture.HasFile == true)
        {
            string fname = StallPicture.FileName;
            string str = Server.MapPath("~/Street Tadka_images/");
            StallPicture.SaveAs(str + "//" + fname);
            dc.Stallinsert(txtstallname.Text, fname, DateTime.Parse(txtop.Text), DateTime.Parse(txtct.Text), System.DateTime.Today, uid,aid,uid);
           Response.Redirect("stallownerInsert.aspx");
        }
    }
}