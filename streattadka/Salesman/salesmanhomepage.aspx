<%@ Page Title="" Language="C#" MasterPageFile="~/Salesman/Salesmanmasterpage.master" AutoEventWireup="true" CodeFile="salesmanhomepage.aspx.cs" Inherits="Salesman_salesmanhomepage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <div class="page-header">
	    <h1>
		    Salesmen Home
		    <small>
			    <i class="icon-double-angle-right"></i>
                <br /><br />
			    
		    
			    
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
                        <img src="../Admin/icons/StallOwner.png" /><br /><br />
                        <asp:Label ID="Label2" runat="server" CssClass="col-sm-3 control-label no-padding-right" Font-Size="Larger" style="left: 6px; top: -4px; width: 202px" Width="100px" ></asp:Label>   
                    </td>
                    
                </tr>
        <tr>
            <td>&nbsp</td>
            <td>&nbsp</td>
        </tr>
                <tr>
                    <td colspan="2" >
                        <img src="../Admin/icons/Area.png" /><br /><br />
                        <asp:Label ID="Label3" runat="server" CssClass="col-sm-3 control-label no-padding-right" Font-Size="Larger" ></asp:Label>
                    </td> 
                </tr>
            </table>
</asp:Content>

