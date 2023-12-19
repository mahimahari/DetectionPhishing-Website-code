using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Text;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
public partial class domain_registration : System.Web.UI.Page
{
    SqlCommand cmd;
    SqlConnection con;
    SqlDataAdapter da;
    public string domext;
    DataTable dt = new DataTable();
    string str = "server=.\\SQLEXPRESS;database=Phishing;integrated security=true";

    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(str);
        con.Open();
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList1.Text != "Select" && TextBox1.Text != "")
        {
            string domain = TextBox1.Text;
            string exten = DropDownList1.Text;
            domext = domain + exten;
            Session["concat"] = domext.ToString();
            da = new SqlDataAdapter("select * from domain where domainname='" + domext + "'", con);
            da.Fill(dt);

            if (dt.Rows.Count == 0)
            {
                Session["ImagePath"] = "~/images/ok.png";
                Image1.ImageUrl = Session["ImagePath"].ToString();
            }
            else
            {
                Session["ImagePath"] = "~/images/cancel.png";
                Image1.ImageUrl = Session["ImagePath"].ToString();
            }
        }
        else
        {
            Session["ImagePath"] = "~/images/cancel.png";
            Image1.ImageUrl = Session["ImagePath"].ToString();
        }
    
    }
    private string RandomString(int size)
    {
        StringBuilder builder = new StringBuilder();
        Random random = new Random();
        char ch;
        for (int i = 0; i < size; i++)
        {
            ch = Convert.ToChar(Convert.ToInt32(Math.Floor(26 * random.NextDouble() + 65)));
            builder.Append(ch);
        }

        return builder.ToString();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
              
        string Rand1 = RandomString(8);
        TextBox7.Text = Rand1;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        try
        {
            cmd = new SqlCommand("insert into domain values('"+Session["concat"].ToString()  +"','"+TextBox2.Text +"','"+TextBox6.Text +"','"+TextBox7.Text +"','"+TextBox3.Text +"','"+TextBox4.Text +"')", con);
            cmd.ExecuteNonQuery();
            error.Text = "Domain Name is Created";
            error.ForeColor = System.Drawing.Color.Green;
            error.Visible = true;
        }
        catch (Exception)
        {
            error.Text = "Error in your data";
            error.ForeColor = System.Drawing.Color.Red ;
            error.Visible = true;
            
        }
    }
}
