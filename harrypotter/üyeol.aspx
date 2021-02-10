<%@ Page Title="" Language="C#" MasterPageFile="~/tasarm.Master" AutoEventWireup="true" CodeBehind="üyeol.aspx.cs" Inherits="harrypotter.sepetim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2 class="text-center" style="word-spacing: 1px; line-height: 150%; color: #FF5050; margin-right: 270px; background-color: #FFCCCC;"><strong>KULLANICI GİRİŞİ</strong></h2>
    <table class="w-100">
        <tr>
            <td style="border: 4px groove #F1B0B7"><strong>Ad:</strong></td>
            <td style="width: 336px">
                <asp:TextBox ID="TextBox1" runat="server" Height="33px" style="border: 4px groove #F1B0B7" Width="312px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" BackColor="#FF5050" ControlToValidate="TextBox1" ErrorMessage="*Girilmesi Zorunludur!" ForeColor="White" style="border: 4px groove #F1B0B7"></asp:RequiredFieldValidator>
                <br style="border: 4px groove #F1B0B7" />
            </td>
        </tr>
        <tr>
            <td style="height: 29px; border: 4px groove #F1B0B7"><strong>Soyad:</strong></td>
            <td style="height: 29px; width: 336px">
                <asp:TextBox ID="TextBox2" runat="server" Height="33px" style="border: 4px groove #F1B0B7" Width="312px"></asp:TextBox>
            </td>
            <td style="height: 29px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" BackColor="#FF5050" ControlToValidate="TextBox2" ErrorMessage="*Girilmesi Zorunludur!" ForeColor="White" style="border: 4px groove #F1B0B7"></asp:RequiredFieldValidator>
                <br style="border: 4px groove #F1B0B7" />
            </td>
        </tr>
        <tr>
            <td style="border: 4px groove #F1B0B7"><strong>Yaş:</strong></td>
            <td style="width: 336px">
                <asp:TextBox ID="TextBox3" runat="server" Height="34px" style="border: 4px groove #F1B0B7" Width="311px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" BackColor="#FF5050" ControlToValidate="TextBox3" ErrorMessage="*Girilmesi Zorunludur!" ForeColor="White" style="border: 4px groove #F1B0B7"></asp:RequiredFieldValidator>
                <br style="border: 4px groove #F1B0B7" />
                <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox3" ErrorMessage="*Yaşınız uygun değil!" ForeColor="#FF6666" style="border: 4px groove #F1B0B7" MaximumValue="80" MinimumValue="12"></asp:RangeValidator>
            </td>
        </tr>
        <tr>
            <td style="height: 29px; border: 4px groove #F1B0B7"><strong>Kullanıcı Adı:</strong></td>
            <td style="height: 29px; width: 336px">
                <asp:TextBox ID="TextBox4" runat="server" Height="34px" style="border: 4px groove #F1B0B7" Width="310px"></asp:TextBox>
            </td>
            <td style="height: 29px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" BackColor="#FF5050" ControlToValidate="TextBox4" ErrorMessage="*Girilmesi Zorunludur!" ForeColor="White" style="border: 4px groove #F1B0B7"></asp:RequiredFieldValidator>
                <br style="border: 4px groove #F1B0B7" />
            </td>
        </tr>
        <tr>
            <td style="border: 4px groove #F1B0B7"><strong>Şifre:</strong></td>
            <td style="width: 336px">
                <asp:TextBox ID="TextBox5" runat="server" Height="34px" style="border: 4px groove #F1B0B7" Width="310px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" BackColor="#FF5050" ControlToValidate="TextBox5" ErrorMessage="*Girilmesi Zorunludur!" ForeColor="White" style="border: 4px groove #F1B0B7"></asp:RequiredFieldValidator>
                <br style="border: 4px groove #F1B0B7" />
            </td>
        </tr>
        <tr>
            <td style="height: 29px; border: 4px groove #F1B0B7"><strong>Şifre(Tekrar):</strong></td>
            <td style="height: 29px; width: 336px">
                <asp:TextBox ID="TextBox6" runat="server" Height="35px" style="border: 4px groove #F1B0B7" Width="311px"></asp:TextBox>
            </td>
            <td style="height: 29px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" BackColor="#FF5050" ControlToValidate="TextBox6" ErrorMessage="*Girilmesi Zorunludur!" ForeColor="White" style="border: 4px groove #F1B0B7"></asp:RequiredFieldValidator>
                <br style="border: 4px groove #F1B0B7" />
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox5" ControlToValidate="TextBox6" ErrorMessage="*Şifreler eşleşmiyor!" ForeColor="#FF6666" style="border: 4px groove #F1B0B7"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td style="border: 4px groove #F1B0B7"><strong>E-mail:</strong></td>
            <td style="width: 336px">
                <asp:TextBox ID="TextBox7" runat="server" Height="35px" style="border: 4px groove #F1B0B7" Width="311px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" BackColor="#FF5050" ControlToValidate="TextBox7" ErrorMessage="*Girilmesi Zorunludur!" ForeColor="White" style="border: 4px groove #F1B0B7"></asp:RequiredFieldValidator>
                <br style="border: 4px groove #F1B0B7" />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" BackColor="White" ControlToValidate="TextBox7" ErrorMessage="*Düzgün Formatta Girin!" ForeColor="#FF6666" style="border: 4px groove #F1B0B7" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:Button ID="Button1" runat="server" style="border: 4px groove #F1B0B7" Text="Kaydol" OnClick="Button1_Click" />
                <br style="border: 4px groove #F1B0B7" />
            </td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:Label ID="Label1" runat="server" ForeColor="#FF5050" style="border: 4px groove #F1B0B7" Text="Label"></asp:Label>
                <br style="border: 4px groove #F1B0B7" />
                <asp:CustomValidator ID="CustomValidator1" runat="server" BackColor="#FF9966" ErrorMessage="*Süreniz Doldu" ForeColor="White" style="border: 4px groove #F1B0B7" OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Giriş Sayfasına Git</asp:LinkButton>
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
            </td>
        </tr>
    </table>
    
</asp:Content>
