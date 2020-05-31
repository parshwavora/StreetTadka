<%@ Page Title="" Language="C#" MasterPageFile="~/mainMasterPage.master" AutoEventWireup="true" CodeFile="ThankYou.aspx.cs" Inherits="ThankYou" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="page-header">
							<h1>
							Thank You
								<small>
									<i class="icon-double-angle-right"></i>
									Thank you for shopping with us  
								</small>
							</h1>
						</div>
     <div class="portlet-body">
        <div class="form-horizontal">

    <asp:label id="Label1"  Font-Size="X-Large" class="col-sm-3 control-label no-padding-right" runat="server" CssClass="auto-style1" ></asp:label>
    <asp:label id="Label2"  Font-Size="X-Large" class="col-sm-3 control-label no-padding-right" runat="server" CssClass="auto-style1" ></asp:label>
    <asp:label id="Label3"  Font-Size="X-Large" class="col-sm-3 control-label no-padding-right" runat="server" CssClass="auto-style1" ></asp:label>
    <asp:label id="Label4"  Font-Size="X-Large" class="col-sm-3 control-label no-padding-right" runat="server" CssClass="auto-style1" ></asp:label>
    <asp:label id="Label5"  Font-Size="X-Large" class="col-sm-3 control-label no-padding-right" runat="server" CssClass="auto-style1" ></asp:label>
            <br />
            
    <asp:label id="Label7" Font-Bold="true" Font-Size="X-Large" class="col-sm-1 control-label no-padding-right" runat="server" >
    <i class="icon-rupee"></i></asp:label>
    <asp:label id="Label6" Font-Bold="true" Font-Size="X-Large" class="col-sm-1 control-label pricing-box" runat="server" ></asp:label>
   <br /><br /><br /><br /><br /><br />
   </div></div>
</asp:Content>

