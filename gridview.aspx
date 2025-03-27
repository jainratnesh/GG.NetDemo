<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="gridview.aspx.cs" Inherits="gridview" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowEditButton="True" />
            <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
            <asp:BoundField DataField="Fname" HeaderText="Fname" SortExpression="Fname" />
            <asp:BoundField DataField="Lname" HeaderText="Lname" SortExpression="Lname" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
            <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
            <asp:BoundField DataField="Dob" HeaderText="Dob" SortExpression="Dob" />
            <asp:BoundField DataField="Mobile" HeaderText="Mobile" SortExpression="Mobile" />
            <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
            <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
  
     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RamConnectionString %>" DeleteCommand="DELETE FROM [UserDetails] WHERE [ID] = @ID" InsertCommand="INSERT INTO [UserDetails] ([Fname], [Lname], [Email], [Password], [Gender], [Dob], [Mobile], [Address], [City]) VALUES (@Fname, @Lname, @Email, @Password, @Gender, @Dob, @Mobile, @Address, @City)" SelectCommand="SELECT * FROM [UserDetails]" UpdateCommand="UPDATE [UserDetails] SET [Fname] = @Fname, [Lname] = @Lname, [Email] = @Email, [Password] = @Password, [Gender] = @Gender, [Dob] = @Dob, [Mobile] = @Mobile, [Address] = @Address, [City] = @City WHERE [ID] = @ID">
         <DeleteParameters>
             <asp:Parameter Name="ID" Type="Int64" />
         </DeleteParameters>
         <InsertParameters>
             <asp:Parameter Name="Fname" Type="String" />
             <asp:Parameter Name="Lname" Type="String" />
             <asp:Parameter Name="Email" Type="String" />
             <asp:Parameter Name="Password" Type="String" />
             <asp:Parameter Name="Gender" Type="String" />
             <asp:Parameter DbType="Date" Name="Dob" />
             <asp:Parameter Name="Mobile" Type="String" />
             <asp:Parameter Name="Address" Type="String" />
             <asp:Parameter Name="City" Type="String" />
         </InsertParameters>
         <UpdateParameters>
             <asp:Parameter Name="Fname" Type="String" />
             <asp:Parameter Name="Lname" Type="String" />
             <asp:Parameter Name="Email" Type="String" />
             <asp:Parameter Name="Password" Type="String" />
             <asp:Parameter Name="Gender" Type="String" />
             <asp:Parameter DbType="Date" Name="Dob" />
             <asp:Parameter Name="Mobile" Type="String" />
             <asp:Parameter Name="Address" Type="String" />
             <asp:Parameter Name="City" Type="String" />
             <asp:Parameter Name="ID" Type="Int64" />
         </UpdateParameters>
    </asp:SqlDataSource>
   
</asp:Content>

