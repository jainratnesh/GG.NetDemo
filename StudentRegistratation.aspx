<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="StudentRegistratation.aspx.cs" Inherits="StudentRegistratation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <legend>Registration Form</legend>
            <table>            
                <tr>
                     <td>First Name:</td><td> <asp:textbox id="txtFirstName" runat="server" ></asp:textbox></td>
                     <td> <asp:RequiredFieldValidator ID="validfname" runat="server" ControlToValidate="txtFirstName" ErrorMessage="Required!" ForeColor="Red"></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td>Last Name:</td><td> <asp:textbox id="txtLastName" runat="server" ></asp:textbox></td>
                    <td><asp:RequiredFieldValidator ID="validlname" runat="server" ControlToValidate="txtLastName" ErrorMessage="Required!" ForeColor="Red"></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td>User Name:</td><td> <asp:textbox id="user" runat="server"></asp:textbox></td>
                    <td><asp:RequiredFieldValidator ID="validuser" runat="server" ControlToValidate="user" ErrorMessage="Required!" ForeColor="Red"></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td>Password:</td><td><asp:textbox ID="txtPassword" runat="server" TextMode="Password"></asp:textbox></td>
                    <td><asp:RequiredFieldValidator ID="validpwd" runat="server" ControlToValidate="txtPassword" ErrorMessage="Required!" ForeColor="Red"></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td>Confirm Password:</td><td><asp:textbox ID="Textbox1" runat="server" TextMode="Password"></asp:textbox></td>
                </tr>
                <tr>
                    <td>Email:</td><td><asp:TextBox ID="txtEmail" runat="server" TextMode="Email" ></asp:TextBox></td>
                    <td><asp:RequiredFieldValidator ID="validemail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Required!" ForeColor="Red"></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td>Mobile:</td><td><asp:TextBox ID="txtMobile" runat="server" TextMode ="Phone"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        Address:
                    </td>
                    <td>
                        <asp:TextBox ID="txtAddress" runat="server" ></asp:TextBox>
                    </td>
                    <td>

                        <asp:RequiredFieldValidator InitialValue="-1" ID="validcourse1" runat="server" ControlToValidate="txtAddress" ErrorMessage="Required!" ForeColor="Red"></asp:RequiredFieldValidator>
                        
                    </td>
                </tr>
                <tr>                    
                    <td>Gender:</td><td><asp:RadioButtonList ID="RdoGender" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem Text="Male" Value="0"></asp:ListItem>
                        <asp:ListItem Text="Female" Value="1"></asp:ListItem>
                                             </asp:RadioButtonList></td>
                </tr>
                <tr>
                    <td>Dob</td>
                    <td><asp:TextBox ID="txtDob" runat="server" TextMode ="Date"></asp:TextBox></td>
                    <td>
                        
                        <asp:RequiredFieldValidator InitialValue="-1" ID="validcourse0" runat="server" ControlToValidate="txtDob" ErrorMessage="Required!" ForeColor="Red"></asp:RequiredFieldValidator>
                        
                    </td>
                </tr>                
                <tr>
                    <td>Course: </td><td><asp:DropDownList ID="ddlCourse" runat="server" datavaluefield="Course" Width="173px">
                        <asp:ListItem text="Select Course" Value="-1"></asp:ListItem>
                        <asp:ListItem Text ="BTech" Value ="0"></asp:ListItem>
                        <asp:ListItem Text ="MCA" Value ="1"></asp:ListItem>
                        <asp:ListItem Text ="MBA" Value="2"></asp:ListItem>
                                         </asp:DropDownList></td>
                    <td><asp:RequiredFieldValidator InitialValue="-1" ID="validcourse" runat="server" ControlToValidate="ddlCourse" ErrorMessage="Required!" ForeColor="Red"></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td>Nationality:</td><td><asp:CheckBox ID="check" Text="Indian" runat="server"/><asp:CheckBox id="checkNat" Text="Others" runat="server" /></td>
                 </tr>
                <tr>
                    <td>Profile: </td><td><asp:Image id="img" ImageUrl="images/new/new-member.png" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td></td><td><asp:FileUpload ID="imgupload" runat="server" Enabled="true" /></td>
                </tr>
               <tr>
                    <td><asp:Button ID="btn1" runat="server" Text="Submit" OnClick="btn1_Click"></asp:Button></td>
                    <td><asp:Button ID="btn2" runat="server" Text="Reset" OnClick="btn2_Click"></asp:Button></td>
                
               <td>
                   <asp:Label ID="lblMsg" runat="server" Text=""></asp:Label></td>
               </tr>   
                
            </table>

</asp:Content>

