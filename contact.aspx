<%@ Page Language="VB" AutoEventWireup="false" CodeFile="contact.aspx.vb" Inherits="contact" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
            <link rel="stylesheet" type="text/css" href="~/css/stylesheet.css" />

</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <h1>Grant&#39;s Simple Recipes</h1>
        <h2>Recipes with 5 ingredients or less!</h2>
        <asp:HyperLink ID="HL_Home" runat="server" NavigateUrl="~/Default.aspx" CssClass="natigation">Home</asp:HyperLink>
&nbsp;|
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/newRecipe.aspx" CssClass="natigation">Add a New Recipe</asp:HyperLink>
&nbsp;|
        <asp:HyperLink ID="HL_About" runat="server" NavigateUrl="~/about.aspx" CssClass="natigation">About Us</asp:HyperLink>
&nbsp;|
        <asp:HyperLink ID="HL_Contact" runat="server" NavigateUrl="~/contact.aspx" CssClass="natigation">Contact Us</asp:HyperLink>
        <br />
        <br />
        <!--Check to see if you are in postback -->
        <%If Not IsPostBack Then%>Your email address:<br />
        <asp:TextBox ID="senderEmail" runat="server" Width="295px"></asp:TextBox>
        <br />
        <br />
        Your Message:<br />
        <asp:TextBox ID="senderMessage" runat="server" Rows="20" Columns="30" TextMode="MultiLine"></asp:TextBox>
        <br />

        <asp:Button ID="btn_Send" runat="server" Text="Send" />

        <asp:Label ID="lbl_Sent" runat="server"></asp:Label>

        <br />

        <!-- If you are in postback, display confimation label -->
        <%Else%><%End If%>
    </div>
         <br />
    <br />
    <br />
                        <div class="footer" >&#169 2014 Software Development & Design<br /></div>

        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
