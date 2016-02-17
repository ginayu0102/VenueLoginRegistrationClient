<%@ Page Language="C#" AutoEventWireup="true" CodeFile="VenueRegistration.aspx.cs" Inherits="VenueRegistration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="VenueLoginClientCSS.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h1>Venue Registration</h1>
        <table>
       <tr>
            <td>Venue Name*</td>
            <td>
            <asp:TextBox ID="VenueNameTextBox" runat="server"></asp:TextBox></td>
            <td>
                <asp:RequiredFieldValidator ID="VNRequiredFieldValidator" runat="server" ErrorMessage="Venue name required" ControlToValidate="VenueNameTextBox"></asp:RequiredFieldValidator></td>
        </tr>

        <tr>
            <td>Venue Address*</td>
            <td>
                <asp:TextBox ID="AddressTextBox" runat="server"></asp:TextBox></td>
            <td>
                <asp:RequiredFieldValidator ID="AddressRequiredFieldValidator" runat="server" ErrorMessage="Address required" ControlToValidate="AddressTextBox"></asp:RequiredFieldValidator></td>
        </tr>

        <tr>
            <td>Venue City*</td>
            <td>
                <asp:TextBox ID="CityTextBox" runat="server"></asp:TextBox></td>
            <td>
                <asp:RequiredFieldValidator ID="CityRequiredFieldValidator" runat="server" ErrorMessage="City required" ControlToValidate="CityTextBox"></asp:RequiredFieldValidator></td>
        </tr>

        <tr>
            <td>Venue State*</td>
            <td>
                <asp:TextBox ID="StateTextBox" runat="server"></asp:TextBox></td>
            <td>
                <asp:RequiredFieldValidator ID="stateRequiredFieldValidator" runat="server" ErrorMessage="State required" ControlToValidate="StateTextBox"></asp:RequiredFieldValidator></td>
        </tr>

        <tr>
            <td>Venue Zip Code*</td>
            <td>
                <asp:TextBox ID="ZipTextBox" runat="server"></asp:TextBox></td>
            <td>
                <asp:RequiredFieldValidator ID="ZipRequiredFieldValidator" runat="server" ErrorMessage="Zip required" ControlToValidate="ZipTextBox"></asp:RequiredFieldValidator></td>
        </tr>

        <tr>
            <td>Venue Phone*</td>
            <td>
                <asp:TextBox ID="PhoneTextBox" runat="server"></asp:TextBox></td>
            <td>
                <asp:RequiredFieldValidator ID="PhoneRequiredFieldValidator" runat="server" ErrorMessage="Phone required" ControlToValidate="PhoneTextBox"></asp:RequiredFieldValidator></td>
        </tr>
        
        <tr>
            <td>Email*</td>
            <td>
                <asp:TextBox ID="EmailTextBox" runat="server"></asp:TextBox></td>
            <td>
                <asp:RequiredFieldValidator ID="EmailRequiredFieldValidator" runat="server" ErrorMessage="Email required" ControlToValidate="EmailTextBox"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="EmailRegularExpressionValidator" runat="server" ControlToValidate="EmailTextBox" ErrorMessage="Invalid Email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
       
        <tr>
            <td>Venue Webpage</td>
            <td>
                <asp:TextBox ID="WebpageTextBox" runat="server"></asp:TextBox></td>
            
        </tr>
        
       
        <tr>
            <td>User Name*</td>
            <td>
            <asp:TextBox ID="UserNameTextBox" runat="server"></asp:TextBox></td>
            <td>
            <asp:RequiredFieldValidator ID="UNRequiredFieldValidator" runat="server" ErrorMessage="User name required" ControlToValidate="UserNameTextBox"></asp:RequiredFieldValidator></td>
        </tr>
            
        <tr>
            <td>Password*</td>
            <td>
            <asp:TextBox ID="PasswordTextBox" runat="server" TextMode="Password"></asp:TextBox></td>
            <td>
            <asp:RequiredFieldValidator ID="PasswordRequiredFieldValidator" runat="server" ErrorMessage="Password required" ControlToValidate="PasswordTextBox"></asp:RequiredFieldValidator></td>
        </tr>
        
        <tr>
            <td>Confirm Password*</td>
            <td>
            <asp:TextBox ID="ConfirmTextBox" runat="server" TextMode="Password"></asp:TextBox></td>
            <td>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password not matched" ControlToValidate="ConfirmTextBox" ControlToCompare="PasswordTextBox"></asp:CompareValidator></td>
        </tr>
        <tr id="rfText"><td>*Required Fields</td></tr>
        <tr>
            
            <td>
            <asp:Button ID="SubmitButton" runat="server" Text="Submit" OnClick="SubmitButton_Click" /></td>
            <td>
            <asp:Label ID="ResultLabel" runat="server" Text=""></asp:Label></td>

        </tr>

        </table>
    </div>
    </form>
</body>
</html>
