﻿<%@ Page Title="" Language="C#" EnableEventValidation="false" MasterPageFile="~/StreetTadka.master" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="page-header">
	    <h1>
		    Registration
		    <small>
			    <i class="icon-double-angle-right"></i>
			    Register here
		    </small>
	    </h1>
    </div>

    <div class="portlet-body">
        <div class="form-horizontal">

    <asp:label class="col-sm-3 control-label no-padding-right" runat="server" text="First Name"></asp:label>
    <asp:textbox id="txtFname" class="col-xs-10 col-sm-5" runat="server"></asp:textbox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtFname" ErrorMessage="*Please Enter First Name" ForeColor="Red"></asp:RequiredFieldValidator>
    <br /> <br />

    <asp:label class="col-sm-3 control-label no-padding-right" runat="server" text="Middle Name"></asp:label>
    <asp:textbox id="txtMname" class="col-xs-10 col-sm-5" runat="server"></asp:textbox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtMname" ErrorMessage="*Please Enter Middle Name" ForeColor="Red"></asp:RequiredFieldValidator>
    <br /> <br />

    <asp:label class="col-sm-3 control-label no-padding-right" runat="server" text="Last Name"></asp:label>
    <asp:textbox id="txtLname" class="col-xs-10 col-sm-5" runat="server"></asp:textbox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtLname" ErrorMessage="*Please Enter Last Name" ForeColor="Red"></asp:RequiredFieldValidator>
    <br /> <br />

    <asp:label class="col-sm-3 control-label no-padding-right" runat="server" text="Gender"></asp:label>
    <asp:radiobutton GroupName="gender" runat="server" id="Male"></asp:radiobutton>Male
    <asp:radiobutton GroupName="gender" runat="server"  id="Female"></asp:radiobutton>Female
    <br /><br />
    
    <asp:label class="col-sm-3 control-label no-padding-right"  runat="server" text="Birth-Date"></asp:label>
    <asp:textbox id="txtDoB" class="col-xs-10 col-sm-5" type="date" runat="server"></asp:textbox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtDoB" ErrorMessage="*Please Enter the Date" ForeColor="Red"></asp:RequiredFieldValidator>
    <br /> 
            <br />

    <asp:label class="col-sm-3 control-label no-padding-right" runat="server" text="E-mail"></asp:label>
    <asp:textbox id="txtEmail" class="col-xs-10 col-sm-5" runat="server"></asp:textbox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="*Please Enter Valid Email Id " ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
    <br /> <br />

    <asp:label class="col-sm-3 control-label no-padding-right" runat="server" text="Contact-Number"></asp:label>
    <asp:textbox id="txtContact" class="col-xs-10 col-sm-5" runat="server"></asp:textbox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtContact" ErrorMessage="*Please Enter Valid Contact Number" ForeColor="Red"></asp:RegularExpressionValidator>
    <br /> <br />

    

    <asp:label class="col-sm-3 control-label no-padding-right" runat="server" text="Image"></asp:label>
    <asp:fileupload id="FileUpload1" runat="server" class="col-xs-10 col-sm-5"></asp:fileupload>
    <br /><br />

    <asp:label class="col-sm-3 control-label no-padding-right" runat="server" text="Address"></asp:label>
    <asp:textbox id="txtAddress" class="col-xs-10 col-sm-5" runat="server"></asp:textbox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtAddress" ErrorMessage="*Please Enter Address" ForeColor="Red"></asp:RequiredFieldValidator>
    <br /> <br />

    <asp:label class="col-sm-3 control-label no-padding-right" runat="server" text="Pin-Code"></asp:label>
    <asp:textbox id="txtPin" class="col-xs-10 col-sm-5" runat="server"></asp:textbox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtPin" ErrorMessage="*RegularExpressionValidator" ForeColor="Red" ValidationExpression="\\d{5}(-\\d{4})?$"></asp:RegularExpressionValidator>
    <br /> <br />

    <asp:label class="col-sm-3 control-label no-padding-right" runat="server" text="User Name"></asp:label>
    <asp:textbox id="txtUname" class="col-xs-10 col-sm-5" runat="server"></asp:textbox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtUname" ErrorMessage="*Please Enter UserName" ForeColor="Red"></asp:RequiredFieldValidator>
    <br /> <br />

    <asp:label class="col-sm-3 control-label no-padding-right" runat="server" text="Password"></asp:label>
    <asp:textbox id="txtPwd" class="col-xs-10 col-sm-5" runat="server" TextMode="Password"></asp:textbox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtPwd" ErrorMessage="*Please Enter Password In Range" ForeColor="Red"></asp:RequiredFieldValidator>
    <br /> <br /><br /><br />

    <div class="col-md-offset-3 col-md-9">
    <asp:button class="btn btn-info" runat="server" text="Sign-Up" OnClick="Unnamed14_Click"   />
        </div>

    

            </div>
        </div>
</asp:Content>

