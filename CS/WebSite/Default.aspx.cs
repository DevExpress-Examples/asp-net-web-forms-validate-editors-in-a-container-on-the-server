using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DevExpress.Web;

public partial class _Default : System.Web.UI.Page {


    protected void Page_Init (object sender, EventArgs e) {

    }

    protected void ASPxCallbackPanelDemo_Callback (object sender, DevExpress.Web.CallbackEventArgsBase e) {
        ASPxCallbackPanel callbackPanel = (ASPxCallbackPanel)sender;
        bool isValid = ASPxEdit.ValidateEditorsInContainer(callbackPanel);
    }
    protected void ASPxTextBoxTest_Validation (object sender, ValidationEventArgs e) {
        ASPxTextBox txt = sender as ASPxTextBox;
        int val;
        bool result = Int32.TryParse(txt.Text, out val);
        e.IsValid = result;
        e.ErrorText = "An input value should be a number";
    }
}
