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
using System.Text.RegularExpressions;
using System.Windows.Forms;
using System.Text;
public partial class Default4 : System.Web.UI.Page
{
    WebService ws = new WebService();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            SqlDataReader dr;
            string usrid = (string)Session["username"];
            string mid = (string)Session["mid"];
            dr = ws.loadinboxmail(mid, usrid);

            string usssrid = "Admin";
            if (string.Equals(usrid, usssrid))
            {
                txtfrom.Text = dr["mailfrom"].ToString();
                txtsub.Text = dr["mailsubject"].ToString();
                
                txtbody.Text = dr["mailbody"].ToString();
                lblMail.Text = dr["mailbody"].ToString();
                dr.Close();
            }
            else
            {
                txtfrom.Text = dr["mailfrom"].ToString();
                txtsub.Text = dr["mailsub"].ToString();
                
                txtbody.Text = dr["mailbody"].ToString();
                lblMail.Text = dr["mailbody"].ToString();
                dr.Close();
            }
            
            txtbody.Text = MakeLink(txtbody.Text);


            if (ListBox2.Items.Count== 0)
            {

                Response.Write("<script type=javascript>alert('p')</script>");
                MessageBox.Show("This Mail is Normal Mail..!"); 
            }
            else
            {
                //Response.Write("<script type='textt/javascript'>alert('Phishing')</Script>"); 
                MessageBox.Show("This Mail is Phishing..!"); 
            }


        }        
    }
    protected string MakeLink(string txt)
    {
        Regex regx = new Regex("http://([\\w+?\\.\\w+])+([a-zA-Z0-9\\~\\!\\@\\#\\$\\%\\^\\&amp;\\*\\(\\)_\\-\\=\\+\\\\\\/\\?\\.\\:\\;\\'\\,]*)?", RegexOptions.IgnoreCase);

        MatchCollection mactches = regx.Matches(txt);

        foreach (Match match in mactches)
        {
            txt = txt.Replace(match.Value, "<a href='" + match.Value + "'>" + match.Value + "</a>");
            int s = int.Parse(count(match.Value));
            int ch = int.Parse(check(match.Value));
            string str1 = Regex.Replace(txt, "(<[a|A][^>]*>|</[a|A]>)", "");

            if (s <= 5 && ch <=12)
            {
                ListBox2.Items.Add(match.Value);
                string url = match.Value;
                string anchor = url.Substring(url.LastIndexOf("#") + 1); 
            }
        }
        
        return txt;
    }
    public string  count(string s)
    {
        int c = 0;       
         for (int i = 0; i < s.Length; i++)
         {
             string s1 = s[i].ToString();
             //byte[] StringAscII = new byte[s.Length + 10];
             byte[] StringAscII = System.Text.Encoding.ASCII.GetBytes(s1);
             byte a1 = StringAscII[0];
             string aa = a1.ToString();
             int val = int.Parse(aa);

             if (val >= 48 && val <= 57 || val >= 65 && val <= 90 || val >= 97 && val <= 122 || val == 38 || val >= 44 && val <= 47 || val == 40 || val == 41 || val == 58 || val == 61 || val == 63 || val == 95)
             {
                 
             }
             else
             {
                 c++;
             }

             
         }
         s = c.ToString();
         return s;
    }
    public string check(string s1)
    {
        int c = 0;
        for (int i = 0; i < s1.Length; i++)
        {
            string s2 = s1[i].ToString();
            //byte[] StringAscII = new byte[s.Length + 10];
            byte[] StringAscII = System.Text.Encoding.ASCII.GetBytes(s2);
            byte a1 = StringAscII[0];
            string aa = a1.ToString();
            int val = int.Parse(aa);

            if (val >= 48 && val <= 57)
           {
               c++;
           }

        }
        s1 = c.ToString();
        return s1;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string mto = txtfrom.Text;
        string msubj = txtsub.Text;
        string mboddy = txtbody.Text;
      

        string mfrom = (string)(Session["username"]);
        Boolean bol = false;
            bol = ws.delete(mfrom, mto, msubj, mboddy);
            if (bol == true)
            {
                Response.Redirect("default2.aspx");
            }
    }


    
    protected void ListBox2_SelectedIndexChanged(object sender, EventArgs e)
    {
        Response.Redirect(ListBox2.SelectedItem.Text);
    }
}
