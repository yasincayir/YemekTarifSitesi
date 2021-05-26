<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="YorumDetay.aspx.cs" Inherits="YemekTarifSitesi.YorumDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style6">
        <tr>
            <td colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td>AD SOYAD:</td>
            <td>
                <asp:TextBox ID="TextAdsoyad" runat="server" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>MAİL:</td>
            <td>
                <asp:TextBox ID="TextMail" runat="server" CssClass="tb5" TextMode="Email"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>İÇERİK:</td>
            <td>
                <asp:TextBox ID="TextIcerik" runat="server" CssClass="tb5" Height="157px" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>YEMEK:</td>
            <td>
                <asp:TextBox ID="TextYemek" runat="server" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="ButtonOnayla" runat="server" CssClass="tb5" Height="39px" Text="ONAYLA" Width="96px" OnClick="ButtonOnayla_Click" />
            </td>
        </tr>
        <tr>
            <td colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">&nbsp;</td>
        </tr>
    </table>
</asp:Content>
