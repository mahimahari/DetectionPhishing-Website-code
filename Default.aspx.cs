using System;
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
using System.Net;

public partial class _Default : System.Web.UI.Page 
{
    WebService web = new WebService();
    SqlConnection strConnection = new SqlConnection("server=.\\SQLEXPRESS;database=Phishing;integrated security=true");
    static int count = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    private bool YourValidationFunction(string UserName, string Password)
    {

        bool boolReturnValue = false;

        String SQLQuery = "SELECT logname, logpass FROM tblLogin";
        SqlCommand command = new SqlCommand(SQLQuery, strConnection);
        SqlDataReader Dr;
        strConnection.Open();
        Dr = command.ExecuteReader();
        while (Dr.Read())
        {
            if ((UserName == Dr["logname"].ToString()) & (Password == Dr["logpass"].ToString()))
            {
                boolReturnValue = true;
            }
            //Dr.Close();
            //return boolReturnValue;
        }
        Dr.Close();
        return boolReturnValue;
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        if (YourValidationFunction(Email.Value, Passwd.Value))
        {
            if (strConnection.State== ConnectionState.Closed) strConnection.Open();
            SqlCommand com = new SqlCommand("select * from block where username='" + Email.Value + "'", strConnection);
            SqlDataReader d = com.ExecuteReader();
            if (d.Read())
            {
                Response.Write("<script>alert('Your Account Temporarily blocked. contact Administrator!! Thank you')</script>");
                return;
            }
            d.Close();

           
       
            SqlCommand cmd = new SqlCommand("insert into logdetails values('" + Email.Value + "','" + Dns.GetHostName().ToString() + "')", strConnection);
            cmd.ExecuteNonQuery();
            strConnection.Close();
            Session["username"] = Email.Value;
            if (Session["username"].ToString() == "Admin")
            { Response.Redirect("admin_home.aspx"); }
            else
            { Response.Redirect("Default2.aspx"); }
           
          //  log1.TitleText = "Successfully Logged In";
        }
        else
        {
            SqlCommand cmd = new SqlCommand("select * from tblLogin where logname='" + Email.Value + "'", strConnection);
            if (strConnection.State == ConnectionState.Closed) strConnection.Open();
            SqlDataReader drr = cmd.ExecuteReader();
            if (drr.Read())
            {
               // e.Authenticated = false;
                count++;
                drr.Close();
                SqlCommand cmd1 = new SqlCommand("select * from logdetails where username='" + Email.Value + "' and hostname='" + Dns.GetHostName().ToString() + "'", strConnection);
                SqlDataReader dr;
                dr = cmd1.ExecuteReader();
                if (dr.Read())
                {
                    if (count >= 3 & count < 5)
                    {
                        if (strConnection.State == ConnectionState.Closed) strConnection.Open();
                        dr.Close();
                        SqlCommand com = new SqlCommand("select * from block where username='" + Email.Value + "'", strConnection);
                        SqlDataReader d = com.ExecuteReader();
                        if (d.Read())
                        {
                            Response.Write("<script>alert('Server Busy. Try some time. Thank you')</script>");
                            return;
                        }
                        d.Close();
                        count = 0;
                        SqlCommand cmd12 = new SqlCommand("insert into block values('" + Email.Value + "','" + DateTime.Now.ToUniversalTime() + "','blocked')", strConnection);
                        cmd12.ExecuteNonQuery();
                        Session.Abandon();
                        Session["User"] = Email.Value;
                        Server.Transfer("Default.aspx");

                    }
                }
                if (count >= 5)
                {
                    if (strConnection.State == ConnectionState.Closed) strConnection.Open();
                    SqlCommand com = new SqlCommand("select * from block where username='" + Email.Value + "'", strConnection);
                    SqlDataReader d = com.ExecuteReader();
                    if (d.Read())
                    {
                        Response.Write("<script>alert('Server Busy. Try some time. Thank you')</script>");
                        return;
                    }
                    d.Close();
                    count = 0;
                    Session["username"] = Email.Value;
                    Server.Transfer("Default.aspx");
                }
                Label1.Visible = true;
            }
            else
            {
                drr.Close();
                Label1.Visible = true;
            }
            strConnection.Close();
        }    




        //string usernme;
        //string pwd;
        //Boolean bol;
        //usernme = Email.Value;
        //pwd = Passwd.Value;

        //bol =web.checkuser(usernme, pwd);
        //if (bol)
        //{
        //    Session["username"] = Email.Value;
        //    Response.Redirect("Default2.aspx");
            
        //}
        //else
        //{
        //    Label1.Visible = true;
        //}
    }
}
