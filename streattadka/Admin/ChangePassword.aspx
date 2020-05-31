<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminmaster.master" AutoEventWireup="true" CodeFile="ChangePassword.aspx.cs" Inherits="Admin_ChangePassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="page-header">
							<h1>
								Change Password
								<small>
									<i class="icon-double-angle-right">Change your password here</i>
							
								</small>
							</h1>
						</div>
    <div class="portlet-body">
        <div class="form-horizontal">

    <asp:label class="col-sm-3 control-label no-padding-right" runat="server" text="Old Password"></asp:label>
    <asp:textbox id="txtOld" class="col-xs-10 col-sm-5" TextMode="Password" runat="server"></asp:textbox>
            
    <br /> <br />

            <asp:label class="col-sm-3 control-label no-padding-right" runat="server" text="New Password"></asp:label>
    <asp:textbox id="txtNew" class="col-xs-10 col-sm-5" TextMode="Password" runat="server"></asp:textbox>
    <br /> <br />

            <asp:label class="col-sm-3 control-label no-padding-right" runat="server" text="Confirm New Password"></asp:label>
    <asp:textbox id="txtConfirm" class="col-xs-10 col-sm-5" TextMode="Password" runat="server"></asp:textbox>
    <br /> <br />

            <div class="col-md-offset-3 col-md-9">
    <asp:button class="btn btn-info" runat="server" text="Change Password" OnClick="Unnamed14_Click"   />
        </div>

    

            </div>
        </div>
</asp:Content>

