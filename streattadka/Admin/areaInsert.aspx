<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminmaster.master" AutoEventWireup="true" CodeFile="areaInsert.aspx.cs" Inherits="Admin_areaInsert" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="page-header">
	    <h1>
		    Insert Area
		    <small>
			    <i class="icon-double-angle-right"></i>
			    insert here
		    </small>
	    </h1>
    </div>
<div class="row">
        <div class="col-xs-12">
            <div class="form-horizontal">

<div class="form-group">
<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Area Name </label>
<div class="col-sm-9">
<asp:TextBox ID="txtAreaName" runat="server" placeholder="Area Name" class="col-xs-10 col-sm-5"></asp:TextBox>
</div>
</div>

<div class="form-group">
<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> IsDisplay </label>
<div class="col-sm-9">
<asp:CheckBox ID="chkIsDisplay" runat="server" />
</div>
</div>

   <div class="form-group">
<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Pincode </label>
<div class="col-sm-9">
<asp:TextBox ID="txtPincode" runat="server" placeholder="Pincode" class="col-xs-10 col-sm-5"></asp:TextBox>
</div>
</div>

<div class="col-md-offset-3 col-md-9">
<asp:Button ID="btnInsert"  CssClass="btn btn-info" Text="Insert" runat="server" OnClick="btnInsert_Click" />
</div>

                </div>
            </div>
        </div>
</asp:Content>

