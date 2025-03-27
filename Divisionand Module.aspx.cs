using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Divisionand_Module : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btndivision_Click(object sender, EventArgs e)
    {
        int firstno;
        int secondno;

        firstno = Convert.ToInt32(txtfirstno.Text);
        secondno = Convert.ToInt32(txtsecondno.Text);


        int answer = firstno / secondno;

        lbldiv.Text = "Division = " + answer.ToString();

    }
    protected void btnmodule_Click(object sender, EventArgs e)
    {
        int firstno;
        int secondno;

        firstno = Convert.ToInt32(txtfirstno.Text);
        secondno = Convert.ToInt32(txtsecondno.Text);


        int answer = firstno % secondno;

        lblmod.Text = "Module = " + answer.ToString();

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("VariableAddition.aspx");



    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("SubtractionandMultiplication.aspx");
    }
}