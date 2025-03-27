using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

public partial class ST_ADD : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public static string GetConnectionString()
    {
        string connectionStringName = "RamConnectionString";
        string connectionString = ConfigurationManager.ConnectionStrings[connectionStringName].ConnectionString;

        if (HttpContext.Current != null && HttpContext.Current.Session != null && !string.IsNullOrEmpty(Convert.ToString(HttpContext.Current.Session["RamConnectionString"])))
        {
            connectionString = Convert.ToString(HttpContext.Current.Session["RamConnectionString"]);
        }
        return connectionString;
    }

    protected void btnregistration_Click(object sender, EventArgs e)
    {
        lblmsg.Text = "";

        //SqlConnection SQLConn = new SqlConnection("Data Source=.\\SQLExpress; Initial Catalog=Blog; Integrated Security=True");

        SqlConnection SQLConn = new SqlConnection("Data Source=CL-4048; Initial Catalog=Ram; Integrated Security=True");

        //SqlConnection SQLConn = new SqlConnection(ConfigurationManager.ConnectionStrings["RamConnectionString"].ToString());
        //SqlCommand cmd = new SqlCommand();

        //SqlDataAdapter SQLAdapter = new SqlDataAdapter("insert into UserMst values('" + txtfname.Text + "','" + txtlname.Text + "','" + txtcity.Text + "','" + txtemail.Text + "','" + txtpassword.Text + "')", SQLConn);


        SqlDataAdapter SQLAdapter = new SqlDataAdapter("insert into UserMst values('" + txtfname.Text + "','" + txtlname.Text + "','" + txtcity.Text + "','" + txtemail.Text + "','" + txtpassword.Text + "')", SQLConn);

        DataTable DT = new DataTable();
        SQLAdapter.Fill(DT);


        //SqlDataAdapter SQLAAdapter = new SqlDataAdapter("select * from UserMst", SQLConn);

        SqlDataAdapter SQLAAdapter = new SqlDataAdapter("select * from UserMst", SQLConn);

        DataTable DTT = new DataTable();
        SQLAAdapter.Fill(DTT);

        GridView1.DataSource = DTT;
        GridView1.DataBind();

        lblmsg.Text = "Registration Done!!";
        txtfname.Text = "";
        txtlname.Text = "";
        txtemail.Text = "";
        txtcity.Text = "";
        txtfname.Focus();

    }
}