
Partial Class detailsview
    Inherits System.Web.UI.Page

    Protected Sub DetailsView1_ItemDeleted(sender As Object, e As DetailsViewDeletedEventArgs) Handles DetailsView1.ItemDeleted

        Dim deletedRecipe As String = e.Values("recipe_Name").ToString()

        lbl_deletedRecipe.Text = deletedRecipe & " has been deleted from the database"


        Response.AddHeader("REFRESH", "3;URL=./default.aspx")

        'Response.Redirect("./default.aspx")



    End Sub

    Protected Sub DetailsView1_ItemUpdated(sender As Object, e As DetailsViewUpdatedEventArgs) Handles DetailsView1.ItemUpdated
        Response.AddHeader("REFRESH", "3;URL=./default.aspx")
    End Sub

   
End Class
