<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminmaster.master" AutoEventWireup="true" CodeFile="Orders.aspx.cs" Inherits="Admin_Orders" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="page-header">
	    <h1>
		    All Orders 
		    <small>
			    <i class="icon-double-angle-right"></i>
			    View here
		    </small>
	    </h1>
    </div>
   <%--  <%--<div class="portlet-body">--%><%--</div>--%>
        <div class="form-horizontal">
            <asp:label class="col-sm-3 control-label no-padding-right"  runat="server" text="From"></asp:label>
    <asp:textbox id="from" class="col-xs-10 col-sm-5" type="date" runat="server"></asp:textbox>
    <br /><br />
            <asp:label class="col-sm-3 control-label no-padding-right"  runat="server" text="To"></asp:label>
    <asp:textbox id="to" class="col-xs-10 col-sm-5" type="date" runat="server"></asp:textbox>
    <br /><br />
             <div class="col-md-offset-3 col-md-9">
    <asp:button class="btn btn-info" runat="server" text="Search" OnClick="Unnamed3_Click"    />
        </div>
        </div>
          
    <br /><br />
    <br />
    <div id="divData" runat="server"></div>
    
    

    
</asp:Content>

