<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminmaster.master" AutoEventWireup="true" CodeFile="SearchSalesmen.aspx.cs" Inherits="Admin_SearchSalesmen" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="page-header">
	    <h1>
		    Search Salesmen
		    <small>
			    <i class="icon-double-angle-right">
                    <asp:Label ID="Label2" runat="server" ></asp:Label> </i>
                <br />
		    </small>
	    </h1>
        
    </div>
    
       <div class="col-xs-12 col-sm-3 center">
            <table>
                
                <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Salesmen"></asp:Label></td>
                <td>&nbsp</td>
                <td>&nbsp</td>
            <td><a href ="SearchSalesmen.aspx?Id=A">A</a></td>
                <td>&nbsp</td>
            <td><a href ="SearchSalesmen.aspx?Id=B">B</a></td>
                <td>&nbsp</td>
            <td><a href ="SearchSalesmen.aspx?Id=C">C</a></td>
            <td>&nbsp</td>
            <td><a href ="SearchSalesmen.aspx?Id=D">D</a></td>
                <td>&nbsp</td>
            <td><a href ="SearchSalesmen.aspx?Id=E">E</a></td>
                <td>&nbsp</td>
            <td><a href ="SearchSalesmen.aspx?Id=F">F</a></td>
                <td>&nbsp</td>
            <td><a href ="SearchSalesmen.aspx?Id=G">G</a></td>
                <td>&nbsp</td>
            <td><a href ="SearchSalesmen.aspx?Id=H">H</a></td>
                <td>&nbsp</td>
            <td><a href ="SearchSalesmen.aspx?Id=I">I</a></td>
                <td>&nbsp</td>
            <td><a href ="SearchSalesmen.aspx?Id=J">J</a></td>
                <td>&nbsp</td>
            <td><a href ="SearchSalesmen.aspx?Id=K">K</a></td>
                <td>&nbsp</td>
            <td><a href ="SearchSalesmen.aspx?Id=L">L</a></td>
                <td>&nbsp</td>
            <td><a href ="SearchSalesmen.aspx?Id=M">M</a></td>
                <td>&nbsp</td>
            <td><a href ="SearchSalesmen.aspx?Id=N">N</a></td>
                <td>&nbsp</td>
            <td><a href ="SearchSalesmen.aspx?Id=O">O</a></td>
                <td>&nbsp</td>
            <td><a href ="SearchSalesmen.aspx?Id=P">P</a></td>
                <td>&nbsp</td>
            <td><a href ="SearchSalesmen.aspx?Id=Q">Q</a></td>
                <td>&nbsp</td>
            <td><a href ="SearchSalesmen.aspx?Id=R">R</a></td>
                <td>&nbsp</td>
            <td><a href ="SearchSalesmen.aspx?Id=S">S</a></td>
                <td>&nbsp</td>
            <td><a href ="SearchSalesmen.aspx?Id=T">T</a></td>
                <td>&nbsp</td>
            <td><a href ="SearchSalesmen.aspx?Id=U">U</a></td>
                <td>&nbsp</td>
            <td><a href ="SearchSalesmen.aspx?Id=V">V</a></td>
                <td>&nbsp</td>
            <td><a href ="SearchSalesmen.aspx?Id=W">W</a></td>
                <td>&nbsp</td>
            <td><a href ="SearchSalesmen.aspx?Id=X">X</a></td>
                <td>&nbsp</td>
            <td><a href ="SearchSalesmen.aspx?Id=Y">Y</a></td>
                <td>&nbsp</td>
            <td><a href="SearchSalesmen.aspx?Id=Z">Z</a></td>
                </tr>
            </table>
           </div><br /><br />
    <div id="divData" runat="server"></div>
</asp:Content>

