<%@ Page Title="" Language="C#" MasterPageFile="~/mainMasterPage.master" AutoEventWireup="true" CodeFile="Recharge.aspx.cs" Inherits="Recharge" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <div class="page-header">
							<h1>
								Add Balance
								<small>
									<i class="icon-double-angle-right"></i>
									
								</small>
							</h1>
						</div>
     <div class="portlet-body">
        <div class="form-horizontal">
            <asp:DropDownList ID="DropDownList1" class="col-sm-3 control-label no-padding-right" runat="server"></asp:DropDownList>
            <br /><br /><br />
            
            <div class="col-md-offset-3 col-md-9">
    <asp:button class="btn btn-info" runat="server" text="Process" OnClick="Unnamed14_Click"   />
        </div>

            </div>
         </div>
</asp:Content>

