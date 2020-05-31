<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminmaster.master" AutoEventWireup="true" CodeFile="ProductUpdate.aspx.cs" Inherits="Admin_ProductUpdate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="page-header">
	    <h1>
		    Update Product
		    <small>
			    <i class="icon-double-angle-right"></i>
			    Update here
		    </small>
	    </h1>
    </div>
    <div class="row">
        <div class="col-xs-12">
            <div class="form-horizontal">

<div class="form-group">
<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Product Name </label>
<div class="col-sm-9">
<asp:TextBox ID="txtCatName" runat="server" placeholder="Product Name" class="col-xs-10 col-sm-5"></asp:TextBox>
</div>
</div>

<div class="form-group">
<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Product Image </label>
<div class="col-sm-9">
<asp:FileUpload ID="FileUpload1" runat="server" />
</div>
</div>

<div class="form-group">
<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> IsDisplay </label>
<div class="col-sm-9">
<asp:CheckBox ID="chkIsDisplay" runat="server" />
</div>
</div>

<div class="col-md-offset-3 col-md-9">
<asp:Button ID="btnInsert"  CssClass="btn btn-info" Text="Update" runat="server" OnClick="btnInsert_Click" />
</div>
                </div> 
            </div>
        </div>
</asp:Content>


