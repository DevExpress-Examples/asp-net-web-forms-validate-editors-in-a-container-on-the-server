Imports Microsoft.VisualBasic
Imports System
Imports System.Collections.Generic
Imports System.Linq
Imports System.Web
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports DevExpress.Web

Partial Public Class _Default
	Inherits System.Web.UI.Page


	Protected Sub Page_Init(ByVal sender As Object, ByVal e As EventArgs)

	End Sub

	Protected Sub ASPxCallbackPanelDemo_Callback(ByVal sender As Object, ByVal e As DevExpress.Web.CallbackEventArgsBase)
		Dim callbackPanel As ASPxCallbackPanel = CType(sender, ASPxCallbackPanel)
		Dim isValid As Boolean = ASPxEdit.ValidateEditorsInContainer(callbackPanel)
	End Sub
	Protected Sub ASPxTextBoxTest_Validation(ByVal sender As Object, ByVal e As ValidationEventArgs)
		Dim txt As ASPxTextBox = TryCast(sender, ASPxTextBox)
		Dim val As Integer
		Dim result As Boolean = Int32.TryParse(txt.Text, val)
		e.IsValid = result
		e.ErrorText = "An input value should be a number"
	End Sub
End Class
