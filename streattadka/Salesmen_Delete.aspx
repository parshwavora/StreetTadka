<%@ Page Title="" Language="C#" MasterPageFile="~/mainMasterPage.master" EnableEventValidation="false" AutoEventWireup="true" CodeFile="Salesmen_Delete.aspx.cs" Inherits="Salesmen_Delete" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

    <asp:label class="col-sm-6 control-label no-padding-right" runat="server" Font-Size="X-Large" text="Are you sure to Delete?"></asp:label>
    <br /><br /><br />

    <div class="col-sm-offset-0.5 col-sm-10" >
    <asp:button Height="40px" Width="80px" class="btn-red" runat="server" text="Yes" OnClick="Unnamed2_Click" />
        <asp:button Height="40px" Width="80px" class="btn-green" runat="server" text="No" OnClick="Unnamed3_Click"  />
        </div>


</asp:Content>

