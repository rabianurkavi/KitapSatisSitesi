<%@ Page Title="" Language="C#" MasterPageFile="~/tasarm.Master" AutoEventWireup="true" CodeBehind="tablo.aspx.cs" Inherits="harrypotter.tablo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    

    <br />
    

    <table class="w-100">
        <tr>
            <td style="width: 479px; font-family: 'Segoe UI'"><b>ID</b></td>
            <td colspan="3">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 479px; font-family: 'Segoe UI'"><b>AD</b></td>
            <td colspan="3">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 479px; font-family: 'Segoe UI'"><b>SOYAD</b></td>
            <td colspan="3">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 479px; font-family: 'Segoe UI'"><b>ŞEHİR</b></td>
            <td colspan="3">
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 479px; font-family: 'Segoe UI'"><b>İLÇE</b></td>
            <td colspan="3">
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 479px; font-family: 'Segoe UI'"><b>MAHALLE</b></td>
            <td colspan="3">
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 479px; font-family: 'Segoe UI'"><b>SOKAK-APARTMAN-KAPI NO</b></td>
            <td colspan="3">
                <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Ekle" OnClick="Button1_Click1" />
            </td>
            <td>
                <asp:Button ID="Button2" runat="server" Text="Güncelle" OnClick="Button2_Click" />
            </td>
            <td>
                <asp:Button ID="Button3" runat="server" Text="Sil" OnClick="Button3_Click" />
            </td>
        </tr>
    </table>
<p>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataKeyNames="id" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="None">
        <AlternatingRowStyle BackColor="PaleGoldenrod" />
        <Columns>
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="adı" HeaderText="adı" SortExpression="adı" />
            <asp:BoundField DataField="soyadı" HeaderText="soyadı" SortExpression="soyadı" />
            <asp:BoundField DataField="sehir" HeaderText="sehir" SortExpression="sehir" />
            <asp:BoundField DataField="ilçe" HeaderText="ilçe" SortExpression="ilçe" />
            <asp:BoundField DataField="mahalle" HeaderText="mahalle" SortExpression="mahalle" />
            <asp:BoundField DataField="sokak" HeaderText="sokak" SortExpression="sokak" />
        </Columns>
        <FooterStyle BackColor="Tan" />
        <HeaderStyle BackColor="Tan" Font-Bold="True" />
        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
        <SortedAscendingCellStyle BackColor="#FAFAE7" />
        <SortedAscendingHeaderStyle BackColor="#DAC09E" />
        <SortedDescendingCellStyle BackColor="#E1DB9C" />
        <SortedDescendingHeaderStyle BackColor="#C2A47B" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString4 %>" ProviderName="<%$ ConnectionStrings:ConnectionString4.ProviderName %>" SelectCommand="SELECT * FROM [ogrenci]" UpdateCommand=" update ogrenci set adı=@adı,soyadı=@soyadı,sehir=@sehir,ilçe=@ilçe,mahalle=@mahalle,sokak=@sokak" DeleteCommand="delete from ogrenci where id=@id" InsertCommand="insert into ogrenci(id,adı,soyadı,sehir,ilçe,mahalle,sokak) values (@id,@adı,@soyadı,@sehir,@ilçe,@mahalle,@sokak)">
        <UpdateParameters>
            <asp:ControlParameter Name="id" ControlID="TextBox1" PropertyName="Text" />
            <asp:ControlParameter Name="adı" ControlID="TextBox2" PropertyName="Text" />
            <asp:ControlParameter Name="soyadı" ControlID="TextBox3" PropertyName="Text" />
            <asp:ControlParameter Name="sehir" ControlID="TextBox4" PropertyName="Text" />
            <asp:ControlParameter Name="ilçe" ControlID="TextBox5" PropertyName="Text" />
            <asp:ControlParameter Name="mahalle" ControlID="TextBox6" PropertyName="Text" />
            <asp:ControlParameter Name="sokak" ControlID="TextBox7" PropertyName="Text" />
        </UpdateParameters>
        <InsertParameters>
            <asp:ControlParameter Name="id" ControlID="TextBox1" PropertyName="Text" />
            <asp:ControlParameter Name="adı" ControlID="TextBox2" PropertyName="Text" />
            <asp:ControlParameter Name="soyadı" ControlID="TextBox3" PropertyName="Text" />
            <asp:ControlParameter Name="sehir" ControlID="TextBox4" PropertyName="Text" />
            <asp:ControlParameter Name="ilçe" ControlID="TextBox5" PropertyName="Text" />
            <asp:ControlParameter Name="mahalle" ControlID="TextBox6" PropertyName="Text" />
            <asp:ControlParameter Name="sokak" ControlID="TextBox7" PropertyName="Text" />        
        </InsertParameters>
        <DeleteParameters>
            <asp:ControlParameter Name="id" ControlID="TextBox1" PropertyName="Text" />
        </DeleteParameters>
    </asp:SqlDataSource>
