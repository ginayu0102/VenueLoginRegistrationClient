<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddShow.aspx.cs" Inherits="AddShow" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="VenueLoginClientCSS.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h1>Add New Show</h1>

        <table>
        <tr>
            <td>Show Name*</td>
            <td>
                <asp:TextBox ID="ShowNameTextBox" runat="server"></asp:TextBox></td>
            <td>
                <asp:RequiredFieldValidator ID="SNRequiredFieldValidator" runat="server" ErrorMessage="Show Name Required" ControlToValidate="ShowNameTextBox"></asp:RequiredFieldValidator></td>
        </tr>  
            
        <tr>
            <td>Show Date*</td>
            <td>
                <asp:TextBox ID="ShowDateTextBox" runat="server"></asp:TextBox></td>

            <%--<td>
                <asp:DropDownList ID="DateDropDownList" runat="server"></asp:DropDownList>
                <asp:Calendar ID="ShowDateCalendar" runat="server"></asp:Calendar>
            </td>--%>

            <td>
                <asp:RequiredFieldValidator ID="SDRequiredFieldValidator" runat="server" ErrorMessage="Show Date Required" ControlToValidate="ShowDateTextBox"></asp:RequiredFieldValidator></td>
        </tr>
            
        <tr>
            <td>Show Time*</td>
            <td>
                <asp:TextBox ID="ShowTimeTextBox" runat="server"></asp:TextBox></td>
            <td>
                <asp:RequiredFieldValidator ID="STRequiredFieldValidator" runat="server" ErrorMessage="Show Time Required" ControlToValidate="ShowTimeTextBox"></asp:RequiredFieldValidator></td>
        </tr> 

        <tr>
            <td>Show Ticket Information*</td>
            <td>
                <asp:TextBox ID="TicketInfoTextBox" runat="server"></asp:TextBox></td>
            <td>
                <asp:RequiredFieldValidator ID="TIRequiredFieldValidator" runat="server" ErrorMessage="Information Required" ControlToValidate="TicketInfoTextBox"></asp:RequiredFieldValidator></td>
        </tr> 

        <tr>
            <td>Show Artist</td>
            <td>
                <asp:DropDownList ID="ArtistDropDownList" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ArtistDropDownList_SelectedIndexChanged"></asp:DropDownList>
                </td>

        </tr>
            <asp:Panel ID="Panel1" runat="server">
            <tr>
                <td>Artist Name</td>
                <td>
                    <asp:TextBox ID="ArtistNameTextBox" runat="server"></asp:TextBox></td>
            </tr>

            <tr>
                <td>Artist Email</td>
                <td>
                    <asp:TextBox ID="ArtistEmailTextBox" runat="server"></asp:TextBox></td>

            </tr>

            <tr>
                <td>Artist Website</td>
                <td>
                    <asp:TextBox ID="ArtistWebsiteTextBox" runat="server"></asp:TextBox></td>
            </tr>

            <tr>
                <td><asp:Button ID="SaveArtistButton" runat="server" Text="Add Artist" OnClick="SaveArtistButton_Click" CausesValidation="false"/></td>


            </tr>
            </asp:Panel>

        <tr>
            <td>Artist Start Time*</td>
            <td>
                <asp:TextBox ID="ASTTextBox" runat="server"></asp:TextBox></td>
            <td>
                <asp:RequiredFieldValidator ID="ASTRequiredFieldValidator" runat="server" ErrorMessage="Field Required" ControlToValidate="ASTTextBox"></asp:RequiredFieldValidator></td>
        </tr>

        <tr>
            <td>Additional Info</td>
            <td>
                <asp:TextBox ID="AdditionalTextBox" runat="server"></asp:TextBox></td>
            
        </tr>

        <tr id="rfText"><td>*Required Field</td></tr>

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
