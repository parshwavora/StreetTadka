using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_OrderDetails : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataClassesDataContext dc = new DataClassesDataContext();
        var data = (from t in dc.orderdetails select t).ToList();
        int a = 1;
        int total = 0;


        string str = "<table class='table table-striped table-bordered table-hover'><tr><th>Product Name</th><th>Product Price</th><th>Stall Name</th><th>Quantity</th><th>Total</th><th>Product Image</th><th>Delete</th></tr>";
        foreach (var x in data)
        {

            total += (int.Parse(x.quantity.ToString()) * int.Parse(x.prize.ToString()));
            str += "<tr><td>" + x.pname + "</td><td>" + x.prize + "</td><td>" + x.stallname + "</td><td>" + x.quantity + "</td><td>" + x.prize * x.quantity + "</td><td><img src='Street Tadka_images/" + x.pimg + "' width=25% /></td><td><a href='OrderDetailsDelete.aspx?Id=" + x.od_id + "'>Delete</a></td></tr>";

        }

        str += "</table><br>Total = " + total;
        divData.InnerHtml = str;

    }
    
}