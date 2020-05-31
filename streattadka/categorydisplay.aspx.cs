using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class categorydisplay : System.Web.UI.Page
{
   
        protected void Page_Load(object sender, EventArgs e)
        {
            DataClassesDataContext dc = new DataClassesDataContext();
            var data = (from t in dc.categories select t).ToList();

            string str = "<table class='table table-striped table-bordered table-hover'>";
            int y = 1;
            foreach (var x in data)
            {
            if (y == 1)
            {
                str += "<tr>";
            }
            y++;
                str += "<td><img src='Salesman/Street Tadka_images/" + x.catimage + "' width='100px' height='100px' /> <br> <a href='Stall.aspx?Id=" + x.cat_id +"'>"+ x.cname + "</a></td>";

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