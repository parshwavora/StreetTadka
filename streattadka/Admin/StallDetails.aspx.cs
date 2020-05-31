using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_StallDetails : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataClassesDataContext dc = new DataClassesDataContext();

        int id = int.Parse(Request.QueryString["Id"].ToString());

        var data = (from t in dc.stallowners join m in dc.areas on t.area_id equals m.area_id where t.st_id == id select new { t.st_name, t.st_pic, m.areaname, t.st_id }).ToList();
        // var data = (from t in dc.stallowners where t.st_id ==id select t).ToList();

        Session["stId"] = id;
        Session["stName"] = data[0].st_name;

        string str = "<table class='table table-striped table-bordered table-hover'>";
        int y = 1;
        foreach (var x in data)
        {
            divtitle.InnerHtml = x.st_name + " - " + x.areaname;
            if (y == 1)
            {
                str += "<tr>";
            }
            y++;
            str += "<td><img src='Street Tadka_images/" + x.st_pic + "' width='100px' height='100px' /> <br> <a href='Stall.aspx?Id=" + x.st_id + "'>" + x.st_name + "</a></td>";

            if (y == 4)
            {
                str += "</tr>";
                y = 1;
            }

        }

        str += "</table>";

        var data2 = (from t in dc.stallproducts join m in dc.products on t.p_id equals m.p_id where t.st_id == id select new { t.p_id, t.sp_id, t.st_id, t.pimage, t.price, m.pname }).ToList();

        string str2 = "<table class='table table-striped table-bordered table-hover'>";
        int z = 1;
        foreach (var x in data2)
        {
            if (z == 1)
            {
                str2 += "<tr>";
            }
            z++;
            str2 += "<td><img src='Street Tadka_images/" + x.pimage + "' width='100px' height='100px' /> <br> " + x.price + "Rs. == " + x.pname + "</td>";

            if (z == 4)
            {
                str2 += "</tr>";
                z = 1;
            }

        }
        str2 += "</table>";


        divData.InnerHtml = str;
        divData2.InnerHtml = str2;
    }
}