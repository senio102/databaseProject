﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="homePage.aspx.cs" Inherits="houseListings.homePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="New House" />
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Search Houses" />
    
        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Update" />
    
    </div>
    </form>
</body>
</html>
