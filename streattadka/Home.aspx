<%@ Page Title="" Language="C#" MasterPageFile="~/mainMasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="page-header">
							<h1>
								Home
								<small>
									<i class="icon-double-angle-right"></i>
									
								</small>
							</h1>
						</div>
    <table class="nav-justified">
                <tr>
                    <td>
                        <img src="../Admin/icons/Stalls.png" /><br /><br />
                        <asp:Label ID="Label1" CssClass="col-sm-3 control-label no-padding-right" Font-Size="Larger" runat="server" ></asp:Label>
                        </td>
                    <td>
                        <img src="Admin/icons/Area.png" /><br /><br />
                        <asp:Label ID="Label2" CssClass="col-sm-3 control-label no-padding-right" Font-Size="Larger" runat="server" ></asp:Label>
                    </td>
                    
                </tr>
        <tr>
            <td>&nbsp</td>
            <td>&nbsp</td>
        </tr>
                <tr>
                    <td>
                        <img src="Admin/icons/Catogories.png" /><br /><br />
                        <asp:Label ID="Label3" runat="server" CssClass="col-sm-3 control-label no-padding-right" Font-Size="Larger" ></asp:Label>
                    </td>
                    <td>
                        <img src="Admin/icons/Wallet.png" /><br /><br />
                        <asp:Label ID="Label4" runat="server" CssClass="col-sm-3 control-label no-padding-right" Font-Size="Larger" ></asp:Label>
                    </td>
                    
                </tr>
            </table>

</asp:Content>

