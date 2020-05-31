using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataClassesDataContext dc = new DataClassesDataContext();

        var stall = (from t in dc.stallowners select t).ToList();
        var area = (from t in dc.areas  select t).ToList();
        var category = (from t in dc.categories select t).ToList();
        
        Label1.Text = "Stall = " + stall.Count;
        Label2.Text = "Area = " + area.Count;
        Label3.Text = "Category = " + category.Count;
        Label4.Text = "Balance =";
        
    }
}