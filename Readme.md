<!-- default file list -->
*Files to look at*:

* [Default.aspx](./CS/WebSite/Default.aspx) (VB: [Default.aspx](./VB/WebSite/Default.aspx))
* [Default.aspx.cs](./CS/WebSite/Default.aspx.cs) (VB: [Default.aspx](./VB/WebSite/Default.aspx))
<!-- default file list end -->
# How to validate editors in the container on the server side


<p>The current version of ASP.NET controls doesn't allow you to set the <a href="http://msdn.microsoft.com/en-us/library/system.web.ui.page.isvalid.aspx"><u>Page.IsValid</u></a> property programmatically to validate our editors. However, it is possible to use the following static methods for this purpose: <a href="http://documentation.devexpress.com/#AspNet/DevExpressWebASPxEditorsASPxEdit_AreEditorsValidtopic"><u>ASPxEdit.AreEditorsValid</u></a> and <a href="http://documentation.devexpress.com/#AspNet/DevExpressWebASPxEditorsScriptsASPxClientEdit_AreEditorsValidtopic"><u>ASPxClientEdit.AreEditorsValid</u></a> methods, as it is illustrated in the <a href="https://www.devexpress.com/Support/Center/p/E1844">E1844</a> example. Another  solution is to use the <a href="http://documentation.devexpress.com/#AspNet/DevExpressWebASPxEditorsASPxEdit_ValidateEditorsInContainertopic"><u>ASPxEdit.ValidateEditorsInContainer</u></a> method. Note that it re-runs validation for each control even if a given control has already been validated. </p><p><strong>See also:</strong><br />
<a href="https://www.devexpress.com/Support/Center/p/E1844">How to check the validation state of editors using the AreEditorsValid method</a><br />
<a href="https://www.devexpress.com/Support/Center/p/E124">How to raise validation on the client side</a></p>

<br/>


