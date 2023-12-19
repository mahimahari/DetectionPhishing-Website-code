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
using System.Windows.Forms;

public partial class Default3 : System.Web.UI.Page
{
    WebService web2 = new WebService();    
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        //lblDisplay.Visible = true;
        //RichTextBox.Visible = false;
        //lblDisplay.Text = RichTextBox.Text;   


        string mto = TextBox1.Text;
        string mcc = TextBox3.Text;
        string msubj = TextBox2.Text;
        string mboddy = RichTextBox.Text;
        string uploadfilename = "";
        //if (FileUpload1.HasFile)
        //{
        //    uploadfilename = Server.MapPath(FileUpload1.FileName);
        //}
        string mfrom = (string)(Session["username"]);
        Boolean bol = false;
        Boolean bllchekspam = false;
        bllchekspam = web2.spamcheck(mfrom, mto);
        if (bllchekspam == false)
            bol = web2.newmail(mfrom, mto, msubj, mboddy);
        else
        {
            MessageBox.Show("You are reported as spammer");
        }        
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        //if (FileUpload1.HasFile)
        //{
        //    FileUpload1.SaveAs("C:\\" + FileUpload1.FileName);
        //}
    }
}
