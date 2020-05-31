using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Salesman_Myarea : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataClassesDataContext dc = new DataClassesDataContext();
        int uid = int.Parse(Session["UId"].ToString());
        var data = (from t in dc.stallowners where t.sm_id == uid select t).ToList();

        string str = "<table class='table table-striped table-bordered table-hover'>";
        int y = 1;
        foreach (var x in data)
        {
            if (y == 1)
            {
                str += "<tr>";
            }
            y++;
            str += "<td><img src='Street Tadka_images/" + x.st_pic + "' width='100px' height='100px' /> <br> <a href='StallOrders.aspx?Id=" + x.st_id + "'>" + x.st_name + "</a></td>";

            if (y == 4)
            {
                str += "</tr>";
                y = 1;
            }

        }
        divData.InnerHtml = str;
    }
}