<%@ Page Language="AVR" AutoEventWireup="false" CodeFile="ShowControlsNoMaster.aspx.vr" Inherits="Views_ShowControlsNoMaster" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    
    <div>

    <asp:TextBox  class="big-test" ID="TextBox1" runat="server"></asp:TextBox>
    <br />
    <asp:Button ID="Button1" runat="server" Text="Button" OnClientClick="HideElement" />
    <br />
    <asp:Label  class="big-test" ID="Label1" runat="server" Text="Label"></asp:Label>    
    <br />
    <asp:Button  class="big-test" ID="Button2" runat="server" CssClass="big-button" Text="Button" OnClientClick="HideElement" />
    <br />
     <asp:TextBox class="big-test" ID="TextBox2" runat="server" TextMode="DateTime"></asp:TextBox>
    <br />
        <asp:TextBox class="big-test"  ID="TextBox3" runat="server" TextMode="Email"></asp:TextBox>
    <br />
        <asp:TextBox class="big-test"  ID="TextBox4" runat="server" TextMode="Month"></asp:TextBox>
    <br />
        <asp:TextBox class="big-test"  ID="TextBox5" runat="server" TextMode="Number"></asp:TextBox>
    <br />
        <asp:TextBox class="big-test"  ID="TextBox6" runat="server" TextMode="Week"></asp:TextBox>
    <br />
    <br />
    <br />
    <br />
    <br />


    </div>

    </form>

    <link rel="stylesheet" href="<%=Page.ResolveUrl("~")%>assets/css/app.css">
</body>
</html>
