
<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Divisionand Module.aspx.cs" Inherits="Divisionand_Module" %>

   <asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

     
       </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
            <center>
        <div>
                         <h1> Division (/) and Module (%) Operators</h1>
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
                        <asp:Button ID="btndivision" runat="server" Text="Division (/)" OnClick="btndivision_Click"   />
                    </td>
                    <td>
                        <asp:Button ID="btnmodule" runat="server" Text="Module (%)" OnClick="btnmodule_Click" />
                    </td>
                    <td>

                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Back" />

                        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Next" />

                    </td>
                </tr>
                <tr>
                    <td>

                    </td>
                    <td>
                        <asp:Label ID="lbldiv" runat="server" Text=" "></asp:Label>
                    </td>
                    <td>
                      <asp:Label ID="lblmod" runat="server" Text=" "></asp:Label>
                    </td>
                    <td>

                    </td>
                </tr>
                

            </table>
        </div>
        </center>
        </div>
</asp:Content>