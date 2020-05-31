using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Stall_Owner_SOHome : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataClassesDataContext dc = new DataClassesDataContext();

        int uid = int.Parse(Session["UId"].ToString());

        var category = (from t in dc.categories select t).ToList();
        var stall = (from t in dc.stallowners where t.u_id==uid select t).ToList();
        var sp =stall[0].st_id;
        var product = (from t in dc.stallproducts where t.st_id == sp select t).ToList();
        var orders = (from t in dc.orderdetails where t.Stallid==sp select t).ToList();

        Label1.Text = "Category = " + category.Count;
        Label2.Text = "Product = " + product.Count;
        Label3.Text = "Orders = " + orders.Count;
    }
}