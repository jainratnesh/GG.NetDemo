using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class ST_Validation : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@    
        "Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True");
        SqlCommand cmd = new SqlCommand("sp_insert", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("fname", TextBox1.Text);
        cmd.Parameters.AddWithValue("lname", TextBox2.Text);
        cmd.Parameters.AddWithValue("email", TextBox3.Text);
        cmd.Parameters.AddWithValue("phoneno", TextBox4.Text);
        cmd.Parameters.AddWithValue("location", TextBox5.Text);
        con.Open();
        int i = cmd.ExecuteNonQuery();
        con.Close();
    }
}   
