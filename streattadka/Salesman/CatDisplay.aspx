<%@ Page Title="" Language="C#" MasterPageFile="~/Salesman/Salesmanmasterpage.master" AutoEventWireup="true" CodeFile="CatDisplay.aspx.cs" Inherits="Admin_CatDisplay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="page-header">
	    <h1>
		    Categories
		    <small>
			    <i class="icon-double-angle-right"></i>
			    View here
		    </small>
	    </h1>
    </div>
    <div id="divData" runat="server"></div>
    <a href="CatInsert.aspx">Category Insert</a>
</asp:Content>

