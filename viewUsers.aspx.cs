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

public partial class viewUsers : System.Web.UI.Page
{
    WebService web1 = new WebService();
    protected void Page_Load(object sender, EventArgs e)
    {
        DataSet dss = new DataSet();
        dss = web1.loadUser("tblLogin");
        GridView1.DataSource = dss;
        GridView1.DataBind();
    }
}
