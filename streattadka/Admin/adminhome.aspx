<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminmaster.master" AutoEventWireup="true" CodeFile="adminhome.aspx.cs" Inherits="adminhome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="page-header">
	    <h1>
		    Admin Home
		    <small>
			    <i class="icon-double-angle-right"></i>
                <br />
			
		    </small>
	    </h1>
    </div>
    
     
        
        <div class="col-xs-12 col-sm-9">
    <table class="nav-justified">
                <tr>
                    <td>
                        <img src="icons/Stalls.png" /><br /><br />
                        <asp:Label ID="Label1" CssClass="col-sm-3 control-label no-padding-right" Font-Size="Larger" runat="server" ></asp:Label>
                        </td>
                    <td>
                        <img src="icons/Salesmen.png" /><br /><br />
                        <asp:Label ID="Label2" CssClass="col-sm-3 control-label no-padding-right" Font-Size="Larger" runat="server" ></asp:Label>
                    </td>
                    
                </tr>
        <tr>
            <td>&nbsp</td>
            <td>&nbsp</td>
        </tr>
                <tr>
                    <td>
                        <img src="icons/StallOwner.png" /><br /><br />
                        <asp:Label ID="Label3" runat="server" CssClass="col-sm-3 control-label no-padding-right" Font-Size="Larger" ></asp:Label>
                    </td>
                    <td>
                        <img src="icons/Customer.png" /><br /><br />
                        <asp:Label ID="Label4" runat="server" CssClass="col-sm-3 control-label no-padding-right" Font-Size="Larger" ></asp:Label>
                    </td>
                    
                </tr>
            </table>
    </div>
        
</asp:Content>

