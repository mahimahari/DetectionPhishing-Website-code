<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
    <br />
        <asp:GridView ID="GridView1" runat="server" Width="676px" 
            onrowdatabound="GridView1_RowDataBound" 
            onselectedindexchanging="GridView1_SelectedIndexChanging" 
            onselectedindexchanged="GridView1_SelectedIndexChanged" 
            onrowcommand="GridView1_RowCommand" onrowediting="GridView1_RowEditing" 
            BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
            CellPadding="3">
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <RowStyle ForeColor="#000066" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            
            
           
        </asp:GridView>
         <script type="text/javascript">
             // format current row
             function SelectRow(row) {
                 var _selectColor = "#303030";
                 var _normalColor = "#909090";
                 var _selectFontSize = "3em";
                 var _normalFontSize = "2em";
                 // get all data rows - siblings to current
                 var _rows = row.parentNode.childNodes;
                 // deselect all data rows
                 try {
                     for (i = 0; i < _rows.length; i++) {
                         var _firstCell = _rows[i].getElementsByTagName("td")[0];
                         _firstCell.style.color = _normalColor;
                         _firstCell.style.fontSize = _normalFontSize;
                         _firstCell.style.fontWeight = "normal";
                     }
                 }
                 catch (e) { }
                 // select current row (formatting applied to first cell)
                 var _selectedRowFirstCell = row.getElementsByTagName("td")[0];
                 _selectedRowFirstCell.style.color = _selectColor;
                 _selectedRowFirstCell.style.fontSize = _selectFontSize;
                 _selectedRowFirstCell.style.fontWeight = "bold";
             }
</script>
</p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
</asp:Content>

