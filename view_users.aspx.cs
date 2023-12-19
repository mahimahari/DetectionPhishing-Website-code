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
public partial class view_users : System.Web.UI.Page
{
    SqlCommand cmd;
    
    SqlConnection con;
    SqlDataAdapter da;
    DataTable dt = new DataTable();
    string str = "server=.\\SQLEXPRESS;database=Phishing;integrated security=true";

    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(str);
        con.Open();
        if (!IsPostBack)
        {
            cmd = new SqlCommand("select * into temp1 from tbllogin",con);
            cmd.ExecuteNonQuery();
            cmd = new SqlCommand("alter table temp1 drop column logpass,logrepass",con);
            cmd.ExecuteNonQuery();
            da = new SqlDataAdapter("select * from temp1", con);
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            cmd = new SqlCommand("drop table temp1",con);
            cmd.ExecuteNonQuery();
        }
    }
}
