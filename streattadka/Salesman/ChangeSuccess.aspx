<%@ Page Title="" Language="C#" MasterPageFile="~/Salesman/Salesmanmasterpage.master" AutoEventWireup="true" CodeFile="ChangeSuccess.aspx.cs" Inherits="Salesman_ChangeSuccess" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="page-header">
							<h1>
								Password Changed
								<small>
									<i class="icon-double-angle-right">Change your password here</i>
							
								</small>
							</h1>
						</div>
    <div class="portlet-body">
        <div class="form-horizontal">
    Dear <asp:Label ID="Label1" runat="server"></asp:Label> , your password has been changed successfully.
    </div></div>
</asp:Content>

