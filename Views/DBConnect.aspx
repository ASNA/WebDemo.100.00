<%@ Page Language="AVR" MasterPageFile="~/HomeMaster.master" AutoEventWireup="false" CodeFile="DBConnect.aspx.vr" Inherits="Views_DBConnect" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" Runat="Server">

    <div class="container">

    
    <h3 class="page-heading">DataGate database connection</h3>
        
    <!-- asp:Panels render as div tags--so they make good BS4 alerts. -->
    <asp:Panel cssclass=""  ID="MessagePanel" runat="server" Visible="false" EnableViewState="false">
        <asp:Label ID="MessageText" runat="server" EnableViewState="false"></asp:Label>
    </asp:Panel>

    <div class="form-group">
        <label for="platform">DB platform</label>
        <asp:ListBox cssClass="form-control" ID="formPlatform" runat="server" Rows="1" ClientIDMode="Static">
            <asp:ListItem Value="IBMI">IBM i</asp:ListItem>
            <asp:ListItem Value="DSS">SQL Server</asp:ListItem>
            <asp:ListItem Value="LOCALDB">DataGate Local DB</asp:ListItem>
        </asp:ListBox>
    </div>

    <div id="enterprise-platforms">
        <div class="form-group">
            <label class="control-label" for="formserver">Database server</label>
            <asp:TextBox ID="formserver" CssClass="form-control" ClientIDMode="Static"  
                runat="server" placeholder="IBM server"></asp:TextBox>
        </div>

        <div class="form-group">
            <label class="control-label" for="formport">TCP/IP port</label>
            <asp:TextBox ID="formport" CssClass="form-control" ClientIDMode="Static" 
            runat="server" placeholder="TCP/IP port"></asp:TextBox>
        </div>

        <div class="form-group">
            <label class="control-label" for="formuser">User</label>
            <asp:TextBox ID="formuser" CssClass="form-control" ClientIDMode="Static" 
            runat="server" placeholder="User"></asp:TextBox>
        </div>
        
        <div class="form-group">
            <label class="control-label" for="formpassword">Password</label>
            <asp:TextBox ID="formpassword" CssClass="form-control" ClientIDMode="Static" TextMode="Password"
            runat="server" placeholder="Password"></asp:TextBox>
        </div>
    </div>

    <div class="form-group">
        <div class="button-group">
            <asp:Button cssClass="btn btn-primary" ID="formsubmit" runat="server" Text="Connect" />        
        </div>
    </div>
        
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="pageScripts" Runat="Server">
    <%= PageStatusJavaScript %>

    <script src="<%=Page.ResolveUrl("~")%>assets/js/app.js"></script>
    <script src="<%=Page.ResolveUrl("~")%>assets/js/DBConnect.aspx.js"></script>
</asp:Content>

