using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;


public partial class Default2 : System.Web.UI.Page
{
    WebService web1 = new WebService();
   string  pagetemplate1;
    string pagetemplate2;
    Int32 myvalue;


    protected void Page_Load(object sender, EventArgs e)
    {

        loadgrid();
        GridView1.RowCommand += GridView1_RowCommand;

        
    }

    public void loadgrid()
    {
        DataSet dss = new DataSet();
        dss = web1.loadinbox();
        GridView1.DataSource = dss;
        GridView1.DataBind();

    }
 

    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
           
            Session["mailid"] = pagetemplate1;
        }


    }
    protected override void Render(System.Web.UI.HtmlTextWriter writer)
    {
        foreach (GridViewRow row in GridView1.Rows)
        {
            if (row.RowType == DataControlRowType.DataRow)
            {
                row.Attributes["onmouseover"] =
                   "this.style.cursor='hand';this.style.textDecoration='underline';";
                row.Attributes["onmouseout"] =
                   "this.style.textDecoration='none';";
               
                row.Attributes["onclick"] =
                 ClientScript.GetPostBackClientHyperlink(GridView1,
                    "Select$" + row.DataItemIndex, true);
            }
        }
        base.Render(writer);
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

        int ij = Convert.ToInt32(GridView1.SelectedRow.Cells[0].Text);
        Session["mid"] = ij.ToString();
        string st = "Admin";
        string st1 = Session["username"].ToString();
        if (string.Equals(st,st1))
            Response.Redirect("Adminmailview.aspx");
        else 
        Response.Redirect("mailview.aspx");
        //GridViewRow row = GridView1.SelectedRow;
        //myvalue= Convert.ToInt32(row.Attributes["mid"].ToString());


        
    }
    protected void GridView1_RowCommand(object sender, System.Web.UI.WebControls.GridViewCommandEventArgs e)
    {
      
    }
    protected void  GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {
    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        int j = e.NewEditIndex;
        Response.Redirect("mailview.aspx");
    }
}
