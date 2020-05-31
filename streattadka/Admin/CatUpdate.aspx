<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminmaster.master" AutoEventWireup="true" CodeFile="CatUpdate.aspx.cs" Inherits="Admin_CatUpdate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
       <div class="page-header">
	    <h1>
		    Update Category
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
<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Cat Name </label>
<div class="col-sm-9">
<asp:TextBox ID="txtCatName" runat="server" placeholder="Category Name" class="col-xs-10 col-sm-5"></asp:TextBox>
</div>
</div>

<div class="form-group">
<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Cat Image </label>
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

