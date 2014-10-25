<%@ Page Language="VB" AutoEventWireup="false" CodeFile="newRecipe.aspx.vb" Inherits="newRecipe" %>

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
    
        <asp:SqlDataSource ID="sql_Recipes" runat="server" ConnectionString="<%$ ConnectionStrings:db_recipe %>" DeleteCommand="DELETE FROM [gbarnard_recipe_hw6] WHERE [recipeID] = @recipeID _
                    " InsertCommand="INSERT INTO [gbarnard_recipe_hw6] ([recipe_Name], [submitted_By], [Ingredient_1], [Ingredient_2], [Ingredient_3], [Ingredient_4], [Ingredient_5], [Preperation], [Notes])  _ 
                     VALUES (@recipe_Name, @submitted_By, @Ingredient_1, @Ingredient_2, @Ingredient_3, @Ingredient_4, @Ingredient_5, @Preperation, @Notes)" SelectCommand="SELECT * FROM [gbarnard_recipe_hw6]" UpdateCommand="UPDATE _
                     [gbarnard_recipe_hw6] SET [recipe_Name] = @recipe_Name, [submitted_By] = @submitted_By, [Ingredient_1] = @Ingredient_1, [Ingredient_2] = @Ingredient_2, [Ingredient_3] = @Ingredient_3, [Ingredient_4] = @Ingredient_4, _ 
                     [Ingredient_5] = @Ingredient_5, [Preperation] = @Preperation, [Notes] = @Notes WHERE [recipeID] = @recipeID">
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
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="recipeID" DataSourceID="sql_Recipes" DefaultMode="Insert" HorizontalAlign="Center">
            <InsertItemTemplate>
                <table>
                    <tr>
                        <td style="text-align:right;">
                            Recipe Name*
                        </td>
                        <td style="text-align:left;">
                            <asp:TextBox ID="tb_recipeName" runat="server" Text='<%# Bind("recipe_Name") %>' />
                        </td>
                        <%--<td>
                            <asp:RequiredFieldValidator ID="rfv_recipeName" runat="server" ErrorMessage="Please enter your recipe name" ControlToValidate="tb_recipeName" CssClass="validationError"></asp:RequiredFieldValidator>
                        </td>--%>
                 
                    </tr>
                    <tr>
                        <td style="text-align:right;">
                            Submitted By*
                        </td>
                        <td style="text-align:left;">
                            <asp:TextBox ID="tb_submittedBy" runat="server" Text='<%# Bind("submitted_By") %>' />
                        </td>
                        <%--<td>
                            <asp:RequiredFieldValidator ID="rfv_submittedBy" runat="server" ErrorMessage="Please enter your name" CssClass="validationError" ControlToValidate="tb_submittedBy"></asp:RequiredFieldValidator>
                        </td>--%>
                 
                    </tr>
                    <tr>
                        <td style="text-align:right;">
                             Ingredient 1*
                        </td>
                        <td style="text-align:left;">
                            '<asp:TextBox ID="tb_Ing1" runat="server" Text='<%# Bind("Ingredient_1") %>' />
                        </td>
                        <%--<td>
                            <asp:RequiredFieldValidator ID="rfv_Ing1" runat="server" ErrorMessage="Please enter the first ingredient" CssClass="validationError" ControlToValidate="tb_Ing1"></asp:RequiredFieldValidator>
                        </td>--%>
                 
                    </tr>
                     <tr>
                        <td style="text-align:right;">
                             Ingredient 2
                        </td>
                        <td style="text-align:left;">
                            <asp:TextBox ID="tb_ing2" runat="server" Text='<%# Bind("Ingredient_2") %>' />
                        </td>
                 
                    </tr>
                     <tr>
                        <td style="text-align:right;">
                             Ingredient 3
                        </td>
                        <td style="text-align:left;">
                             <asp:TextBox ID="tb_ing3" runat="server" Text='<%# Bind("Ingredient_3") %>' />
                        </td>
                 
                    </tr>
                     <tr>
                        <td style="text-align:right;">
                             Ingredient 4
                        </td>
                        <td style="text-align:left;">
                            <asp:TextBox ID="tb_ing4" runat="server" Text='<%# Bind("Ingredient_4") %>' />
                        </td>
                 
                    </tr>
                     <tr>
                        <td style="text-align:right;">
                             Ingredient 5
                        </td>
                        <td style="text-align:left;">
                            <asp:TextBox ID="tb_ing5" runat="server" Text='<%# Bind("Ingredient_5") %>' />
                        </td>
                 
                    </tr>
                     <tr>
                        <td style="text-align:right;">
                             Preperation*
                        </td>
                        <td style="text-align:left;">
                            <asp:TextBox ID="tb_prep" runat="server" Text='<%# Bind("Preperation") %>' />
                        </td>
                         <%--<td>
                            '<asp:RequiredFieldValidator ID="rfv_prep" runat="server" ErrorMessage="Please enter the steps for preperation" CssClass="validationError" ControlToValidate="tb_prep"></asp:RequiredFieldValidator>
                        </td>--%>
                 
                    </tr>
                     <tr>
                        <td style="text-align:right;">
                             Notes
                        </td>
                        <td style="text-align:left;">
                           <asp:TextBox ID="tb_notes" runat="server" Text='<%# Bind("Notes") %>' />
                 
                    </tr>
                     <tr>
                        <td style="text-align:right;">
                             <asp:Button ID="btn_Insert" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                        </td>
                        <td style="text-align:left;">
                           <asp:Button ID="btn_" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                 
                    </tr>

                </table>
               
               
            </InsertItemTemplate>
           
        </asp:FormView>
    
    </div>
    </form>
    <br />
    <br />
    <br />
    <div class="footer" >&#169 2014 Software Development & Design<br />
    </div>
    </body>
</html>
