<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

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
        <div class="natigation">
        <asp:HyperLink ID="HL_Home" runat="server" NavigateUrl="~/Default.aspx" CssClass="natigation">Home</asp:HyperLink>
&nbsp;|
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/newRecipe.aspx" CssClass="natigation">Add a New Recipe</asp:HyperLink>
&nbsp;|
        <asp:HyperLink ID="HL_About" runat="server" NavigateUrl="~/about.aspx" CssClass="natigation">About Us</asp:HyperLink>
&nbsp;|
        <asp:HyperLink ID="HL_Contact" runat="server" NavigateUrl="~/contact.aspx" CssClass="natigation">Contact Us</asp:HyperLink>
        </div>
    
        <asp:SqlDataSource ID="sql_Recipes" runat="server" ConnectionString="<%$ ConnectionStrings:db_recipe %>" DeleteCommand="DELETE FROM [gbarnard_recipe_hw6] WHERE [recipeID] = @recipeID" InsertCommand="INSERT INTO [gbarnard_recipe_hw6] ([recipe_Name], [submitted_By], [Ingredient 1], [Ingredient 2], [Ingredient 3], [Ingredient 4], [Ingredient 5], [Preperation], [Notes]) VALUES (@recipe_Name, @submitted_By, @Ingredient_1, @Ingredient_2, @Ingredient_3, @Ingredient_4, @Ingredient_5, @Preperation, @Notes)" SelectCommand="SELECT * FROM [gbarnard_recipe_hw6]" UpdateCommand="UPDATE [gbarnard_recipe_hw6] SET [recipe_Name] = @recipe_Name, [submitted_By] = @submitted_By, [Ingredient 1] = @Ingredient_1, [Ingredient 2] = @Ingredient_2, [Ingredient 3] = @Ingredient_3, [Ingredient 4] = @Ingredient_4, [Ingredient 5] = @Ingredient_5, [Preperation] = @Preperation, [Notes] = @Notes WHERE [recipeID] = @recipeID">
            <DeleteParameters>
                <asp:Parameter Name="recipeID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="recipe_Name" Type="String" />
                <asp:Parameter Name="submitted_By" Type="String" />
                <asp:Parameter Name="Ingredient_1" Type="String" />
                <asp:Parameter Name="Ingredient_2" Type="String" />
                <asp:Parameter Name="Ingredient_3" Type="String" />
                <asp:Parameter Name="Ingredient_4" Type="String" />
                <asp:Parameter Name="Ingredient_5" Type="String" />
                <asp:Parameter Name="Preperation" Type="String" />
                <asp:Parameter Name="Notes" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="recipe_Name" Type="String" />
                <asp:Parameter Name="submitted_By" Type="String" />
                <asp:Parameter Name="Ingredient_1" Type="String" />
                <asp:Parameter Name="Ingredient_2" Type="String" />
                <asp:Parameter Name="Ingredient_3" Type="String" />
                <asp:Parameter Name="Ingredient_4" Type="String" />
                <asp:Parameter Name="Ingredient_5" Type="String" />
                <asp:Parameter Name="Preperation" Type="String" />
                <asp:Parameter Name="Notes" Type="String" />
                <asp:Parameter Name="recipeID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="sql_Recipes" Width="349px" DataKeyNames="recipeID" CssClass="mainBody" HorizontalAlign="Center">
            <Columns>
                <asp:BoundField DataField="recipe_Name" HeaderText="Recipe Name" SortExpression="recipe_Name" />
                <asp:BoundField DataField="submitted_By" HeaderText="Submitted By" SortExpression="submitted_By" />
                <asp:HyperLinkField DataNavigateUrlFields="recipeID" DataNavigateUrlFormatString="detailsview.aspx?recipeID={0}" Text="Select" />
            </Columns>
        </asp:GridView>
        <br />
        
        <br />
        
        <br />
    
    </div>
        <div class="footer" >&#169 2014 Software Development & Design<br />
    </form>
</body>
</html>
