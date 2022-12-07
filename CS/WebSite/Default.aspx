<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.v15.1, Version=15.1.15.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web" TagPrefix="dx" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>How to validate editors in container </title>

    <script type="text/javascript" language="javascript">
        function Validate(s, e) {
            if (ASPxClientEdit.ValidateGroup('testGroup'))
                ClientCallbackPanelDemo.PerformCallback('');
        }
    </script>

</head>
<body>
    <form id="form1" runat="server">
    <div>
        <dx:ASPxButton ID="ASPxButtonSave" runat="server" Text="Validate" AutoPostBack="False">
            <ClientSideEvents Click="Validate" />
        </dx:ASPxButton>
        <br />
        <dx:ASPxCallbackPanel ID="ASPxCallbackPanelDemo" runat="server"  HideContentOnCallback="False"
            ClientInstanceName="ClientCallbackPanelDemo" OnCallback="ASPxCallbackPanelDemo_Callback">
            <PanelCollection>
                <dx:PanelContent ID="PanelContent1" runat="server">
                    <table cellspacing="0" cellpadding="4" runat="server" id="serverContainer">
                        <tr>
                            <td style="width: 60px;">
                                <dx:ASPxLabel runat="server" ID="NameLabel" AssociatedControlID="txtNum1" Text="Number 1:" />
                            </td>
                            <td>
                                <dx:ASPxTextBox ID="txtNum1" runat="server" Width="170px" OnValidation="ASPxTextBoxTest_Validation">
                                    <ValidationSettings ValidationGroup="testGroup">
                                        <RequiredField IsRequired="True" ErrorText="Number 1 is required" />
                                    </ValidationSettings>
                                </dx:ASPxTextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 60px;">
                                <dx:ASPxLabel runat="server" ID="ASPxLabel1" AssociatedControlID="txtNum2" Text="Number 2:" />
                            </td>
                            <td>
                                <dx:ASPxTextBox ID="txtNum2" runat="server" Width="170px" OnValidation="ASPxTextBoxTest_Validation">
                                    <ValidationSettings ValidationGroup="testGroup">
                                        <RequiredField IsRequired="True" ErrorText="Number 2 is required"/>
                                    </ValidationSettings>
                                </dx:ASPxTextBox>
                            </td>
                        </tr>
                    </table>
                </dx:PanelContent>
            </PanelCollection>
        </dx:ASPxCallbackPanel>
    </div>
    </form>
</body>
</html>
