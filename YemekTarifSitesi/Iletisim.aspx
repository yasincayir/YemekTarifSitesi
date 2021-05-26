<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="Iletisim.aspx.cs" Inherits="YemekTarifSitesi.Iletisim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style11 {
        width: 100%;
    }
    .auto-style12 {
        text-align: right;
    }
    .auto-style13 {
        text-align: center;
        color: #FF0000;
        font-size: x-large;
    }
    .auto-style14 {
        border: 2px solid #456879;
        border-radius: 10px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style11">
    <tr>
        <td class="auto-style13" colspan="2"><strong>MESAJ PANELİ</strong></td>
    </tr>
    <tr>
        <td colspan="2">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style12"><strong>AD SOYAD:</strong></td>
        <td>
            <asp:TextBox ID="TextGonderen" runat="server" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style12"><strong>MAİL:</strong></td>
        <td>
            <asp:TextBox ID="TextMail" runat="server" CssClass="tb5" TextMode="Email"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style12"><strong>KONU:</strong></td>
        <td>
            <asp:TextBox ID="TextBaslik" runat="server" CssClass="tb5" Height="106px" TextMode="MultiLine"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style12"><strong>MESAJ:</strong></td>
        <td>
            <asp:TextBox ID="TextIcerik" runat="server" CssClass="tb5" Height="157px" TextMode="MultiLine"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
            <asp:Button ID="Button1" runat="server" CssClass="tb5" Height="38px" Text="GÖNDER" Width="103px" OnClick="Button1_Click" />
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>
