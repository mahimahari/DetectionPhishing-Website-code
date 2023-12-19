<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="spam.aspx.cs" Inherits="Default4" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Underline="True" 
            ForeColor="#000099" Text="Spam"></asp:Label>
    </p>
    <p>
    <br />
        <asp:GridView ID="GridView1" runat="server" Width="676px" 
            onrowdatabound="GridView1_RowDataBound" 
            onselectedindexchanging="GridView1_SelectedIndexChanging" 
            onselectedindexchanged="GridView1_SelectedIndexChanged" 
            onrowcommand="GridView1_RowCommand" CellPadding="4" ForeColor="#333333" 
            GridLines="None" style="font-family: Verdana; font-size: small">
            <RowStyle BackColor="#EFF3FB" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <EditRowStyle BackColor="#2461BF" />
            <AlternatingRowStyle BackColor="White" />
            
            
           
        </asp:GridView>
         </p>

</asp:Content>

