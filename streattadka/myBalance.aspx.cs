using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class myBalance : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataClassesDataContext dc = new DataClassesDataContext();
        int uid = int.Parse(Session["UId"].ToString());
        var data = (from t in dc.Balances where t.Mid == uid select t).FirstOrDefault();
        var bal = data.Amount;
        if (bal == null)
        {
            Label1.Text = "You need to recharge";
        }
        else
        {
            Label1.Text = "Total";
            Label2.Text = "available";
            Label3.Text = "balance";
            Label4.Text = "to";
            Label5.Text = "pay";

            Label6.Text= bal+"";
        }

    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Recharge.aspx");
    }
}