using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
//using System;
//using System.Data;
//using System.Configuration;
//using System.Web;
//using System.Web.Security;
//using System.Web.UI;
//using System.Web.UI.WebControls;
//using System.Web.UI.WebControls.WebParts;
//using System.Web.UI.HtmlControls;

public partial class frmCompose : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
        lblDisplay.Visible = true;
        RichTextBox.Visible = false;
        lblDisplay.Text = RichTextBox.Text;   
    }
    protected void btnCancel_Click(object sender, EventArgs e)
    {
        lblDisplay.Visible = false;
        RichTextBox.Visible = true;
        lblDisplay.Text = "";
        RichTextBox.Text = ""; 
    }
}
