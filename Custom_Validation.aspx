<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Custom_Validation.aspx.cs" Inherits="Custom_Validation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     
    <div>
        <table>

<tr>

    <td>

         <asp:Label ID="Label1" runat="server" Text="User ID:"></asp:Label>
    </td>
    <td>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    </td>
       
 <td>
     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
            ControlToValidate="TextBox1" ErrorMessage="User id required"></asp:RequiredFieldValidator>
 </td>
    <td>
 <asp:CustomValidator ID="CustomValidator1" runat="server" OnServerValidate="UserCustomValidate"
            ControlToValidate="TextBox1"
            ErrorMessage="User ID should have atleast a capital, small and digit and should be greater than 5 and less
than 26 letters"
            SetFocusOnError="True"></asp:CustomValidator>
 </td>
    </tr>
            <tr>
    <td>
          <asp:Button ID="Button1" runat="server" Text="Submit" />
 </td>
    <td>

 </td>
    <td>

 </td>

      
  
    </tr>

        </table>
        </div>
        
</asp:Content>

