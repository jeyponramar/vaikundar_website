<%@ Page Language="C#" AutoEventWireup="true" CodeFile="rename-files.aspx.cs" Inherits="rename_files" Title="Rename Files"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        Folder :
        <asp:TextBox ID="txtFolder" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="btnSubmit" Text="Submit" runat="server" OnClick="btnSubmit_Onclick"/>
        <br />
        <asp:Label ID="lblStatus" runat="server" ForeColor="Red"></asp:Label>
        
    </div>
    </form>
</body>
</html>
