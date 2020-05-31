using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class productdetails : System.Web.UI.Page
{
   
        protected void Page_Load(object sender, EventArgs e)
        {
            DataClassesDataContext dc = new DataClassesDataContext();

            int pid = int.Parse(Request.QueryString["PId"].ToString());

        int stid = int.Parse(Session["stId"].ToString()); 

        var data1 = (from t in dc.stallowners join m in dc.areas on t.area_id equals m.area_id where t.st_id == stid  select new { t.st_name, t.st_pic, m.areaname, t.st_id }).ToList();
        // var data = (from t in dc.stallowners where t.st_id ==id select t).ToList();

        string str1 = "<table class='table table-striped table-bordered table-hover'>";
        int y = 1;
        foreach (var x in data1)
        {
            divtitle.InnerHtml = x.st_name + " - " + x.areaname;
            if (y == 1)
            {
                str1 += "<tr>";
            }
            y++;
            str1 += "<td><img src='Admin/Street Tadka_images/" + x.st_pic + "' width='100px' height='100px' /> <br> <a href='Stall.aspx?Id=" + x.st_id + "'>" + x.st_name + "</a></td>";

            if (y == 4)
            {
                str1 += "</tr>";
                y = 1;
            }

        }

        str1 += "</table>";


        var data = (from t in dc.stallproducts join  m in dc.products  on t.p_id equals m.p_id  where t.sp_id  == pid select new {t.pimage,t.price }).ToList();

            string str = "<table class='table table-striped table-bordered table-hover'>";
            y = 1;
            foreach (var x in data)
            {
                if (y == 1)
                {
                    str += "<tr>";
                }
                y++;
                str += "<td><img src='Admin/Street Tadka_images/" + x.pimage  + "' width='100px' height='100px' /> <br> <a href = 'StallDetails.aspx?Id=" + x.pimage + "' > " + x.price + " </ a ></td>";

                if (y == 4)
                {
                    str += "</tr>";
                    y = 1;
                }

            }

            str += "</table>";
            divData2.InnerHtml = str;
        }


    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {

        DataClassesDataContext dc = new DataClassesDataContext();

        int pid = int.Parse(Request.QueryString["PId"].ToString());
        int qty = int.Parse(DropDownList1.SelectedItem.Value);
        int uid = int.Parse(Session["UId"].ToString());
        int stid = int.Parse(Session["stId"].ToString());
        String stname = Session["stName"].ToString();
        Session["Qty"] = qty;

        var data = (from t in dc.products join m in dc.stallproducts on t.p_id equals m.p_id   where m.sp_id == pid select new { t.pname,t.pimg,m.price  }).FirstOrDefault();
        string pname = data.pname;

        var data2 = (from t in dc.stallproducts where t.p_id == pid && t.st_id == stid select t).FirstOrDefault();
        int price = int.Parse(data.price.ToString());
        String pimg = data.pimg;


        dc.tempinsert(pid, pname, price, stid, stname, qty, qty * price, Session.SessionID, uid, pimg);

        Response.Redirect("TempCartView.aspx");


    }
}