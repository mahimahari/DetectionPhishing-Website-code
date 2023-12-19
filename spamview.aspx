<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="spamview.aspx.cs" Inherits="Default4" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">


        .style2
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <br />
    </p>
    <p>
        <br />
    </p>
    <p style="font-size: 18px; font-weight: bold; color: #FF0000">
        <asp:Label ID="Label1" runat="server" Font-Underline="True" ForeColor="#000099" 
            Text="Spam"></asp:Label>
    </p>
    <p>
        <table class="style2" 
            style="color: #000000; font-weight: bold; font-size: 14px">
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="From"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtfrom" runat="server" Width="532px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    Subject</td>
                <td>
                    <asp:TextBox ID="txtsub" runat="server" Width="527px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Attachments"></asp:Label>
                </td>
                <td>
&nbsp;&nbsp;
                    <asp:Label ID="lblattachment" runat="server"></asp:Label>
                                    </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    Body</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:TextBox ID="txtbody" runat="server" Height="311px" Width="633px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Report as Spam" 
            Width="157px" />
        &nbsp;</p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
 
</asp:Content>

