using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Salesman_salesmanhomepage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataClassesDataContext dc = new DataClassesDataContext();

        int uid = int.Parse(Session["UId"].ToString());

        var stall = (from t in dc.stallowners where t.sm_id == uid select t).ToList();
        var stallowner = (from t in dc.stallowners where t.sm_id == uid  select t).ToList();
        var area = (from t in dc.areas  select t).ToList();
        
        Label1.Text = "Stall = " + stall.Count;
        Label2.Text = "Stall-Owner = " + stallowner.Count;
        Label3.Text = "Area = " + area.Count;
        
    }
}