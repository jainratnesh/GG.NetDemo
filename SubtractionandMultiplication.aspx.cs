using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SubtractionandMultiplication : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnsubtraction_Click(object sender, EventArgs e)
    {
        int firstno;
        int secondno;

        firstno = Convert.ToInt32(txtfirstno.Text);
        secondno = Convert.ToInt32(txtsecondno.Text);


        int answer = firstno - secondno;

        lblsub.Text = "Subtraction = " + answer.ToString();
    }


    protected void btnmultiplication_Click(object sender, EventArgs e)
    {
        int firstno;
        int secondno;

        firstno = Convert.ToInt32(txtfirstno.Text);
        secondno = Convert.ToInt32(txtsecondno.Text);

        int answer = firstno * secondno;

        lblmul.Text = "Multiplication = " + answer.ToString();
    }



    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("VariableAddition.aspx");
    }
}