<%@ Page Language="AVR" MasterPageFile="~/HomeMaster.master" AutoEventWireup="false" CodeFile="ChangeCustomer.aspx.vr" Inherits="Views_ChangeCustomer" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="content" Runat="Server">

<div class="container">

    
    <div class="form-group" style="margin-top: 40px;">
        <!-- Name field -->
        <label class="control-label" for="formname">Name</label>
        <asp:TextBox ID="formname" AutoFocus CssClass="form-control" ClientIDMode="Static" runat="server"></asp:TextBox>
    </div>

    <div class="form-group">
        <!-- Subject field -->
        <label class="control-label" for="formcity">City</label>
        <asp:TextBox ID="formcity" CssClass="form-control" ClientIDMode="Static" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="City is required" ControlToValidate="formCity" Display="Dynamic"></asp:RequiredFieldValidator>
        <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="City cannot be Dallas" Display="Dynamic"></asp:CustomValidator>
    </div>

    <div class="form-group">
        <label for="formstate">State</label>
        <asp:ListBox cssClass="form-control" ID="formstate" runat="server" Rows="1"></asp:ListBox>
    </div>

    <div class="form-group">
        <!-- Subject field -->
        <label class="control-label" for="formpostcode">Postal code</label>
        <asp:TextBox ID="formpostcode" CssClass="form-control" ClientIDMode="Static" runat="server"></asp:TextBox>
    </div>

    <div class="form-check" style="margin-bottom: 20px;">
        <asp:CheckBox cssClass="form-check-input" ID="formexempt" runat="server" />
        <label class="form-check-label" for="formexempt">Tax exempt</label>
    </div>
       
    <div class="form-group">
        <div class="button-group">
            <asp:LinkButton ID="formcancelOperation" runat="server" title="Cancel operation" CausesValidation="False"><i class="fas fa-arrow-alt-circle-left svg-button"></i></asp:LinkButton>&nbsp;
            <asp:Button cssClass="btn btn-primary" ID="formSubmit" runat="server" Text="Update" />
        </div>            
    </div>

       
    
</div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="pageScripts" Runat="Server">
</asp:Content>

