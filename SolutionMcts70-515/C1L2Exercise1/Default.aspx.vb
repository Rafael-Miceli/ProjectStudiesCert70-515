
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub TimeLabel_Load(sender As Object, e As System.EventArgs) Handles TimeLabel.Load
        TimeLabel.Text = DateTime.Now.ToString()
    End Sub
End Class
