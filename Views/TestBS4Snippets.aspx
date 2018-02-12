<%@ Page Language="AVR" MasterPageFile="~/HomeMaster.master" AutoEventWireup="false" CodeFile="TestBS4Snippets.aspx.vr" Inherits="Views_TestBS4Snippets" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" Runat="Server">

    <div class="container">



<div class="container">
    <div class="form-group">
        <label class="control-label" for="name">Customer name</label>
        <asp:TextBox ID="name" CssClass="form-control" ClientIDMode="Static" 
        runat="server" placeholder="Customer name"></asp:TextBox>
    </div>
    
    <div class="form-group">
        <label class="control-label" for="city">City</label>
        <asp:TextBox ID="city" CssClass="form-control" ClientIDMode="Static" 
        runat="server" placeholder="City"></asp:TextBox>
    </div>
    
    <div class="form-group">
        <div class="button-group">
            <asp:Button cssClass="btn btn-primary" ID="submit" runat="server" Text="OK-Post" PostBackUrl="~/views/BlankPage.aspx" />            

            <asp:Button cssClass="btn btn-primary" ID="Button1" runat="server" Text="OK-Get" />            

        </div>
    </div>
    

</div>




    </div>


</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="pageScripts" Runat="Server">
</asp:Content>

