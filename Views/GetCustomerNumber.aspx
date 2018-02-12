<%@ Page Language="AVR" MasterPageFile="~/HomeMaster.master" AutoEventWireup="false" CodeFile="GetCustomerNumber.aspx.vr" Inherits="Views_GetCustomerNumber" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="content" Runat="Server">

<div class="container">

<%--    <div>
        user <i class="fas fa-user"></i>
    </div>--%>

    <div id="flash-message"></div>
    <div class="form-group" style="margin-top: 40px;">
        <!-- Name field -->
        <label class="control-label" for="name">Customer Number</label>
        <asp:TextBox ID="customerNumber" AutoFocus CssClass="form-control" ClientIDMode="Static" runat="server"></asp:TextBox>
    </div>
      
    <div class="form-group">
        <div class="button-group">
            <asp:Button cssClass="btn btn-primary" ID="submit" runat="server" Text="Select" PostBackUrl="/views/ChangeCustomer.aspx" />&nbsp;
            <asp:LinkButton ID="addCustomer" runat="server" title="Add customer"><i class="fas fa-plus-circle svg-button"></i></asp:LinkButton>
        </div>            
    </div>


</div>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="pageScripts" Runat="Server">
    <script src="<%=Page.ResolveUrl("~")%>assets/js/app.js"></script>
</asp:Content>

