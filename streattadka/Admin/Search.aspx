<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminmaster.master" AutoEventWireup="true" CodeFile="Search.aspx.cs" Inherits="Admin_Search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="page-header">
	    <h1>
		    Search
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
                <asp:Label ID="Label1" runat="server" Text="Stalls"></asp:Label></td>
                <td>&nbsp</td>
                <td>&nbsp</td>
            <td><a href ="Search.aspx?Id=A">A</a></td>
                <td>&nbsp</td>
            <td><a href ="Search.aspx?Id=B">B</a></td>
                <td>&nbsp</td>
            <td><a href ="Search.aspx?Id=C">C</a></td>
            <td>&nbsp</td>
            <td><a href ="Search.aspx?Id=D">D</a></td>
                <td>&nbsp</td>
            <td><a href ="Search.aspx?Id=E">E</a></td>
                <td>&nbsp</td>
            <td><a href ="Search.aspx?Id=F">F</a></td>
                <td>&nbsp</td>
            <td><a href ="Search.aspx?Id=G">G</a></td>
                <td>&nbsp</td>
            <td><a href ="Search.aspx?Id=H">H</a></td>
                <td>&nbsp</td>
            <td><a href ="Search.aspx?Id=I">I</a></td>
                <td>&nbsp</td>
            <td><a href ="Search.aspx?Id=J">J</a></td>
                <td>&nbsp</td>
            <td><a href ="Search.aspx?Id=K">K</a></td>
                <td>&nbsp</td>
            <td><a href ="Search.aspx?Id=L">L</a></td>
                <td>&nbsp</td>
            <td><a href ="Search.aspx?Id=M">M</a></td>
                <td>&nbsp</td>
            <td><a href ="Search.aspx?Id=N">N</a></td>
                <td>&nbsp</td>
            <td><a href ="Search.aspx?Id=O">O</a></td>
                <td>&nbsp</td>
            <td><a href ="Search.aspx?Id=P">P</a></td>
                <td>&nbsp</td>
            <td><a href ="Search.aspx?Id=Q">Q</a></td>
                <td>&nbsp</td>
            <td><a href ="Search.aspx?Id=R">R</a></td>
                <td>&nbsp</td>
            <td><a href ="Search.aspx?Id=S">S</a></td>
                <td>&nbsp</td>
            <td><a href ="Search.aspx?Id=T">T</a></td>
                <td>&nbsp</td>
            <td><a href ="Search.aspx?Id=U">U</a></td>
                <td>&nbsp</td>
            <td><a href ="Search.aspx?Id=V">V</a></td>
                <td>&nbsp</td>
            <td><a href ="Search.aspx?Id=W">W</a></td>
                <td>&nbsp</td>
            <td><a href ="Search.aspx?Id=X">X</a></td>
                <td>&nbsp</td>
            <td><a href ="Search.aspx?Id=Y">Y</a></td>
                <td>&nbsp</td>
            <td><a href="Search.aspx?Id=Z">Z</a></td>
                </tr>
        </table>
                </div><br /><br />
    <div id="divData" runat="server"></div>
</asp:Content>

