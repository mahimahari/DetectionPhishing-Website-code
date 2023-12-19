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
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlDataReader dr;
        string usrid = (string)Session["username"];
        string mid = (string)Session["mid"];
        dr = ws.loadinboxmail(mid, usrid);

        txtfrom.Text = dr["mailfrom"].ToString();
        txtsub.Text = dr["mailsubject"].ToString();
        lblattachment.Text = dr["mailattach"].ToString();
        txtbody.Text = dr["mailbody"].ToString();
        lbluser.Text = dr["username"].ToString();
        dr.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string mfromid = txtfrom.Text;
        string spamuserid = lbluser.Text;
        string msubj = txtsub.Text;
        string mbody = txtbody.Text;


        ws.acceptspam(mfromid, spamuserid, msubj, mbody);
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        string userid = lbluser.Text;

        ws.denyspam(userid);
    }
}
