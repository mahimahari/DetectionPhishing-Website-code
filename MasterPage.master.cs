using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Xml.Linq;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = Session["username"].ToString()+"";
        if (Label1.Text == "Admin")
        {
            LinkButton2.Visible = true;
            LinkButton3.Visible = true;
        }
        else
        {
            LinkButton2.Visible = false;
            LinkButton3.Visible = false;
        }
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Server.Transfer("viewUsers.aspx");
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Server.Transfer("viewBlockedUsers.aspx");
    }
}
