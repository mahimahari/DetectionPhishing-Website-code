<%@ Page Language="C#" AutoEventWireup="true" CodeFile="domain_registration.aspx.cs" Inherits="domain_registration" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Domain Name Registration</title>
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
            <br />
            <table width="100%" align="center" >
<tr>
<td align="center" colspan="2" >
    <asp:Label ID="Label1" runat="server" Font-Size="Large" ForeColor="#660033" Text="Domain Name Registration"></asp:Label>
<br /><br />
</td>
</tr> 

<tr>
<td align="center" width="50%">
    <asp:Label ID="Label2" runat="server" Text="Domain Name" ></asp:Label>
    
    <br /><br />
</td>
<td align="left" width="50%">
    <asp:TextBox ID="TextBox1" runat="server" Width="139px"></asp:TextBox>
    <asp:DropDownList
        ID="DropDownList1" runat="server" Height="20px" Width="54px" 
        AutoPostBack="True" onselectedindexchanged="DropDownList1_SelectedIndexChanged">
        <asp:ListItem>Select</asp:ListItem>
        <asp:ListItem>.com</asp:ListItem>
        <asp:ListItem>.in</asp:ListItem>
        <asp:ListItem>.net</asp:ListItem>
        <asp:ListItem>.org</asp:ListItem>
        <asp:ListItem>co.in</asp:ListItem>
    </asp:DropDownList>
    &nbsp;
    <asp:Image ID="Image1" runat="server" Width="21px" Height="17px" />
    
    <br /><br />
</td>
</tr>  
<tr>
<td align="center" width="50%">
    <asp:Label ID="Label3" runat="server" Text="IP Address" ></asp:Label><br /><br />
</td>
<td align="left" width="50%">
    <asp:TextBox ID="TextBox2" runat="server" Width="199px"></asp:TextBox><br /><br />
</td>
</tr>  
<tr>
<td align="center" width="50%">
    <asp:Label ID="Label7" runat="server" Text="Username" ></asp:Label><br /><br />
</td>
<td align="left" width="50%">
    <asp:TextBox ID="TextBox6" runat="server" Width="199px"></asp:TextBox><br /><br />
</td>
</tr>
<tr>
<td align="center" width="50%">
    <asp:Label ID="Label8" runat="server" Text="Password" ></asp:Label><br /><br />
</td>
<td align="left" width="50%">
    <asp:TextBox ID="TextBox7" runat="server" Width="199px" ReadOnly="True"></asp:TextBox>&nbsp;&nbsp;&nbsp;<asp:Button
        ID="Button1" runat="server" Text="Generate" onclick="Button1_Click" 
        Width="85px" /><br /><br />
</td>
</tr>
<tr>
<td align="center" width="50%">
    <asp:Label ID="Label4" runat="server" Text="Domain Holder Name" ></asp:Label><br /><br />
</td>
<td align="left" width="50%">
    <asp:TextBox ID="TextBox3" runat="server" Width="199px"></asp:TextBox><br /><br />
</td>
</tr> 
<tr>
<td align="center" width="50%">
    <asp:Label ID="Label5" runat="server" Text=" Address" ></asp:Label><br /><br />
</td>
<td align="left" width="50%">
    <asp:TextBox ID="TextBox4" runat="server" TextMode="MultiLine" Width="199px" 
        Height="47px"></asp:TextBox><br /><br />
</td>
</tr>            
       
      <tr>
<td align="center" colspan="2" >
    <asp:Button ID="Button2" runat="server" Text="Save details" Height="43px" 
        Width="165px" onclick="Button2_Click" />
  
  
  <br /><br />
    <asp:Label ID="error" runat="server" Text="Label" Visible="false" ></asp:Label>
</td>
</tr>  
       
         </table>
    </div>
    </form>
</body>
</html>
