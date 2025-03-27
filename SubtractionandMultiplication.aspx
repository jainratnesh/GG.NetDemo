
<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="SubtractionandMultiplication.aspx.cs" Inherits="SubtractionandMultiplication" %>

   <asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

     
       </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    
        <div>
            <center>
        <div>
                         <h1>Subtraction and Multiplication</h1>
            <table>
                <tr>
                    <td>
                        Enter Value (1)
                    </td>
                    <td>
                        <asp:TextBox ID="txtfirstno" runat="server"></asp:TextBox>
                    </td>
                     <td>
                        Enter Value (2)
                    </td>
                    <td>
                        <asp:TextBox ID="txtsecondno" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>

                    </td>
                    <td>
                        <asp:Button ID="btnsubtraction" runat="server" Text="Subtraction (-)" OnClick="btnsubtraction_Click"  />
                    </td>
                    <td>
                        <asp:Button ID="btnmultiplication" runat="server" Text="Multiplication (*)" OnClick="btnmultiplication_Click"  />
                    </td>
                    <td>

                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Back" />

                    </td>
                </tr>
                <tr>
                    <td>

                    </td>
                    <td>
                        <asp:Label ID="lblsub" runat="server" Text=" "></asp:Label>
                    </td>
                    <td>
                      <asp:Label ID="lblmul" runat="server" Text=" "></asp:Label>
                    </td>
                    <td>

                    </td>
                </tr>
                

            </table>
        </div>
        </center>
        </div>
  
    </asp:Content>

