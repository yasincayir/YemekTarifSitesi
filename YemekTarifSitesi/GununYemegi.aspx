<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="GununYemegi.aspx.cs" Inherits="YemekTarifSitesi.GununYemegi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style11 {
        text-align: center;
    }
    .auto-style12 {
        text-align: left;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style10">
    <strong>GÜNÜN YEMEĞİ</strong></p>
<asp:DataList ID="DataList2" runat="server">
    <ItemTemplate>
        <table class="auto-style7">
            <tr>
                <td><strong>
                    <asp:Label ID="Label3" runat="server" CssClass="auto-style10" Text='<%# Eval("AD") %>'></asp:Label>
                    </strong></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td><strong>MALZEMELER</strong>:<br />
                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("MALZEME") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td><strong>TARİF</strong>:<br />
                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("TARİF") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style11">
                    <asp:Image ID="Image1" runat="server" Height="268px" ImageUrl='<%# Eval("RESİM") %>' Width="331px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style12"><strong>PUAN</strong>:<asp:Label ID="Label6" runat="server" Text='<%# Eval("PUAN") %>'></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>TARİH</strong>:<asp:Label ID="Label7" runat="server" Text='<%# Eval("TARİH") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style12">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style12">&nbsp;</td>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>
</asp:Content>
