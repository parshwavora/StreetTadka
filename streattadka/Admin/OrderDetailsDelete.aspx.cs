﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class OrderDetailsDelete : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataClassesDataContext dc = new DataClassesDataContext();

        int id = int.Parse(Request.QueryString["Id"].ToString());
        dc.OrderDetailDelete(id);
        Response.Redirect("OrderDetails.aspx");
    }
}