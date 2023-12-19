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

public partial class Default4 : System.Web.UI.Page
{
    WebService ws = new WebService();
    DataSet ds=new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {
        string user = Session["username"].ToString();
        ds = ws.loaddeletegrid(user);
        GridView1.DataSource=ds;
        GridView1.DataBind();
        if (Convert.ToInt16(GridView1.Rows.Count) == 0)
        {
        }
        else
        {
            GridView1.HeaderRow.Cells[1].Text = "Mail To";
            GridView1.HeaderRow.Cells[2].Text = "Mail From";
        }



    }
}