</p>
<p>
    &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="name" DataSourceID="SqlDataSource2" GridLines="Vertical">
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <Columns>
                <asp:BoundField DataField="name" HeaderText="name" InsertVisible="False" ReadOnly="True" SortExpression="name" />
                <asp:BoundField DataField="adi" HeaderText="adi" SortExpression="adi" />
                <asp:BoundField DataField="yazar" HeaderText="yazar" SortExpression="yazar" />
                <asp:BoundField DataField="sayfasayisi" HeaderText="sayfasayisi" SortExpression="sayfasayisi" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#0000A9" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#000065" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString7 %>" ProviderName="<%$ ConnectionStrings:ConnectionString7.ProviderName %>" SelectCommand="SELECT * FROM [kitap]" UpdateCommand=" update kitap set adi=@adi,yazar=@yazar,sayfasayisi=@sayfasayisi" DeleteCommand="delete from kitap where name=@name" InsertCommand="insert into kitap(name,adi,yazar,sayfasayisi) values (@name,@adi,@yazar,@sayfasayisi)">
               <UpdateParameters>
            <asp:ControlParameter Name="name" ControlID="TextBox8 " PropertyName="Text" />
            <asp:ControlParameter Name="adi" ControlID=" TextBox9" PropertyName="Text" />
            <asp:ControlParameter Name="yazar" ControlID=" TextBox10" PropertyName="Text" />
            <asp:ControlParameter Name="sayfasayisi" ControlID=" TextBox11" PropertyName="Text" />
        </UpdateParameters>
        <InsertParameters>
            <asp:ControlParameter Name="name" ControlID= "TextBox8" PropertyName="Text" />
            <asp:ControlParameter Name="adi" ControlID=" TextBox9" PropertyName="Text" />
            <asp:ControlParameter Name="yazar" ControlID=" TextBox10" PropertyName="Text" />
            <asp:ControlParameter Name="sayfasayisi" ControlID=" TextBox11" PropertyName="Text" />
        </InsertParameters>
        <DeleteParameters>
            <asp:ControlParameter Name="name" ControlID="TextBox8" PropertyName="Text" />
        </DeleteParameters>
        </asp:SqlDataSource>
</p>
    <table class="w-100">
        <tr>
            <td style="width: 436px">İD:</td>
            <td colspan="3">
                <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 436px">KİTABIN ADI:</td>
            <td colspan="3">
                <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 436px">YAZARI:</td>
            <td colspan="3">
                <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 436px">SAYFA SAYISI:</td>
            <td colspan="3">
                <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 436px">&nbsp;</td>
            <td>
                <asp:Button ID="Button4" runat="server" Text="Ekle" OnClick="Button4_Click" />
            </td>
            <td>
                <asp:Button ID="Button5" runat="server" Text="Güncelle" OnClick="Button5_Click" style="height: 33px" />
            </td>
            <td>
                <asp:Button ID="Button6" runat="server" Text="Sil" OnClick="Button6_Click" />
            </td>
        </tr>
    </table>
<p>
    &nbsp;</p>
<p>
    &nbsp;</p>
<p>
    &nbsp;</p>
<p>
    &nbsp;</p>
<p>
    &nbsp;</p>
<p>
    <br />
</p>
<p>
</p>

    

</asp:Content>
