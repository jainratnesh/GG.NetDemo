using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class StudentRegistratation : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    //declaring connection string and command
    //here we are extracting connection string from web.config file
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["RamConnectionString"].ToString());
    SqlCommand cmd = new SqlCommand();
    protected void btn1_Click(object sender, EventArgs e)
    {
        


        try
        {
            cmd.Connection = con; //assigning connection to command
            cmd.CommandType = CommandType.Text; //representing type of command
                                                //cmd.CommandText = "INSERT INTO UserDetails (Fname,Lname,Email,Password,Gender,Dob,Mobile,Address) values
                                                // (@Fname,@Lname,@Email,@Password,@Gender,@Dob,@Mobile,@Address)";
            cmd.CommandText = "INSERT INTO UserDetails (Fname,Lname,Email,Password,Gender,Dob,Mobile)values(@Fname,@Lname,@Email,@Password,@Gender,@Dob,@Mobile)";

            //adding parameters with value
            cmd.Parameters.AddWithValue("@Fname", txtFirstName.Text.ToString());
            cmd.Parameters.AddWithValue("@Lname", txtLastName.Text.ToString());
            cmd.Parameters.AddWithValue("@Email", txtEmail.Text.ToString());
            cmd.Parameters.AddWithValue("@Password", txtPassword.Text.ToString());
            cmd.Parameters.AddWithValue("@Gender", RdoGender.SelectedItem.Text.ToString());
            cmd.Parameters.AddWithValue("@Dob", txtDob.Text.ToString());
            cmd.Parameters.AddWithValue("@Mobile", txtMobile.Text.ToString());
           //cmd.Parameters.AddWithValue("@Address", txtAddress.Text.ToString());
            con.Open(); //opening connection
            cmd.ExecuteNonQuery();  //executing query
            con.Close(); //closing connection
            lblMsg.Text = "Registered Successfully..";

        }
        catch (Exception ex)
        {
            lblMsg.Text = ex.Message.ToString();
        }
    }

    protected void btn2_Click(object sender, EventArgs e)
    {
        Response.Redirect("StudentRegistratation.aspx");
    }
}