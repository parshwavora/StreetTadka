<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminmaster.master" AutoEventWireup="true" CodeFile="productdisplay.aspx.cs" Inherits="Admin_productdisplay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
     

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="page-header">
	    <h1>
		    Product Display
		    <small>
			    <i class="icon-double-angle-right"></i>
			    View here
		    </small>
	    </h1>
    </div>

    <div id="divData" runat="server"></div>
    
</asp:Content>

