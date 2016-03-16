<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FanFollowList.aspx.cs" Inherits="FanFollowList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="VenueLoginClientCSS.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <p>Select your artists and click "Add Artists" to add them</p>
        <asp:CheckBoxList ID="CheckBoxList1" runat="server" RepeatColumns="3"></asp:CheckBoxList>
         <asp:Button ID="AddArtistButton" runat="server" Text="Add Artists" OnClick="AddArtistButton_Click" />
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
    </div>
    </form>
</body>
</html>
