<%@ Page Language="VB" AutoEventWireup="false" CodeFile="detailsview.aspx.vb" Inherits="detailsview" %>

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
        <asp:SqlDataSource ID="Sql_RecipeData" runat="server" ConnectionString="<%$ ConnectionStrings:db_recipe %>" DeleteCommand="DELETE FROM [gbarnard_recipe_hw6] WHERE [recipeID] = @recipeID" InsertCommand="INSERT INTO [gbarnard_recipe_hw6] ([recipe_Name], [submitted_By], [Ingredient_1], [Ingredient_2], [Ingredient_3], [Ingredient_4], [Ingredient_5], [Preperation], [Notes]) VALUES (@recipe_Name, @submitted_By, @Ingredient_1, @Ingredient_2, @Ingredient_3, @Ingredient_4, @Ingredient_5, @Preperation, @Notes)" SelectCommand="SELECT * FROM [gbarnard_recipe_hw6] WHERE ([recipeID] = @recipeID)" UpdateCommand="UPDATE [gbarnard_recipe_hw6] SET [recipe_Name] = @recipe_Name, [submitted_By] = @submitted_By, [Ingredient_1] = @Ingredient_1, [Ingredient_2] = @Ingredient_2, [Ingredient_3] = @Ingredient_3, [Ingredient_4] = @Ingredient_4, [Ingredient_5] = @Ingredient_5, [Preperation] = @Preperation, [Notes] = @Notes WHERE [recipeID] = @recipeID">
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
            <SelectParameters>
                <asp:QueryStringParameter Name="recipeID" QueryStringField="recipeID" Type="Int32" />
            </SelectParameters>
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
        <span class="deletedrecipe"><asp:Label ID="lbl_deletedRecipe" runat="server"></asp:Label></span>
        <br />
        <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="recipeID" DataSourceID="Sql_RecipeData" Height="50px" Width="321px" HorizontalAlign="Center">
            <Fields>
                <asp:BoundField DataField="recipe_Name" HeaderText="Recipe Name" SortExpression="recipe_Name" />
                <asp:BoundField DataField="submitted_By" HeaderText="Submitted By" SortExpression="submitted_By" />
                <asp:BoundField DataField="Ingredient_1" HeaderText="Ingredient 1" SortExpression="Ingredient_1" />
                <asp:BoundField DataField="Ingredient_2" HeaderText="Ingredient 2" SortExpression="Ingredient_2" />
                <asp:BoundField DataField="Ingredient_3" HeaderText="Ingredient 3" SortExpression="Ingredient_3" />
                <asp:BoundField DataField="Ingredient_4" HeaderText="Ingredient 4" SortExpression="Ingredient_4" />
                <asp:BoundField DataField="Ingredient_5" HeaderText="Ingredient 5" SortExpression="Ingredient_5" />
                <asp:BoundField DataField="Preperation" HeaderText="Preperation" SortExpression="Preperation" />
                <asp:BoundField DataField="Notes" HeaderText="Notes" SortExpression="Notes" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            </Fields>
        </asp:DetailsView>
    
    </div>
    <div class="footer" >&#169 2014 Software Development & Design<br />

    </form>
</body>
</html>
