using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using Spire.PdfViewer.Forms;



public partial class CNET_VALIDATION : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    //declaring connection string and command
    //here we are extracting connection string from web.config file
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["RamConnectionString"].ToString());
    SqlCommand cmd = new SqlCommand();

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        try
        {
            cmd.Connection = con; //assigning connection to command
            cmd.CommandType = CommandType.Text; //representing type of command
                                                //cmd.CommandText = "INSERT INTO UserDetails (Fname,Lname,Email,Password,Gender,Dob,Mobile,Address) values
                                                // (@Fname,@Lname,@Email,@Password,@Gender,@Dob,@Mobile,@Address)";
            cmd.CommandText = "INSERT INTO UserDetails (Fname,Lname,Email,Password,Gender,Dob,Mobile,Address)values(@Fname,@Lname,@Email,@Password,@Gender,@Dob,@Mobile,@Address)";

            //adding parameters with value
            cmd.Parameters.AddWithValue("@Fname", txtFirstName.Text.ToString());
            cmd.Parameters.AddWithValue("@Lname", txtLastName.Text.ToString());
            cmd.Parameters.AddWithValue("@Email", txtEmail.Text.ToString());
            cmd.Parameters.AddWithValue("@Password", txtPassword.Text.ToString());
            cmd.Parameters.AddWithValue("@Gender", RdoGender.SelectedItem.Text.ToString());
            cmd.Parameters.AddWithValue("@Dob", txtDob.Text.ToString());
            cmd.Parameters.AddWithValue("@Mobile", txtMobile.Text.ToString());
            cmd.Parameters.AddWithValue("@Address", txtAddress.Text.ToString());
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

    protected void btnClear_Click(object sender, EventArgs e)
    {
        //refreshing/reloading page to clear all the controls
        Page.Response.Redirect(Page.Request.Url.ToString(), true);
    }

    protected void btnReport_Click(object sender, EventArgs e)
    {
        Response.Redirect("CNET_GridView.aspx");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (this.pdfDocumentViewer1.PageCount > 0)
            
    {
            
        SaveFileDialog dialog = new SaveFileDialog();
            
        dialog.Filter = "PDF document (*.pdf)|*.pdf";
            
        DialogResult result = dialog.ShowDialog();
            
        string fileName = dialog.FileName;
            
        if (result == DialogResult.OK)
                
        {
                
            pdfDocumentViewer1.SaveToFile(fileName);
                
            MessageBox.Show("You have saved this PdfDocuemnt as:\n" + fileName, "Spire.PdfViewer Demo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                
        }
            
    }
        
}

private void BtnSaveStream_Click(object sender, EventArgs e)

{

    if (this.pdfDocumentViewer1.PageCount > 0)

    {
        
        SaveFileDialog dialog = new SaveFileDialog();
        
        dialog.Filter = "PDF document (*.pdf)|*.pdf";
        
        DialogResult result = dialog.ShowDialog();
        
        string fileName = dialog.FileName;
        
        if (result == DialogResult.OK)
            
        {
            
            MemoryStream stream = new MemoryStream();
            
            pdfDocumentViewer1.SaveToFile(stream);
            
            byte[] fileBytes = stream.ToArray();
            
            FileStream fileStream = new FileStream(fileName, FileMode.Create, FileAccess.ReadWrite);
            
            fileStream.Write(fileBytes, 0, fileBytes.Length);
            
            fileStream.Flush();
            
            fileStream.Close();
            
            stream.Close();
            
            MessageBox.Show("You have first saved this PDF docuemnt as memory stream,\nthen write the memory stream in a file :\n" + fileName, "Spire.PdfViewer Demo", MessageBoxButtons.OK, MessageBoxIcon.Information);
            
        }
        
    }

}

private void pdfDocumentViewer1_PdfLoaded(object sender, EventArgs args)

{

    this.comBoxPages.Items.Clear();

    int totalPage = this.pdfDocumentViewer1.PageCount;

    for (int i = 1; i <= totalPage; i++)

    {

        this.comBoxPages.Items.Add(i.ToString());

    }

    this.comBoxPages.SelectedIndex = 0;

}

private void pdfDocumentViewer1_PageNumberChanged(object sender, EventArgs args)
{
    
    if (this.comBoxPages.Items.Count <= 0)
        
        return;
    
    if (this.pdfDocumentViewer1.CurrentPageNumber != this.comBoxPages.SelectedIndex + 1)
        
    {
        
        this.comBoxPages.SelectedIndex = this.pdfDocumentViewer1.CurrentPageNumber - 1;
        
    }
    
}

private void comBoxPages_SelectedIndexChanged(object sender, EventArgs e)

{
    
    int soucePage = this.pdfDocumentViewer1.CurrentPageNumber;
    
    int targetPage = this.comBoxPages.SelectedIndex + 1;
    
    if (soucePage != targetPage)
        
    {
        
        this.pdfDocumentViewer1.GoToPage(targetPage);
        
    }
    
}
