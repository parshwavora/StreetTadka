<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminmaster.master" AutoEventWireup="true" CodeFile="StallDetails.aspx.cs" Inherits="Admin_StallDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="page-header">
							<h1>
								Stall Details
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

      <div id="divData" runat="server"></div>


    <h4 class="lighter">
													<i class="icon-star orange"></i>
													Products
												</h4>


      <div id="divData2" runat="server"></div>
</asp:Content>

