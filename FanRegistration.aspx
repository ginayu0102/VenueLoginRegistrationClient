<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FanRegistration.aspx.cs" Inherits="FanRegistration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="VenueLoginClientCSS.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table>
        <tr>
            <td>Name</td>
            <td class="auto-style1">
                <asp:TextBox ID="NameTextBox" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="NameRequiredFieldValidator" runat="server" ErrorMessage="Name Required" ControlToValidate="NameTextBox"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
        <td>Gender</td>
        <td>
                <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:RadioButtonList>
        </td>
        </tr>
        <tr>
            <td>Favorite Genre</td>
            <td>
                <asp:CheckBoxList ID="CheckBoxList1" runat="server">
                    <asp:ListItem>Alternative</asp:ListItem>
                    <asp:ListItem>Blues</asp:ListItem>
                    <asp:ListItem>Classical</asp:ListItem>
                    <asp:ListItem>Country</asp:ListItem>
                    <asp:ListItem>Dance</asp:ListItem>
                    <asp:ListItem>Hip Hop / Rap</asp:ListItem>
                    <asp:ListItem>Jazz</asp:ListItem>
                    <asp:ListItem>Latin</asp:ListItem>
                    <asp:ListItem>Pop</asp:ListItem>
                    <asp:ListItem>R&amp;B</asp:ListItem>
                    <asp:ListItem>Rock</asp:ListItem>
                </asp:CheckBoxList></td>
        </tr>
        <tr>
            <td>Email</td>
            <td class="auto-style1">
                <asp:TextBox ID="EmailTextBox" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="EmailRequiredFieldValidator" runat="server" ErrorMessage="Email Address Required" ControlToValidate="EmailTextBox"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="EmailRegularExpressionValidator" runat="server" ErrorMessage="Not a valid email" ControlToValidate="EmailTextBox" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>User Name</td>
            <td class="auto-style1">
                <asp:TextBox ID="UserNameTextBox" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="UserNameRequiredFieldValidator" runat="server" ErrorMessage="User Name Required" ControlToValidate="UserNameTextBox"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Password</td>
            <td class="auto-style1">
                <asp:TextBox ID="PasswordTextBox" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="PasswordRequiredFieldValidator" runat="server" ErrorMessage="Password Required" ControlToValidate="PasswordTextBox"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Confirmed Password</td>
            <td class="auto-style1">
                <asp:TextBox ID="ConfirmedTextBox" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="ConfirmedRequiredFieldValidator" runat="server" ErrorMessage="Confirmed Password Required" ControlToValidate="ConfirmedTextBox"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Passwords don't match" ControlToCompare="PasswordTextBox" ControlToValidate="ConfirmedTextBox"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="SubmitButton" runat="server" Text="Submit" OnClick="SubmitButton_Click" />
                <asp:Label ID="ResultLabel" runat="server" Text=""></asp:Label>
            </td>
        </tr>
    </table>
    </div>
    </form>
</body>
</html>
