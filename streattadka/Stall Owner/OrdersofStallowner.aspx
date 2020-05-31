<%@ Page Title="" Language="C#" MasterPageFile="~/Stall Owner/StallOwnerMasterPage.master" AutoEventWireup="true" CodeFile="OrdersofStallowner.aspx.cs" Inherits="Stall_Owner_OrdersofStallowner" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <div class="page-header">
	    <h1>
		    My Orders
		    <small>
			    <i class="icon-double-angle-right"></i>
			    View here
		    </small>
	    </h1>
    </div>
    <style>

        .scr{
            overflow-y:scroll;
        }

    </style>
    
    <div id="divData" runat="server" class="scr">

    </div>

</asp:Content>

