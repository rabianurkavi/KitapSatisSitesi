<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="oturum.aspx.cs" Inherits="harrypotter.oturum" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <br />
            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Çıkış</asp:LinkButton>
        </div>
    </form>
</body>
</html>
