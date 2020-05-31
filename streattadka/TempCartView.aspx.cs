using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class TempCartView : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataClassesDataContext dc = new DataClassesDataContext();
        var data = (from t in dc.Tempcarts  select t).ToList();
        int a =1;
        int total = 0;
        
        
        string str = "<table class='table table-striped table-bordered table-hover'><tr><th>Product Name</th><th>Product Price</th><th>Quantity</th><th>Product Image</th><th>Total</th><th>Delete</th></tr>";
        foreach (var x in data)
        {

            total += (int.Parse (x.Quantity.ToString())  * int.Parse( x.Prize.ToString()));
            str += "<tr><td>" + x.Pname + "</td><td>" + x.Prize + "</td><td>" + x.Quantity + "</td><td><img src='Street Tadka_images/" + x.Pimg + "' width=25% /></td><td>" + x.Prize * x.Quantity + "</td><td><a href='TempDelete.aspx?Id=" + x.Tid + "'>Delete</a></td></tr>";
               
        }

        str += "</table><br>Total = " +  total ;
        divData.InnerHtml = str;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        DataClassesDataContext dc = new DataClassesDataContext();
        int uid = int.Parse(Session["UId"].ToString());
        
        dc.ordersss(System.DateTime.Now, uid);

        //Select max(Oid) from ordersss
        var dataOid = dc.ordersses.OrderByDescending(x=>x.or_id).FirstOrDefault();
        int oid = dataOid.or_id;

        var tdata = (from t in dc.Tempcarts where t.Uid == uid select t).ToList();

        foreach(var x in tdata)
        {
            //int pid = int.Parse(x.Pid.ToString());
            //int qty = int.Parse(x.Quantity.ToString());
            
            //int stid = int.Parse(Session["stId"].ToString());
            //String stname = Session["stName"].ToString();

            //var data = (from t in dc.products where t.p_id == pid select t).FirstOrDefault();
            //string pname = data.pname;

            //var data2 = (from t in dc.stallproducts where t.p_id == pid && t.st_id == stid select t).FirstOrDefault();
            //int price = int.Parse(data2.price.ToString());
            //String pimg = data.pimg;

            dc.orderdetail(oid, x.Pid, x.Pname, x.Prize, x.Stallid, x.Stallname, x.Quantity, x.PQ, x.Sid, x.Uid, x.Pimg);
        }
        var data = (from t in dc.Tempcarts select t).ToList();
        int total = 0;
        foreach (var x in data)
        {

            total += (int.Parse(x.Quantity.ToString()) * int.Parse(x.Prize.ToString()));
        }
            var bal = (from t in dc.Balances where t.Mid == uid select t).FirstOrDefault();
        int balance = int.Parse(bal.Amount.ToString());
        if (balance < total)
        {
            Response.Redirect("Recharge.aspx");
        }
        else
        {
            balance = balance - total;
            dc.UpdateBalance(1, uid, System.DateTime.Now, balance, uid);

            dc.tempCartDelete(uid);
        }
        Response.Redirect("ThankYou.aspx");
    }
}