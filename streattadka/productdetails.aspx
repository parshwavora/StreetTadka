<%@ Page Title="" Language="C#" MasterPageFile="~/mainMasterPage.master" AutoEventWireup="true" CodeFile="productdetails.aspx.cs" Inherits="productdetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <div class="page-header">
    						<h1>
								Product Details
								<small>
									<i class="icon-double-angle-right"></i>
									overview &amp; Lists
								</small>
							</h1>
						</div>
    <div class="alert alert-block alert-success" id="divtitle" runat="server">
									<button type="button" class="close" data-dismiss="alert">
										<i class="icon-remove"></i>
									</button>

									<i class="icon-ok green"></i>

									Welcome to
									<strong class="green">
										Ace
										<small>(v1.2)</small>
									</strong>
									,
	the lightweight, feature-rich and easy to use admin template.
								</div>

      <div id="div1" runat="server"></div>


    <h4 class="lighter">
													<i class="icon-star orange"></i>
													Products
												</h4>


      <div id="divData2" runat="server"></div>
    Quantity <asp:DropDownList ID="DropDownList1" runat="server">
          <asp:ListItem>1</asp:ListItem>
          <asp:ListItem>2</asp:ListItem>
          <asp:ListItem>3</asp:ListItem>
          <asp:ListItem>4</asp:ListItem>
          <asp:ListItem>5</asp:ListItem>
      </asp:DropDownList>

    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Admin/Street Tadka_images/Asset_21-128.png" OnClick="ImageButton1_Click" />
</asp:Content>

