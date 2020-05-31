using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Salesman_StallOrders : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataClassesDataContext dc = new DataClassesDataContext();
        int id = int.Parse(Request.QueryString["Id"].ToString());

        var data = (from t in dc.orderdetails where t.Stallid == id select t).ToList();

        int a = 1;
        int total = 0;


        string str = "<table class='table table-striped table-bordered table-hover'><tr><th>User Name</th><th>Product Name</th><th>Product Price</th><th>Stall Name</th><th>Quantity</th><th>Total</th><th>Product Image</th></tr>";
        foreach (var x in data)
        {
            var datao = (from t in dc.ordersses join m in dc.userdetails on t.u_id equals m.u_id where t.or_id == x.or_id select new { t.or_id, m.u_username, m.u_photo }).ToList();
            var name = datao[0].u_username;
            total += (int.Parse(x.quantity.ToString()) * int.Parse(x.prize.ToString()));
            str += "<tr><td>" + name + "</td><td>" + x.pname + "</td><td>" + x.prize + "</td><td>" + x.stallname + "</td><td>" + x.quantity + "</td><td>" + x.prize * x.quantity + "</td><td><img src='Street Tadka_images/" + x.pimg + "' width=25% /></td></tr>";

        }

        str += "</table><br>Total = " + total;
        divData.InnerHtml = str;
    }
}