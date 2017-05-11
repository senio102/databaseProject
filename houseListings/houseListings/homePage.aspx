<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="homePage.aspx.cs" Inherits="houseListings.homePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
#detail_img *{max-height:inherit;max-width:inherit}.iol_imc.trans .mainImage{background-image:url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABQAAAAUCAYAAACNiR0NAAAAOklEQVQ4T+2NoQ0AMAzD9v+zOaEjg44WUBhLVlHcI2kSUxr0pjToTdkPvvuFnpANemhMNuihMbkc1FwmpxSbtQZHOAAAAABJRU5ErkJggg==)}.iol_imc .mainImage{display:block;height:auto;width:auto;margin:auto;cursor:pointer}
        .auto-style1 {
            border-collapse: collapse;
            list-style-type: none;
            border-style: none;
            border-color: inherit;
            border-width: 0;
            margin: 0;
            padding: 0;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>

        <table style="width:100%">
                 <tr>
                     <td style="width: 100%; margin-left: 40px;" align="center">   
                        <asp:Label ID="Label1" runat="server" Text="House Database" Font-Names="Bookman Old Style" Font-Size="X-Large" Font-Underline="False" ForeColor="#339966"></asp:Label>
                                 <br />
        <br />
        <br />
                         <span id="view_image_main" data-defer-back-button-event="">
                         <img alt="Image result for house clipart" class="auto-style1" data-bm="19" src="http://www.clker.com/cliparts/j/j/T/U/G/2/go-home-hi.png" style="border-spacing: 0; height: 156px; width: 170px;" tabindex="0" title="View source image" /><br />
                         <br />
                         <br />
                         </span>
        <br />                                               
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="New House" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Search Houses" />
    
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
                        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Update" />
                 </tr>
                 <tr>
                     <td style="width: 100%">
                     </td>
                 </tr>
        </table>
    </div>
    </form>
</body>
</html>
