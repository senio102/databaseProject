<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="searchHouse.aspx.cs" Inherits="houseListings.searchHouse" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <br />
        <asp:Label ID="Label1" runat="server" Font-Underline="True" Text="List of Houses:"></asp:Label>
        <br />
        <br />
        <br />
    
    </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="house_id" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:BoundField DataField="house_id" HeaderText="house_id" ReadOnly="True" SortExpression="house_id" />
                <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                <asp:BoundField DataField="bedroom" HeaderText="bedroom" SortExpression="bedroom" />
                <asp:BoundField DataField="bathroom" HeaderText="bathroom" SortExpression="bathroom" />
                <asp:BoundField DataField="zip" HeaderText="zip" SortExpression="zip" />
                <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
                <asp:BoundField DataField="us_state" HeaderText="us_state" SortExpression="us_state" />
                <asp:BoundField DataField="sqft" HeaderText="sqft" SortExpression="sqft" />
                <asp:BoundField DataField="house_year" HeaderText="house_year" SortExpression="house_year" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:masterDB %>" SelectCommand="SELECT * FROM [House_All]"></asp:SqlDataSource>
        <br />
    
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Back" />
    
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="house_id" DataValueField="house_id">
        </asp:DropDownList>
&nbsp;
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Delete" />
    </form>
</body>
</html>
