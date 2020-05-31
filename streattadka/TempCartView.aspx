<%@ Page Title="" Language="C#" MasterPageFile="~/mainMasterPage.master" AutoEventWireup="true" CodeFile="TempCartView.aspx.cs" Inherits="TempCartView" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <div id="divData" runat="server"></div>
    <asp:Button ID="Button1" CssClass="btn btn-info" runat="server" Text="Order Now" OnClick="Button1_Click" />
</asp:Content>

