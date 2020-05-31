using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Orders : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataClassesDataContext dc = new DataClassesDataContext();

        //int uid = int.Parse(Session["UId"].ToString());
        //var data1 = (from t in dc.stallowners where t.u_id == uid select t).ToList();
        //int stid = data1[0].st_id;

        //  var dataOid = dc.ordersses.OrderByDescending(x => x.or_id).FirstOrDefault();
        //int oid = dataOid.or_id;

        var data = (from t in dc.orderdetails select t).ToList();

        int a = 1;
        int total = 0;


        string str = "<table class='table table-striped table-bordered table-hover'><tr><th>User Name</th><th>Product Name</th><th>Product Price</th><th>Date of Order</th><th>Stall Name</th><th>Quantity</th><th>Total</th><th>Product Image</th></tr>";
        foreach (var x in data)
        { 
            var datao = (from t in dc.ordersses join m in dc.userdetails on t.u_id equals m.u_id where t.or_id == x.or_id select new { t.date_of_order,t.or_id, m.u_username, m.u_photo }).ToList();
            var name = datao[0].u_username;
            var date = datao[0].date_of_order;
            total += (int.Parse(x.quantity.ToString()) * int.Parse(x.prize.ToString()));
            str += "<tr><td>" + name + "</td><td>" + x.pname + "</td><td>" + x.prize + "</td><td>"+ date + "</td><td>" + x.stallname + "</td><td>" + x.quantity + "</td><td>" + x.prize * x.quantity + "</td><td><img src='Street Tadka_images/" + x.pimg + "' width=25% /></td></tr>";

        }

        
        divData.InnerHtml = str;

    }

    protected void Unnamed3_Click(object sender, EventArgs e)
    {
        DataClassesDataContext dc = new DataClassesDataContext();
        var data = (from t in dc.orderdetails select t).ToList();

        int a = 1;
        int total = 0;


        string str = "<table class='table table-striped table-bordered table-hover'><tr><th>User Name</th><th>Product Name</th><th>Product Price</th><th>Date of Order</th><th>Stall Name</th><th>Quantity</th><th>Total</th><th>Product Image</th></tr>";
        foreach (var x in data)
        {
            var datao = (from t in dc.ordersses join m in dc.userdetails on t.u_id equals m.u_id where t.or_id == x.or_id  select new { t.date_of_order, t.or_id, m.u_username, m.u_photo }).ToList();
            var name = datao[0].u_username;
            var date = datao[0].date_of_order;
            total += (int.Parse(x.quantity.ToString()) * int.Parse(x.prize.ToString()));
            str += "<tr><td>" + name + "</td><td>" + x.pname + "</td><td>" + x.prize + "</td><td>" + date + "</td><td>" + x.stallname + "</td><td>" + x.quantity + "</td><td>" + x.prize * x.quantity + "</td><td><img src='Street Tadka_images/" + x.pimg + "' width=25% /></td></tr>";

        }


        divData.InnerHtml = str;
    }
}