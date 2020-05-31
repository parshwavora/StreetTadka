<%@ Page Title="" Language="C#" MasterPageFile="~/mainMasterPage.master" AutoEventWireup="true" CodeFile="myBalance.aspx.cs" Inherits="myBalance" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            left: 0px;
            top: 15px;
            width: 178px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <div class="page-header">
							<h1>
								Wallet Balance
								<small>
									<i class="icon-double-angle-right"></i>
									
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
            
            <asp:Button ID="Button1" class="btn btn-info" runat="server" Text="Add Balance" OnClick="Button1_Click" />
            
        </div>
        <//div>
</asp:Content>

