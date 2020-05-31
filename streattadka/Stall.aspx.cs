using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Stall : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataClassesDataContext dc = new DataClassesDataContext();

        int id = int.Parse(Request.QueryString["Id"].ToString());

        var data = (from t in dc.stallowners join m in dc.areas  on t.area_id equals m.area_id  where t.cat_id == id  select new { t.st_name,t.st_pic,m.areaname,t.st_id     }).ToList();

        string str = "<table class='table table-striped table-bordered table-hover'>";
        int y = 1;
        foreach (var x in data)
        {
            if (y == 1)
            {
                str += "<tr>";
            }
            y++;
            str += "<td><img src='Street Tadka_images/" + x.st_pic + "' width='100px' height='100px' /> <br> <a href = 'StallDetails.aspx?Id=" + x.st_id  +"' > "+ x.st_name  + " </ a > <br> " + x.areaname   +"</td>";

            if (y == 4)
            {
                str += "</tr>";
                y = 1;
            }

        }

        str += "</table>";
        divData.InnerHtml = str;
    }

}