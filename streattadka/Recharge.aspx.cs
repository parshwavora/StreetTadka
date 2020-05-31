using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Recharge : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataClassesDataContext dc = new DataClassesDataContext();
        var data = (from t in dc.PackageTypes select t).ToList();

        DropDownList1.DataSource = data;
        DropDownList1.DataTextField = "PtName";
        DropDownList1.DataValueField = "Amount";

        DropDownList1.DataBind();
    }

    protected void Unnamed14_Click(object sender, EventArgs e)
    {
        DataClassesDataContext dc = new DataClassesDataContext();
        int uid = int.Parse(Session["UId"].ToString());
        var amt = 0;
        int ptid = 0;
        if(DropDownList1.SelectedItem.Text == "Bronze")
        {
            ptid=1;
            amt = 500;
        }
        else if(DropDownList1.SelectedItem.Text == "Silver")
        {
            ptid = 2;
            amt = 1000;
        }
        else if (DropDownList1.SelectedItem.Text == "Gold")
        {
            ptid = 3;
            amt = 1500;
        }
        else 
        {
            ptid = 4;
            amt = 2000;
        }

        int s = 0;
        var data = (from t in dc.Balances where t.Mid==uid select t ).ToList();
        foreach (var x in data)
        {
            s = int.Parse(x.Amount.ToString());
        }

        int balance = s + amt;
        

        dc.UpdateBalance(ptid, uid, System.DateTime.Now, balance,uid);
        Response.Redirect("myBalance.aspx");

    }
}