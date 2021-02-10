<%@ Page Title="" Language="C#" MasterPageFile="~/tasarm.Master" AutoEventWireup="true" CodeBehind="üyegirişi.aspx.cs" Inherits="harrypotter.Siparişlerim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <table class="w-100">
        <tr>
            <td style="width: 255px">Kullanıcı Adı:</td>
            <td style="width: 232px">
                <asp:TextBox ID="TextBox1" runat="server" Width="221px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" BackColor="Yellow" ControlToValidate="TextBox1" ErrorMessage="*Bu alan gereklidir." ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="height: 53px; width: 255px">Şifre:</td>
            <td style="height: 53px; width: 232px">
                <asp:TextBox ID="TextBox2" runat="server" Width="222px"></asp:TextBox>
            </td>
            <td style="height: 53px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" BackColor="Yellow" ControlToValidate="TextBox2" ErrorMessage="*Bu alan gereklidir." ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Giriş" />
                <asp:Button ID="Button2" runat="server" Text="Kaydol" OnClick="Button2_Click" />
                <br />
                <asp:Label ID="Label1" runat="server" ForeColor="Red" Text="Label"></asp:Label>
            </td>
        </tr>
    </table>
    
</asp:Content>
