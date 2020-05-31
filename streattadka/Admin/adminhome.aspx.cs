using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class adminhome : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
        DataClassesDataContext dc = new DataClassesDataContext();

        var stall = (from t in dc.stallowners select t).ToList();
        var stallowner = (from t in dc.userdetails where t.ut_id==3 select t).ToList();
        var salesmen = (from t in dc.userdetails where t.ut_id ==2 select t).ToList();
        var user = (from t in dc.userdetails where t.ut_id==4 select t).ToList();
        Label1.Text = "Stall = " + stall.Count;
        Label2.Text = "Stall-Owner = " + stallowner.Count;
        Label3.Text = "Salesmen = " + salesmen.Count;
        Label4.Text = "Customer = " + user.Count;


    }

}
