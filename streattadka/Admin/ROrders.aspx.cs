using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_ROrders : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
        DataClassesDataContext dc = new DataClassesDataContext();
        var data = (from t in dc.orderdetails  select t).ToList();
        string str = "<table border=1 class='table table-striped table-bordered table-hover'><tr><th>Order Id</th><th>User Id</th><th>Product Name</th><th>Quantity</th><th>Stall Name</th><th>Price</th><th>Total</th></tr>";
        int c = 0;
        foreach (var x in data)
        {
            str += "<tr><td>" + x.or_id + "</td><td>" + x.uid + "</td><td>" + x.pname + "</td><td>" + x.quantity + "</td><td>" + x.stallname + "</td><td>" + x.prize + "</td><td>" + x.pq + "</td></tr>";
            c = c + 1;
        }

        str += "</table>";
        Label1.Text = "Total = " + c;
        divData.InnerHtml = str;
    }
}