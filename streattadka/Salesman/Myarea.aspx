﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Salesman/Salesmanmasterpage.master" AutoEventWireup="true" CodeFile="Myarea.aspx.cs" Inherits="Salesman_Myarea" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="page-header">
	    <h1>
		    Stalls
		    <small>
			    <i class="icon-double-angle-right"></i>
			    View Details
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

