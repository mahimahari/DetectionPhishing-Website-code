<%@ Page Language="C#" AutoEventWireup="true" CodeFile="view_users.aspx.cs" Inherits="view_users" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
<img src="browsers-768x360.jpg" 
            style="width: 958px; height: 269px" />
            <br />
            <table align="right" width="30%">
            <tr>
            <td align="right" >
                <asp:LinkButton ID="LinkButton1" runat="server" Text="Home" PostBackUrl="~/admin_home.aspx"></asp:LinkButton>
            </td>
            </tr>
            </table>
            <table width="100%" align="center" >
            <tr>
            <td align="center" >
                <asp:Label ID="Label1" runat="server" Text="User Details" Font-Size="Large" ForeColor="#660033" ></asp:Label><br /><br />
            </td>
            </tr>
            <tr>
            <td align="center">
             <asp:GridView ID="GridView1" runat="server" BackColor="White" 
                    BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4">
                 <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                 <RowStyle BackColor="White" ForeColor="#330099" />
                 <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                 <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                 <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                </asp:GridView>
            </td>
            </tr>
               
            </table>
            
            
    </div>
    </form>
</body>
</html>
