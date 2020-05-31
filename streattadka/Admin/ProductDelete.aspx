<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminmaster.master" AutoEventWireup="true" CodeFile="ProductDelete.aspx.cs" Inherits="Admin_CatDelete" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <p>Are You Sure you want to delete></p>
    <asp:Button ID="btnYes" CssClass="btn btn-danger" runat="server" Text="Yes" OnClick="btnYes_Click" />
    <asp:Button ID="btnNo" CssClass="btn btn-warning" runat="server" Text="No" OnClick="btnNo_Click" />

</asp:Content>

