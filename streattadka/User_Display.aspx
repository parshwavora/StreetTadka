<%@ Page Title="" Language="C#" EnableEventValidation="false" MasterPageFile="~/mainMasterPage.master" AutoEventWireup="true" CodeFile="User_Display.aspx.cs" Inherits="User_Display" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<style>

        .scr{
            overflow-y:scroll;
        }

    </style>
    
    <div id="divData" runat="server" class="scr">

    </div>
    <br /><br />
    <a href="Registration.aspx">Done</a>
</asp:Content>

