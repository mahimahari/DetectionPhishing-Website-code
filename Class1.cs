using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;


/// <summary>
/// Summary description for Class1
/// </summary>
public class Class1
{
    SqlCommand cmd;
	public Class1()
	{
        cmd=new SqlCommand();
        cmd.CommandText="[dbo].[prcinsert1]";
		
	}
}
