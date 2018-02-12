<%@ Page Language="AVR" MasterPageFile="~/HomeMaster.master" AutoEventWireup="false" CodeFile="DBConnect.aspx.vr" Inherits="Views_DBConnect" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" Runat="Server">

    <div class="container">

    
    <h3 class="page-heading">DataGate database connection</h3>

    <div class="form-group">
        <label for="platform">DB platform</label>
        <asp:ListBox cssClass="form-control" ID="platform" runat="server" Rows="1">
            <asp:ListItem Value="IBMI">IBM i</asp:ListItem>
            <asp:ListItem Value="DSS">SQL Server</asp:ListItem>
            <asp:ListItem Value="LOCALDB">DataGate Local DB</asp:ListItem>
        </asp:ListBox>
    </div>

    <div class="form-group">
        <label class="control-label" for="dbserver">Database server</label>
        <asp:TextBox ID="dbserver" CssClass="form-control" ClientIDMode="Static"  
            runat="server" placeholder="IBM server"></asp:TextBox>
    </div>

    <div class="form-group">
        <label class="control-label" for="port">TCP/IP port</label>
        <asp:TextBox ID="port" CssClass="form-control" ClientIDMode="Static" 
        runat="server" placeholder="TCP/IP port"></asp:TextBox>
    </div>

    <div class="form-group">
        <label class="control-label" for="user">User</label>
        <asp:TextBox ID="user" CssClass="form-control" ClientIDMode="Static" 
        runat="server" placeholder="User"></asp:TextBox>
    </div>
        
    <div class="form-group">
        <label class="control-label" for="password">Password</label>
        <asp:TextBox ID="password" CssClass="form-control" ClientIDMode="Static" TextMode="Password"
        runat="server" placeholder="Password"></asp:TextBox>
    </div>

    <div class="form-group">
        <div class="button-group">
            <asp:Button cssClass="btn btn-primary" ID="submit" runat="server" Text="Connect" />        
        </div>
    </div>


</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="pageScripts" Runat="Server">
</asp:Content>

