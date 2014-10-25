'Add these two imports so you have access to the mail features
Imports System.Net.Mail
Imports System.Net

Partial Class contact
    Inherits System.Web.UI.Page

    Protected Sub btn_Send_Click(sender As Object, e As EventArgs) Handles btn_Send.Click
        'declare variables to create a new mail message and client connection
        Dim msg As New MailMessage
        Dim client As New SmtpClient

        msg.To.Add("grant-barnard@uiowa.edu") 'destionation email address
        msg.From = New MailAddress(senderEmail.Text) 'get the address from the textbox
        msg.Subject = "web contact form test" 'set the message subject line
        msg.Body = senderMessage.Text 'get the message body from the textbox

        client.Host = "smtp.gmail.com"
        client.Port = 587
        client.Credentials = New NetworkCredential("gbarnard", "racewave21")
        client.EnableSsl = True
        client.Send(msg)


        senderEmail.Text = ""
        senderMessage.Text = ""

        lbl_Sent.Text = "Thank you. Your message has been sent."

        Response.AddHeader("REFRESH", "2;URL=default.aspx")
    End Sub
End Class
