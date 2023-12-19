<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" ValidateRequest="false" CodeFile="mailview.aspx.cs" Inherits="Default4" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style2
        {
            width: 100%;
        }
        .style4
        {
            font-family: Verdana;
        }
        .style5
        {
            font-family: Verdana;
            font-size: small;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <br />
    </p>
    <p style="font-size: 18px; font-weight: bold; color: #FF0000">
        <asp:Label ID="Label1" runat="server" Font-Underline="True" ForeColor="#000099" 
            Text=" Mail"></asp:Label>
    </p>
    <p>
        <table class="style2" 
            style="color: #000000; font-weight: bold; font-size: 14px">
            <tr>
                <td class="style3">
                    <asp:Label ID="Label3" runat="server" Text="From"></asp:Label>
                </td>
                <td class="style5">
                    <asp:TextBox ID="txtfrom" runat="server" Width="532px" 
                        style="font-family: Verdana; font-size: small"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    Subject</td>
                <td class="style5">
                    <asp:TextBox ID="txtsub" runat="server" Width="527px" 
                        style="font-family: Verdana; font-size: small"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
           
            <tr>
                <td class="style3">
                    Body</td>
                <td class="style3">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td>
                    <span class="style3">
                    <asp:Label ID="lblMail" runat="server"></asp:Label>
                    </span><span class="style4"><span class="style3">
                    <asp:TextBox ID="txtbody" runat="server" Height="18px" Width="54px" 
                        TextMode="MultiLine" Visible="False"></asp:TextBox>
                    </span></span>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</p>
    <p style="font-family: Verdana; font-size: small; margin-top: 19px">
    <br />
     <asp:Label ID="Label4" runat="server" Font-Bold="true"  Text="Safe links among above contents has been listed below :"></asp:Label><br /><br />
        <asp:ListBox ID="ListBox2" runat="server" AutoPostBack="True" Height="73px" 
            onselectedindexchanged="ListBox2_SelectedIndexChanged" OnClientClick="aspnetFrom.target='_blank';" Width="594px">
        </asp:ListBox>
        <br /><br />
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;<asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Delete Mail" 
            Width="157px" style="font-family: Verdana; font-size: small" 
            Visible="False" />
        </p>
    <p>
    </p>
    <p>
    </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
   
    
</asp:Content>

