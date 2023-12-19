<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin_home.aspx.cs" Inherits="admin_home" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Admin</title>
   
    <style type="text/css">
        .style1
        {
            width: 894px;
        }
        .style2
        {
            font-family: Verdana;
        }
        .style3
        {
            font-size: small;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    <img src="browsers-768x360.jpg" 
            style="width: 958px; height: 269px" />
    <table width="100%" align="center" >
  <tr>
  <td align="center" colspan="3" >
      <asp:Label ID="Label1" runat="server" ForeColor="#660033" Font-Size="Large" Text="Welcome Admin"></asp:Label>
  <br /><br /></td>
  </tr>
  
  <tr>
  <td align="left" >
  <table width="30%">
  <tr>
  <%--<td> 
      <asp:LinkButton ID="LinkButton1" runat="server" Text="Domain Name Registration" 
          PostBackUrl="~/domain_registration.aspx"></asp:LinkButton>
  </td>--%>
  <td>
       <asp:LinkButton ID="LinkButton2" runat="server" Text="User details" 
           onclick="LinkButton2_Click" PostBackUrl="~/view_users.aspx"></asp:LinkButton>
 
  </td>
  <td>
       <asp:LinkButton ID="LinkButton3" runat="server" Text="Log Out" 
           PostBackUrl="~/Default.aspx"></asp:LinkButton>
 
  </td>
  </tr>
  </table>
  </td>
  
  </tr>
   
    </table>
         
        
              
    </div>
    </form>
</body>
</html>
