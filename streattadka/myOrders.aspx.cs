using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class myOrders : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataClassesDataContext dc = new DataClassesDataContext();
        int uid = int.Parse(Session["UId"].ToString());

        
        var dataOid = dc.ordersses.OrderByDescending(x => x.or_id).FirstOrDefault();
        int oid = dataOid.or_id;

        var data = (from t in dc.ordersses where t.u_id==uid select t ).ToList();
        int a = 1;
        int total = 0;


        string str = "<table class='table table-striped table-bordered table-hover'><tr><th>Order Id</th><th>Date of Order</th><th>View</th></tr>";
        foreach (var x in data)
        {

            str += "<tr><td>" + x.or_id + "</td><td>" + x.date_of_order + "</td><td><a href='myOrderDetails.aspx?Id=" + x.or_id + "'>View</a></td></tr>";
            total = total + 1;
        }

        str += "</table><br>Total = " + total;
        divData.InnerHtml = str;

    }

}
