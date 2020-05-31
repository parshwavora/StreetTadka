<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminmaster.master" AutoEventWireup="true" CodeFile="areaDisplay.aspx.cs" Inherits="Admin_areaDisplay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="page-header">
	    <h1>
		    Display Area
		    <small>
			    <i class="icon-double-angle-right"></i>
			    view here
		    </small>
	    </h1>
    </div>
<div id="divData" runat="server"></div>
    <a href="areaInsert.aspx">Area Insert</a>
</asp:Content>

