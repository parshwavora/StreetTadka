<%@ Page Title="" Language="C#" MasterPageFile="~/Salesman/Salesmanmasterpage.master" AutoEventWireup="true" CodeFile="salesmanInsert.aspx.cs" Inherits="Salesman_salesmanInsert" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:DropDownList ID="drpArea" runat="server"></asp:DropDownList>
    <div class="row">
        <div class="col-xs-12">
            <div class="form-horizontal">

<div class="form-group">
<label class="col-sm-3 control-label no-padding-right" for="form-field-1">Date of Joining </label>
<div class="col-sm-9">
<asp:TextBox ID="txtsdoj" runat="server" TextMode="Date" placeholder="Salesman Date of Joining" class="col-xs-10 col-sm-5"></asp:TextBox>
</div>
</div>

<div class="form-group">
<label class="col-sm-3 control-label no-padding-right" for="form-field-1">First Name </label>
<div class="col-sm-9">
    <asp:TextBox ID="txtfname" runat="server" placeholder="User First Name " class="col-xs-10 col-sm-5"></asp:TextBox>
</div>
</div>

   <div class="form-group">
<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Middle Name </label>
<div class="col-sm-9">
<asp:TextBox ID="txtmname" runat="server" placeholder="User Middle Name" class="col-xs-10 col-sm-5"></asp:TextBox>
</div>
</div>

   <div class="form-group">
<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Last Name </label>
<div class="col-sm-9">
<asp:TextBox ID="txtlname" runat="server" placeholder="User Last Name" class="col-xs-10 col-sm-5"></asp:TextBox>
</div>
</div>
 <div class="form-group">
<label class="col-sm-3 control-label no-padding-right" for="form-field-1">Gender</label>
<div class="col-sm-9">
                <asp:RadioButton ID="Male" runat="server" />
    </div>
     </div>

    <div class="form-group">
<label class="col-sm-3 control-label no-padding-right" for="form-field-1">Gender</label>
<div class="col-sm-9">
                <asp:RadioButton ID="Female" runat="server" />
    </div>
        </div>
 <%--<div class="form-group">
<label class="col-sm-3 control-label no-padding-right" for="form-field-1">Gender</label>
<div class="col-sm-9">
<asp:TextBox ID="txtgender" runat="server" placeholder="Gender" class="col-xs-10 col-sm-5"></asp:TextBox>
</div>
</div>--%>

   <div class="form-group">
<label class="col-sm-3 control-label no-padding-right" for="form-field-1">Date of Birth </label>
<div class="col-sm-9">
<asp:TextBox ID="txtdob" runat="server" TextMode="Date" placeholder="Date of Birth" class="col-xs-10 col-sm-5"></asp:TextBox>
</div>
</div>

   <div class="form-group">
<label class="col-sm-3 control-label no-padding-right" for="form-field-1">E-mail Id</label>
<div class="col-sm-9">
<asp:TextBox ID="txtemail" runat="server" placeholder="E-Mail Id" class="col-xs-10 col-sm-5"></asp:TextBox>
</div>
</div>

   <div class="form-group">
<label class="col-sm-3 control-label no-padding-right" for="form-field-1">Contact Number</label>
<div class="col-sm-9">
<asp:TextBox ID="txtphone" runat="server" placeholder="Contact Number" class="col-xs-10 col-sm-5"></asp:TextBox>
</div>
</div>

 <div class="form-group">
<label class="col-sm-3 control-label no-padding-right" for="form-field-1">Salesman Image </label>
<div class="col-sm-9">
<asp:FileUpload ID="SalesmanPicture" runat="server" />
</div>
</div>

<div class="form-group">
<label class="col-sm-3 control-label no-padding-right" for="form-field-1">Address</label>
<div class="col-sm-9">
<asp:TextBox ID="txtaddress" runat="server" placeholder="Address" class="col-xs-10 col-sm-5"></asp:TextBox>
</div>
</div>

<div class="form-group">
<label class="col-sm-3 control-label no-padding-right" for="form-field-1">Pincode</label>
<div class="col-sm-9">
<asp:TextBox ID="txtpincode" runat="server" placeholder="Pincode" class="col-xs-10 col-sm-5"></asp:TextBox>
</div>
</div>

<div class="form-group">
<label class="col-sm-3 control-label no-padding-right" for="form-field-1">User Name</label>
<div class="col-sm-9">
<asp:TextBox ID="txtusername" runat="server" placeholder="User Name" class="col-xs-10 col-sm-5"></asp:TextBox>
</div>
</div>

<div class="form-group">
<label class="col-sm-3 control-label no-padding-right" for="form-field-1">Password</label>
<div class="col-sm-9">
<asp:TextBox ID="txtpassword" runat="server" placeholder="Password" class="col-xs-10 col-sm-5"></asp:TextBox>
</div>
</div>










<div class="col-md-offset-3 col-md-9">
<asp:Button ID="btnInsert"  CssClass="btn btn-info" Text="Insert" runat="server" OnClick="btnInsert_Click" />
</div>

                </div>
            </div>
        </div>
</asp:Content>