﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RSalesmen.aspx.cs" Inherits="Admin_RSalesmen" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <div class="page-header">
	    <h1>
		    Total Salesmen
		    <small>
			    <i class="icon-double-angle-right">
                 </i>
                <br />
		    </small>
	    </h1>
        
    </div>
<br /><br />
         <div id="divData" runat="server"></div>
        <br />
        <asp:Label ID="Label1" runat="server" ></asp:Label>
    </div>
    </form>
</body>
</html>
