<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ST_Validation.aspx.cs" Inherits="ST_Validation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

            
                <table style="width:100%;">  
                    <caption class="style3">  
                        <strong>Registration Form with Validation</strong>  
                    </caption>  
                    <tr>  
                        <td class="style1">  
                        </td>  
                        <td class="style2">  
                        </td>  
                        <td>  
                        </td>  
                    </tr>  
                    <tr>  
                        <td class="style1">  
                            <asp:Label ID="Label1" runat="server" Text="FirstName:"></asp:Label>  
                        </td>  
                        <td class="style2">  
                            <asp:TextBox ID="TextBox1" runat="server" Height="22px" MaxLength="20" Width="158px"></asp:TextBox>  
                        </td>  
                        <td>  
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox1" ErrorMessage="Please Enter your First Name" ForeColor="#CC0000"></asp:RequiredFieldValidator>  
                        </td>  
                        <td>  
                            <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender1" TargetControlID="TextBox1" FilterType="LowercaseLetters,UppercaseLetters,Custom" runat="server"></asp:FilteredTextBoxExtender>  
                        </td>  
                    </tr>  
                    <tr>  
                        <td class="style1">  
                            <asp:Label ID="Label2" runat="server" Text="LastName:"></asp:Label>  
                        </td>  
                        <td class="style2">  
                            <asp:TextBox ID="TextBox2" runat="server" Height="22px" MaxLength="10" Width="158px"></asp:TextBox>  
                        </td>  
                        <td>  
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Please Enter your Last Name" ForeColor="#CC0000"></asp:RequiredFieldValidator>  
                        </td>  
                        <td>  
                            <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender2" TargetControlID="TextBox2" FilterType="LowercaseLetters,UppercaseLetters,Custom" runat="server"></asp:FilteredTextBoxExtender>  
                        </td>  
                    </tr>  
                    <tr>  
                        <td class="style1">  
                            <asp:Label ID="Label3" runat="server" Text="Email:"></asp:Label>  
                        </td>  
                        <td class="style2">  
                            <asp:TextBox ID="TextBox3" runat="server" Height="22px" MaxLength="15" Width="158px"></asp:TextBox>  
                        </td>  
                        <td>  
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Please Enter your Email ID" ForeColor="#CC0000"></asp:RequiredFieldValidator>  
                        </td>  
                        <td>  
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox3" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ErrorMessage="Invalid Email Id"></asp:RegularExpressionValidator>  
                        <td>  
                        </td>  
                        </td>  
                    </tr>  
                    <tr>  
                        <td class="style1">  
                            <asp:Label ID="Label4" runat="server" Text="Phone No. :"></asp:Label>  
                        </td>  
                        <td class="style2">  
                            <asp:TextBox ID="TextBox4" runat="server" Height="22px" MaxLength="10" Width="158px"></asp:TextBox>  
                        </td>  
                        <td>  
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="Please Enter your Phone No" ForeColor="#CC0000"></asp:RequiredFieldValidator>  
                        </td>  
                        <td>  
                            <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender3" TargetControlID="TextBox4" FilterType="Numbers" runat="server"></asp:FilteredTextBoxExtender>  
                        </td>  
                    </tr>  
                    <tr>  
                        <td class="style1">  
                            <asp:Label ID="Label5" runat="server" Text="Location:"></asp:Label>  
                        </td>  
                        <td class="style2">  
                            <asp:TextBox ID="TextBox5" runat="server" Height="22px" MaxLength="15" Width="158px"></asp:TextBox>  
                        </td>  
                        <td>  
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" ErrorMessage="Please Enter your Location" ForeColor="#CC0000"></asp:RequiredFieldValidator>  
                        </td>  
                        <td>  
                            <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender4" TargetControlID="TextBox5" FilterType="Numbers,LowercaseLetters,UppercaseLetters" runat="server"></asp:FilteredTextBoxExtender>  
                        </td>  
                    </tr>  
                    <tr>  
                        <td class="style1">  
                        </td>  
                        <td class="style2">  
                        </td>  
                        <td>  
                        </td>  
                    </tr>  
                    <tr>  
                        <td class="style1">  
                        </td>  
                        <td class="style2">  
                            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" />  
                        </td>  
                        <td>  
                        </td>  
                    </tr>  
                </table>  
</asp:Content>

