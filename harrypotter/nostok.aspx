<%@ Page Title="" Language="C#" MasterPageFile="~/tasarm.Master" AutoEventWireup="true" CodeBehind="nostok.aspx.cs" Inherits="harrypotter.nostok" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div><h3> Öğrenci bursu başvuru formu doldurunuz.</h3></div>
    <div>
        <asp:Repeater ID="Repeater1" runat="server">
            <HeaderTemplate>
<table border="1">
<tr>
<th>Numara</th>
<th>Adı-Soyadı</th>
<th>Bolum</th>
<th>Doğum Tarihi</th>
</tr>
</HeaderTemplate>
<ItemTemplate>

<tr>
<td><%# Eval("id") %></td>
<td><%# Eval("adi") %> <%# Eval("soyadi") %></td>
<td><%# Eval("bolum") %></td>
<td><%# Eval("dtarih") %></td>
</tr>

</ItemTemplate>
<FooterTemplate>
</table>
</FooterTemplate>
        </asp:Repeater>
        <br />
<br />
<table border="1" class="auto-style1">
<tr>
<td class="auto-style2">
<asp:FileUpload ID="FileUpload1" runat="server" />
</td>
<td>*Genişlik Yükseklik giriniz:</td>
</tr>
<tr>
<td class="auto-style2">Adı:
<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
</td>
<td>Genişlik:
<asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
</td>
</tr>
<tr>
<td class="auto-style2">Soyadı:
<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
</td>
<td>Yükseklik:
<asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
</td>
</tr>
<tr>
<td class="auto-style2">Bolum:
<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
</td>
<td>&nbsp;</td>
</tr>
<tr>
<td class="auto-style2">DTarih:
<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
</td>
<td>
<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Kaydet" />
</td>
</tr>
<tr>
<td class="auto-style3" colspan="2">
<asp:Label ID="Label1" runat="server" Font-Bold="True" Text="Label"></asp:Label>
</td>
</tr>
<tr>
<td class="auto-style2">Eski Hali:
<asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
</td>
<td>Yeni Hali:
<asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
</td>
</tr>
<tr>
<td class="auto-style2">
<asp:Image ID="Image1" runat="server" />
</td>
<td>
<asp:Image ID="Image2" runat="server" />
</td>
</tr>
</table>
</div>

<asp:DataList ID="DataList1" runat="server">
<ItemTemplate>
<table>
<tr>
<th> Üye Adı-Soyadı</th>
<td>
<%# Eval("adi") %> <%# Eval("soyadi") %>
</td>
</tr>
<tr>
<th> Resim</th>
<td>
<asp:Image ID="Image3" runat="server" ImageUrl='<%# Eval("resim") %>' />
</td>
</tr>
</table>
</ItemTemplate>
</asp:DataList>

    
    </asp:Content>
