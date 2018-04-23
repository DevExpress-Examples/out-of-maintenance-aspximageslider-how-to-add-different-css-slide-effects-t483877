Imports System
Imports System.Collections.Generic
Imports System.Linq
Imports System.Web
Imports System.Web.UI
Imports System.Web.UI.WebControls

Partial Public Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Page_Init(ByVal sender As Object, ByVal e As EventArgs)
        imageSlider.CssClass = comboSelectEffect.Value.ToString()

    End Sub

    Protected Sub comboSelectEffect_SelectedIndexChanged(ByVal sender As Object, ByVal e As EventArgs)

        imageSlider.CssClass = comboSelectEffect.Value.ToString()
    End Sub
End Class