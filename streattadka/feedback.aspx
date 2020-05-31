<%@ Page Title="" Language="C#" MasterPageFile="~/mainMasterPage.master" AutoEventWireup="true" CodeFile="feedback.aspx.cs" Inherits="feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="page-header">
							<h1>
								FeedBack
								<small>
									<i class="icon-double-angle-right"> Send Feedback</i>
							
								</small>
							</h1>
						</div>
    <div class="portlet-body">
        <div class="form-horizontal">
            Tell us what you love about the Web-site, or what we could be doing better.
            <br /><br />
            <asp:TextBox ID="TextBox1" TextMode="MultiLine" class="col-xs-10 col-sm-5" runat="server"></asp:TextBox>
            
            <br /> <br /><br /><br />

            <div class="col-lf-offset-3 col-lf-9">
    <asp:button class="btn btn-info" runat="server" text="Send" OnClick="Unnamed1_Click"   />
        </div>
            
        </div>
        </div>
        
</asp:Content>

