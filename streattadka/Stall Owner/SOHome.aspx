<%@ Page Title="" Language="C#" EnableEventValidation="false" MasterPageFile="~/Stall Owner/StallOwnerMasterPage.master" AutoEventWireup="true" CodeFile="SOHome.aspx.cs" Inherits="Stall_Owner_SOHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="page-header">
							<h1>
								StallOwner Home
								<small>
									<i class="icon-double-angle-right"></i>
									
								</small>
							</h1>
						</div>
     <table class="nav-justified">
                <tr>
                    <td>
                        <img src="../Admin/icons/Catogories.png" /><br /><br />
                        <asp:Label ID="Label1" CssClass="col-sm-3 control-label no-padding-right" Font-Size="Larger" runat="server" ></asp:Label>
                        </td>
                    <td>
                        <img src="../Admin/icons/Products.png" /><br /><br />
                        <asp:Label ID="Label2" runat="server" CssClass="col-sm-3 control-label no-padding-right" Font-Size="Larger" ></asp:Label>   
                    </td>
                    
                </tr>
        <tr>
            <td>&nbsp</td>
            <td>&nbsp</td>
        </tr>
                <tr>
                    <td colspan="2" >
                        <img src="../Admin/icons/Orders.png" /><br /><br />
                        <asp:Label ID="Label3" runat="server" CssClass="col-sm-3 control-label no-padding-right" Font-Size="Larger" ></asp:Label>
                    </td> 
                </tr>
            </table>
</asp:Content>

