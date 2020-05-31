<%@ Page Title="" Language="C#" MasterPageFile="~/Salesman/Salesmanmasterpage.master" AutoEventWireup="true" CodeFile="stallownerInsert.aspx.cs" Inherits="Salesman_stallownerInsert" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="page-header">
	    <h1>
		    Stall Registration
		    <small>
			    <i class="icon-double-angle-right"></i>
			    Register here
		    </small>
	    </h1>
    </div>
    <div class="row">
        <div class="col-xs-12">
            <div class="form-horizontal">


<div class="form-group">
<label class="col-sm-3 control-label no-padding-right" for="form-field-1">Stall Name </label>
<div class="col-sm-9">
<asp:TextBox ID="txtstallname" runat="server" placeholder="Stall Name" class="col-xs-10 col-sm-5"></asp:TextBox>
</div>
</div>

<div class="form-group">
<label class="col-sm-3 control-label no-padding-right" for="form-field-1">Stall Image </label>
<div class="col-sm-9">
<asp:FileUpload ID="StallPicture" runat="server" />
</div>
</div>

   <div class="form-group">
<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Stall Opening Time </label>
<div class="col-sm-9">
<asp:TextBox ID="txtop" runat="server" TextMode="Time" placeholder="Stall Opening Time" class="col-xs-10 col-sm-5"></asp:TextBox>
</div>
</div>

   <div class="form-group">
<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Stall Closing Time</label>
<div class="col-sm-9">
<asp:TextBox ID="txtct" runat="server" placeholder="Stall Closing Time" TextMode="Time" class="col-xs-10 col-sm-5"></asp:TextBox>
</div>
</div>

   <div class="form-group">
<label class="col-sm-3 control-label no-padding-right" for="form-field-1">Stall Date of Joining</label>
<div class="col-sm-9">
<asp:TextBox ID="txtst_doj" runat="server" TextMode="Date" placeholder="Stall Date of Joining" class="col-xs-10 col-sm-5"></asp:TextBox>
</div>
</div>
                <asp:label class="col-sm-3 control-label no-padding-right" runat="server" text="Area"></asp:label>
            <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>

                <br /><br />

<div class="col-md-offset-3 col-md-9">
<asp:Button ID="btnInsert"  CssClass="btn btn-info" Text="Insert" runat="server" OnClick="btnInsert_Click" />
</div>

</div>
</div>
</div>
</asp:Content>

