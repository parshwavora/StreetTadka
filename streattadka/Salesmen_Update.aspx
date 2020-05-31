<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" EnableEventValidation="false" AutoEventWireup="true" CodeFile="Salesmen_Update.aspx.cs" Inherits="Admin_Salesmen_Update" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
<asp:label class="col-sm-3 control-label no-padding-right" runat="server" text="First Name"></asp:label>
    <asp:textbox id="txtFname" class="col-xs-10 col-sm-5" runat="server"></asp:textbox>
    <br /> <br />
    <asp:label class="col-sm-3 control-label no-padding-right" runat="server" text="Last Name"></asp:label>
    <asp:textbox id="txtLname" class="col-xs-10 col-sm-5" runat="server"></asp:textbox>
    <br /><br />
    <asp:label class="col-sm-3 control-label no-padding-right" runat="server" text="Date of Birth"></asp:label>
    <asp:TextBox ID="txtDoB" class="col-xs-10 col-sm-5" TextMode="Date"  runat="server"></asp:TextBox>
    <br /><br />
    <asp:label class="col-sm-3 control-label no-padding-right" runat="server" text="Password"></asp:label>
    <asp:textbox id="txtPwd" class="col-xs-10 col-sm-5" runat="server"></asp:textbox>
    <br /><br />
    <asp:label class="col-sm-3 control-label no-padding-right" runat="server" text="E-mail"></asp:label>
    <asp:textbox id="txtEmail" class="col-xs-10 col-sm-5" runat="server"></asp:textbox>
    <br /><br />
    <asp:label class="col-sm-3 control-label no-padding-right" runat="server" text="Contact Number"></asp:label>
    <asp:textbox id="txtContact" class="col-xs-10 col-sm-5" runat="server"></asp:textbox>
    <br /><br />
    <asp:label class="col-sm-3 control-label no-padding-right" runat="server" text="Gender"></asp:label>
    <asp:radiobutton GroupName="gender" runat="server" id="Male"></asp:radiobutton>Male
    <asp:radiobutton GroupName="gender" runat="server"  id="Female"></asp:radiobutton>Female
    <br /><br />
    <asp:label class="col-sm-3 control-label no-padding-right" runat="server" text="Notes"></asp:label>
    <asp:textbox id="txtNotes" class="col-xs-10 col-sm-5" runat="server"></asp:textbox>
    <br /><br />
    <asp:label class="col-sm-3 control-label no-padding-right" runat="server" text="Address"></asp:label>
    <asp:textbox id="txtAddress" class="col-xs-10 col-sm-5" runat="server"></asp:textbox>
    <br /><br />
    <asp:label class="col-sm-3 control-label no-padding-right" runat="server" text="Area Id"></asp:label>
    <asp:textbox id="txtAreaId" class="col-xs-10 col-sm-5" runat="server"></asp:textbox>
    <br /><br />
    <asp:label class="col-sm-3 control-label no-padding-right" runat="server" text="Salesmen Image"></asp:label>
    <asp:fileupload id="FileUpload1" runat="server" class="col-xs-10 col-sm-5"></asp:fileupload>
    <br /><br /><br /><br />
    <div class="col-md-offset-3 col-md-9">
    <asp:button class="btn btn-info" runat="server" text="Update" OnClick="Unnamed12_Click"  />
        </div>
    </div>
    </div>

</asp:Content>

