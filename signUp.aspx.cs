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
using System.Windows.Forms;

public partial class signUp : System.Web.UI.Page
{
    WebService ws = new WebService();
    protected void Page_Load(object sender, EventArgs e)
    {

    }   
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection cn;
        cn = ws.returnconnection();

        if (cn.State == ConnectionState.Closed)
        { cn.Open(); }
      //  DateTime dt = new DateTime();
    //    dt = Convert.ToDateTime(Birthday.Value);

        SqlCommand cmd = new SqlCommand("insert into tblLogin values('" + FirstName.Value + "','" + LastName.Value + "','" + Email.Value + "','" + Passwd.Value + "','" + PasswdAgain.Value + "','" + questions.Value + "','" + IdentityAnswer.Value + "','" + SecondaryEmail.Value + "','" + loc.Value + "','" + Birthday.Value  + "','Yes' )", cn);
        cmd.ExecuteNonQuery();
        
        cn.Close();



        // to create the new user tables
        string str=Email.Value;
        ws.createusertables(str);
        MessageBox.Show("Account created");

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("default.aspx");
    }
}
