<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Reg_Form.aspx.cs" Inherits="Reg_Form" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div style="position:relative;  height: 280px;width: 910px;"  class="employee-second-tab">
            <asp:Label ID="Label10" runat="server" style="position:absolute; top: 31px; left: 35px;" >Date of Birth:</asp:Label>
            <div  style="position:absolute; top: 30px; left: 123px;">
                 <asp:TextBox ID="dateOfBirth" runat="server" CssClass="datepicker" Width="155px"></asp:TextBox>
            </div>
           <asp:Label ID="Label11" runat="server" style="position:absolute; top: 61px; left: 28px;" Text="Marital Status:"></asp:Label>
           <asp:DropDownList ID="maritalStatus" runat="server" style="position:absolute; top: 60px; left: 123px;" Width="180px">
               <asp:ListItem Value="-1">--SELECT--</asp:ListItem>
               <asp:ListItem>Single</asp:ListItem>
               <asp:ListItem>Divorced</asp:ListItem>
               <asp:ListItem>Married</asp:ListItem>
               <asp:ListItem>Widow(er)</asp:ListItem>
            </asp:DropDownList>

           <asp:Label ID="Label12" runat="server" style="position:absolute; top: 91px; left: 65px;" Text="Gender:"></asp:Label>
           <asp:RadioButton ID="genderMale" runat="server" Checked="True" 
            GroupName="gender" style="position:absolute; top: 90px; left: 123px;" 
            Text="Male" />
           <asp:RadioButton ID="genderFemale" runat="server" GroupName="gender"  style="position:absolute; top: 90px; left: 210px;" Text="Female" />

        <asp:Label ID="Label13" runat="server" style="position:absolute; top: 121px; left: 60px;"  Text="Children:"></asp:Label>
        <asp:TextBox ID="children" runat="server" style="position:absolute; top: 120px; left: 123px;"  Width="180px"></asp:TextBox>

        <asp:Label ID="Label14" runat="server" style="position:absolute; top: 151px; left: 33px;"  Text="Home Phone:"></asp:Label>
        <asp:TextBox ID="homePhone" runat="server" style="position:absolute; top: 150px; left: 123px;"  Width="180px"></asp:TextBox>
        <asp:Label ID="Label15" runat="server" style="position:absolute; top: 181px; left: 67px;" Text="Mobile:"></asp:Label>
        <asp:TextBox ID="mobile1" runat="server" style="position:absolute; top: 180px; left: 123px;" 
            Width="180px"></asp:TextBox>
        <asp:TextBox ID="mobile2" runat="server" style="position:absolute; top: 210px; left: 123px;" Width="180px"></asp:TextBox>
        <asp:Label ID="Label16" runat="server" style="position:absolute; top: 241px; left: 77px;" Text="Email:"></asp:Label>
        <asp:TextBox ID="email" runat="server" style="position:absolute; top: 240px; left: 123px;" Width="180px"></asp:TextBox>
        <asp:Label ID="Label17" runat="server" style="position:absolute; top: 31px; left: 397px;" Text="Address:"></asp:Label>
        <asp:TextBox ID="address1" runat="server" style="position:absolute; top: 30px; left: 460px;" Width="180px"></asp:TextBox>
        <asp:TextBox ID="address2" runat="server" style="position:absolute; top: 60px; left: 460px;" Width="180px"></asp:TextBox>
        <asp:Label ID="Label18" runat="server" style="position:absolute; top: 91px; left: 424px;" Text="City:"></asp:Label>
        <asp:TextBox ID="city" runat="server" style="position:absolute; top: 90px; left: 460px;" Width="180px"></asp:TextBox>
        <asp:Label ID="Label19" runat="server" style="position:absolute; top: 121px; left: 403px;" Text="PO Box:"></asp:Label>
        <asp:TextBox ID="poBox" runat="server" 
            style="position:absolute; top: 120px; left: 460px;" Width="180px"></asp:TextBox>

        <asp:Label ID="Label20" runat="server" style="position:absolute; top: 151px; left: 416px;" Text="State:"></asp:Label>
        <asp:TextBox ID="state" runat="server" style="position:absolute; top: 150px; left: 460px;" Width="180px"></asp:TextBox>

        <asp:Label ID="Label21" runat="server" style="position:absolute; top: 181px; left: 393px;" Text="ZIP Code:"></asp:Label>
        <asp:TextBox ID="zipCode" runat="server" style="position:absolute; top: 180px; left: 460px;" 
            Width="180px"></asp:TextBox>

        <asp:Label ID="Label22" runat="server" style="position:absolute; top: 211px; left: 400px;" Text="Country:"></asp:Label>
        <asp:DropDownList ID="country" runat="server" style="position:absolute; top: 210px; left: 460px;" Width="180px">
        </asp:DropDownList>

        <asp:Label ID="Label23" runat="server" style="position:absolute; top: 241px; left: 383px;" Text="Nationality:"></asp:Label>
        <asp:DropDownList ID="nationality" runat="server" style="position:absolute; top: 240px; left: 460px;" Width="180px">
        </asp:DropDownList>
    </div>  
</asp:Content>

