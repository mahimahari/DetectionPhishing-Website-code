using System;
using System.Collections;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.Services.Protocols;
using System.Xml.Linq;
using System.Data.SqlClient;
using System.Data;
using System.Windows.Forms;


[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
public class WebService : System.Web.Services.WebService {


    SqlConnection cn;
    SqlCommand cmd;
    SqlCommand cmd1;
    SqlCommand cmd2;
    SqlCommand cmd3;
    SqlCommand cmd4;
    SqlCommand cmd5;
    SqlCommand cmd6;
    string str1;
    string str = "server=.\\SQLEXPRESS;database=Phishing;integrated security=true";

    public WebService () 
    {

        cn = new SqlConnection(str);
        cn.Open();
               
     }



    [WebMethod]
    public Boolean checkuser(string nme,string passwrd) 
    {
        str1 = "select logpass from tblLogin where logname='"+nme+"'";
        cmd=new SqlCommand(str1,cn);
        Boolean bl=false;
        SqlDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            if (passwrd == dr["logpass"].ToString())
            {
                bl=true;
                
            }
            else
            {
                bl = false;
               
            }
            
        }
        return bl;




    }


    [WebMethod]
    public DataSet loadinbox()
    {
        string usrid = (string)Session["username"];
        string Str2 = "Admin";
        if (String.Equals(usrid, Str2))
        {
            str = "select * from Admin_inbox where userapproval='yes'";
        }
        else
        {
            usrid = usrid + "_inbox";
            str = "select mailid,mailfrom as MailFrom,mailtime Time,mailsub as Subject from " + usrid + " order by mailtime desc";
        }

        SqlDataAdapter da = new SqlDataAdapter(str,cn);
        DataSet ds = new DataSet();
        da.Fill(ds);
        return ds;

    }

    [WebMethod]
    public DataSet loadUser(string strTableName)
    {
        str = "select * from " + strTableName +"";
        SqlDataAdapter da = new SqlDataAdapter(str, cn);
        DataSet ds = new DataSet();
        da.Fill(ds);
        return ds;

    }





    [WebMethod]
    public DataSet loadsent()
    {
        string usrid = (string)Session["username"];
        usrid = usrid + "_sent";
        str = "select mailid,mailto as MailTo,mailtime Time,mailsub as Subject from " + usrid + " order by mailtime desc";
        SqlDataAdapter da = new SqlDataAdapter(str, cn);
        DataSet ds = new DataSet();
        da.Fill(ds);
        return ds;

    }


    public Boolean newmail(string mailfrom, string mailto,string mailsub, string mailbody)
    {
        Boolean bll=false;
        cmd=new SqlCommand();
        cn = new SqlConnection(str);


        string usetable = checknewmail(mailfrom, mailto);
        if (usetable == mailto + "_inbox")
        {
            usetable = checkadminspammails(mailto,mailsub, mailbody);
        }
        string usetable1 = mailfrom + "_sent";
        string qryinsertinbox = "insert into " + usetable + " values('" + mailfrom + "','" + mailto + "','" + DateTime.Now + "', '" + mailsub + "','" + mailbody + "')";
        string qryinsertsent = "insert into " + usetable1 + " values('" + mailfrom + "','" + mailto + "','" + DateTime.Now + "', '" + mailsub + "','" + mailbody + "')";

        cmd = new SqlCommand(qryinsertinbox, cn);
        cmd1 = new SqlCommand(qryinsertsent, cn);




        try
        {
           
            if (cn.State == ConnectionState.Closed) cn.Open();
            cmd.ExecuteNonQuery();
            cmd1.ExecuteNonQuery();
            bll=true;
            cn.Close();
            MessageBox.Show("Mail Sent");
            
        }
        catch(SqlException ex)
        {
            bll = false;
            MessageBox.Show(ex.Message);

        }


        return bll;

    }

    [WebMethod]
    public Boolean delete(string mailfrom, string mailto, string mailsub, string mailbody)
    {
        Boolean bll = false;
        cmd = new SqlCommand();
        cn = new SqlConnection(str);

        string usetable1 = mailfrom + "_inbox";

        string qryinsertdeleted = "insert into deleted values('" + mailfrom + "','" + mailto + "','" + DateTime.Now + "', '" + mailsub + "','" + mailbody + "')";
        string qrydeleteinbox = "delete " + usetable1 + " where mailfrom='" + mailto + "'and mailto='" + mailfrom + "' and mailsub='" + mailsub + "' and mailbody='" + mailbody + "'";
        cmd = new SqlCommand(qryinsertdeleted, cn);
        cmd1 = new SqlCommand(qrydeleteinbox, cn);

        try
        {

            if (cn.State == ConnectionState.Closed) cn.Open();
            cmd.ExecuteNonQuery();
            cmd1.ExecuteNonQuery();
            bll = true;
            cn.Close();
            MessageBox.Show("Mail Deleted");

        }
        catch (SqlException ex)
        {
            bll = false;
            MessageBox.Show(ex.Message);

        }


        return bll;

    }




    [WebMethod]

    public void createusertables(string st)
    {
        string stinbox = st + "_inbox";
        string stspam = st + "_spam";
        string stsent = st + "_sent";
        string stdrafts = st + "_draft";
        string stspamid = st + "_spamid";
        string qrystr1="create table " + stinbox + "(mailid int identity(1,1) primary key,mailfrom varchar(50),mailto varchar(50),mailtime datetime,mailsub varchar(200),mailbody varchar(500))";
        string qrystr2 = "create table " + stspam + "(mailid int identity(1,1) primary key,mailfrom varchar(50),mailto varchar(50),mailtime datetime,mailsub varchar(200),mailbody varchar(500))";
        string qrystr3 = "create table " + stsent + "(mailid int identity(1,1) primary key,mailfrom varchar(50),mailto varchar(50),mailtime datetime,mailsub varchar(200),mailbody varchar(500))";
        string qrystr4 = "create table " + stdrafts + "(mailid int identity(1,1) primary key,mailfrom varchar(50),mailto varchar(50),mailtime datetime,mailsub varchar(200),mailbody varchar(500))";
        string qrystr5 = "create table " + stspamid + "(mailid int identity(1,1) ,spamids varchar(50) primary key)";

        cmd = new SqlCommand(qrystr1, cn);
        cmd1 = new SqlCommand(qrystr2, cn);
        cmd2 = new SqlCommand(qrystr3, cn);
        cmd3 = new SqlCommand(qrystr4, cn);
        cmd4= new SqlCommand(qrystr5,cn);
        cmd.Connection = cn;
        cmd1.Connection = cn;
        cmd2.Connection = cn;
        cmd3.Connection = cn;
        cmd4.Connection=cn;
        try
        {
            if (cn.State == ConnectionState.Closed) cn.Open();
            cmd.ExecuteNonQuery();
            cmd1.ExecuteNonQuery();
            cmd2.ExecuteNonQuery();
            cmd3.ExecuteNonQuery();
            cmd4.ExecuteNonQuery();
            cn.Close();
        }
        catch (SqlException ex)
        {
            MessageBox.Show(ex.Message);
        }


    }

    [WebMethod]
    public SqlConnection returnconnection()
    {
        return cn;
    }

    [WebMethod]

    public void reportspam(string mmfrom, string mmsub, string mmattach, string mmbody, string mmapprove, string mmreply, string musernam)
    {

        Boolean bol;

        bol = userapprovalchek(musernam);
        if (bol == true)
        {
            string qryreportspam = "insert into Admin_inbox values('" + mmfrom + "','" + DateTime.Now + "','" + mmsub + "','" + mmbody + "','" + mmattach + "','" + mmapprove + "','" + mmreply + "','" + musernam + "')";


            cmd = new SqlCommand(qryreportspam, cn);

            try
            {
                if (cn.State == ConnectionState.Closed) cn.Open();
                cmd.ExecuteNonQuery();
                cn.Close();
                MessageBox.Show("spam mail reported to Administrator");


            }
            catch (SqlException ex)
            {
                MessageBox.Show(ex.Message);
            }

        }
        else
        {
            MessageBox.Show("Your access denied by Administrator");
        }
    }

    [WebMethod]
    public Boolean spamcheck(string mmfrom, string mmto)
    {
        Boolean bl=false;
        mmto = mmto + "_spamid";
        string qryspamcheck="select * from "+ mmto +" where spamids='"+ mmfrom +"'";
        cmd6 = new SqlCommand(qryspamcheck, cn);
        SqlDataReader dr = cmd6.ExecuteReader();
        if (dr.Read())
        {
            bl = true;
        }
        else
        {
            bl = false;
        }
        dr.Close();
        return bl;

    }


    [WebMethod]
    public Boolean userapprovalchek(string usrnam)
    {
        Boolean bl = false;
        string qryuserapprove = "select userapproval from Admin_inbox where username='" + usrnam + "'";
        cmd = new SqlCommand(qryuserapprove, cn);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            if (dr["userapproval"] == "yes")
                bl = true;
            else
                bl = false;
        }
        else
            bl = true ;
        dr.Close();
        return bl;
    }

    [WebMethod]
    public void acceptspam(string usrid, string spamid, string msubjj, string mboddy)
    {
        string ussrid=usrid+"_spamid";
        string ussrid1 = usrid + "_spamids";
        string qrysavespam="insert into "+ ussrid +" values('"+ spamid +"')";
        string qrymarkreplied = "update Admin_inbox set userreplied='yes' where username='" + usrid + "'";
        string qrysaveinAdmindata = "insert into Admin_spamids values('" + spamid + "')";
        string qrysavespammail = "insert into Admin_spam values('" + spamid + "','" + msubjj + "','" + mboddy + "')";
        cmd = new SqlCommand(qrysavespam, cn);
        cmd1 = new SqlCommand(qrymarkreplied, cn);
        cmd2 = new SqlCommand(qrysaveinAdmindata, cn);
        cmd4 = new SqlCommand(qrysavespammail, cn);


        try
        {
            if (cn.State == ConnectionState.Closed) cn.Open();
            cmd.ExecuteNonQuery();
            cmd1.ExecuteNonQuery();
            cmd2.ExecuteNonQuery();
            cmd4.ExecuteNonQuery();
            cn.Close();
            MessageBox.Show("Spam id Stored");
        }
        catch (SqlException ex)
        {
            MessageBox.Show("The user already exist in database" +ex.Message);
        }


    }

    public void denyspam(string usrid)
    {
        string qrydenyspam = "update Admin_inbox set userapproval='no' where username='" + usrid + "'";
        cmd = new SqlCommand(qrydenyspam, cn);

        try
        {
            if (cn.State == ConnectionState.Closed) cn.Open();

            cmd.ExecuteNonQuery();
            cn.Close();
            MessageBox.Show("username denied permissions");

        }
        catch (SqlException ex)
        {
            MessageBox.Show(ex.Message);
        }

    }


    [WebMethod]
    public string checknewmail(string mmailid,string mmailto)
    {
        string returnvalue;
        string qrycheckadminspams = "select * from Admin_spamids where mailid='" + mmailid + "'";
        cmd = new SqlCommand(qrycheckadminspams, cn);
        cmd.Connection = cn;
        if (cn.State == ConnectionState.Closed) cn.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            returnvalue = mmailto + "_spam";

        }
        else
        {
            returnvalue = mmailto + "_inbox";

        }
        dr.Close();
        return returnvalue;


    }


   
    [WebMethod]
    public DataSet loadspam()
    {
        string usrid = (string)Session["username"];
        usrid = usrid + "_spam";
        if (usrid != "Admin")
            str = "select mailid,mailfrom as MailFrom,mailtime Time,mailsub as Subject from " + usrid + " order by mailtime desc";
        else
            str = "select * from Admin_spam where userapproval='yes'";

        SqlDataAdapter da = new SqlDataAdapter(str, cn);
        DataSet ds = new DataSet();
        da.Fill(ds);
        return ds;

    }

    [WebMethod]

    public SqlDataReader loadinboxmail(string mmid, string usernam)
    {
        string userr=usernam+"_inbox";
        string qry="select * from "+ userr +" where mailid='"+ mmid +"'";
        cmd = new SqlCommand(qry, cn);

        
            if (cn.State == ConnectionState.Closed) cn.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
                return dr;
            else
                MessageBox.Show("No such mail in inbox");
            cn.Close();
            
        return dr;
    }
    [WebMethod]
    public string checkadminspammails(string mto, string msub, string mbody)
    {
        string str = mto + "_inbox"; ;
        string qrycheckadminspams = "select msubj,mbody from Admin_spam";
        cmd = new SqlCommand(qrycheckadminspams, cn);
        SqlDataReader drr = cmd.ExecuteReader();
        while (drr.Read())
        {
            if (string.Equals(drr["msubj"].ToString(), msub) && (string.Equals(drr["mbody"].ToString(), mbody)))
            {
                str = mto + "_spam";
                drr.Close();
                return str;

            }
            else
            {
                str = mto + "_inbox";
            }
        }
        drr.Close();
        return str;

    }

    [WebMethod]
    public DataSet loaddeletegrid(string uname)
    {
        string sttr = "select * from deleted where mailfrom='" + uname + "' ";
        SqlDataAdapter da = new SqlDataAdapter(sttr, cn);
        DataSet ds = new DataSet();
        da.Fill(ds);
        return ds;


    }


}

