<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CS.aspx.cs" Inherits="CS" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <asp:FileUpload ID="FileUpload1" runat="server" />
    <asp:Button ID="btnUpload" runat="server" Text="Upload" OnClick="Upload" />
        <asp:Button ID="btnImgShow" runat="server" Text="Image Show" OnClick="btnImgShow_Click" />
        <asp:Button ID="btnreset" runat="server" Text="Reset" OnClick="btnreset_Click" />
        <asp:Button ID="btnback" runat="server" Text="Back" OnClick="btnback_Click" />
    <hr />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" ShowHeader="false">
        <Columns>
            <asp:BoundField DataField="Text" />
            <asp:ImageField  DataImageUrlField="Value" ControlStyle-Height="100" ControlStyle-Width="100" >
<ControlStyle Height="100px" Width="100px"></ControlStyle>
            </asp:ImageField>
           <%-- <asp:ImageField DataImageUrlField="Value" ControlStyle-Height="100" ControlStyle-Width="100" >
<ControlStyle Height="100px" Width="100px"></ControlStyle>
            </asp:ImageField>--%>
        </Columns>
        <PagerSettings Position="TopAndBottom" />
    </asp:GridView>
    </form>
</body>
</html>
