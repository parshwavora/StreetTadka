<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminmaster.master" AutoEventWireup="true" CodeFile="SearchCustomer.aspx.cs" Inherits="Admin_SearchCustomer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="page-header">
	    <h1>
		    Search Customers
		    <small>
			    <i class="icon-double-angle-right">
                    <asp:Label ID="Label2" runat="server" ></asp:Label> </i>
                <br />
		    </small>
	    </h1>
        
    </div>
    
       <div class="col-xs-12 col-sm-3 center">
            <table><tr>
                 <td>
                <asp:Label ID="Label3" runat="server" Text="Customers"></asp:Label></td>
                <td>&nbsp</td>
                <td>&nbsp</td>
                <td><a href ="SearchCustomer.aspx?Id=A">A</a></td>
                <td>&nbsp</td>
            <td><a href ="SearchCustomer.aspx?Id=B">B</a></td>
                <td>&nbsp</td>
            <td><a href ="SearchCustomer.aspx?Id=C">C</a></td>
            <td>&nbsp</td>
            <td><a href ="SearchCustomer.aspx?Id=D">D</a></td>
                <td>&nbsp</td>
            <td><a href ="SearchCustomer.aspx?Id=E">E</a></td>
                <td>&nbsp</td>
            <td><a href ="SearchCustomer.aspx?Id=F">F</a></td>
                <td>&nbsp</td>
            <td><a href ="SearchCustomer.aspx?Id=G">G</a></td>
                <td>&nbsp</td>
            <td><a href ="SearchCustomer.aspx?Id=H">H</a></td>
                <td>&nbsp</td>
            <td><a href ="SearchCustomer.aspx?Id=I">I</a></td>
                <td>&nbsp</td>
            <td><a href ="SearchCustomer.aspx?Id=J">J</a></td>
                <td>&nbsp</td>
            <td><a href ="SearchCustomer.aspx?Id=K">K</a></td>
                <td>&nbsp</td>
            <td><a href ="SearchCustomer.aspx?Id=L">L</a></td>
                <td>&nbsp</td>
            <td><a href ="SearchCustomer.aspx?Id=M">M</a></td>
                <td>&nbsp</td>
            <td><a href ="SearchCustomer.aspx?Id=N">N</a></td>
                <td>&nbsp</td>
            <td><a href ="SearchCustomer.aspx?Id=O">O</a></td>
                <td>&nbsp</td>
            <td><a href ="SearchCustomer.aspx?Id=P">P</a></td>
                <td>&nbsp</td>
            <td><a href ="SearchCustomer.aspx?Id=Q">Q</a></td>
                <td>&nbsp</td>
            <td><a href ="SearchCustomer.aspx?Id=R">R</a></td>
                <td>&nbsp</td>
            <td><a href ="SearchCustomer.aspx?Id=S">S</a></td>
                <td>&nbsp</td>
            <td><a href ="SearchCustomer.aspx?Id=T">T</a></td>
                <td>&nbsp</td>
            <td><a href ="SearchCustomer.aspx?Id=U">U</a></td>
                <td>&nbsp</td>
            <td><a href ="SearchCustomer.aspx?Id=V">V</a></td>
                <td>&nbsp</td>
            <td><a href ="SearchCustomer.aspx?Id=W">W</a></td>
                <td>&nbsp</td>
            <td><a href ="SearchCustomer.aspx?Id=X">X</a></td>
                <td>&nbsp</td>
            <td><a href ="SearchCustomer.aspx?Id=Y">Y</a></td>
                <td>&nbsp</td>
            <td><a href="SearchCustomer.aspx?Id=Z">Z</a></td>
                </tr>
            </table>
           </div><br /><br />
    <div id="divData" runat="server"></div>

    
</asp:Content>

