<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="TarifOnerDetay.aspx.cs" Inherits="YemekTarifSitesi.TarifOnerDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style9 {
            text-align: right;
        }
        .auto-style10 {
            width: 306px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style11">
            <tr>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9"><strong>TARİF ADI:</strong></td>
                <td class="auto-style10">
                    <asp:TextBox ID="TextTarifAd" runat="server" CssClass="tb5"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9"><strong>MALZEMELER:</strong></td>
                <td class="auto-style10">
                    <asp:TextBox ID="TextMalzemeler" runat="server" CssClass="tb5" Height="152px" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9"><strong>YAPILIŞ:</strong></td>
                <td class="auto-style10">
                    <asp:TextBox ID="TextYapilis" runat="server" CssClass="tb5" Height="233px" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9"><strong>RESİM:</strong></td>
                <td class="auto-style10">
                    <asp:FileUpload ID="FileUpload1" runat="server" CssClass="tb5" />
                </td>
            </tr>
            <tr>
                <td class="auto-style9"><strong>ÖNEREN:</strong></td>
                <td class="auto-style10">
                    <asp:TextBox ID="TextOneren" runat="server" CssClass="tb5"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9"><strong>MAİL:</strong></td>
                <td class="auto-style10">
                    <asp:TextBox ID="TextMail" runat="server" CssClass="tb5"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9"><strong>KATEGORİ:</strong></td>
                <td class="auto-style10">
                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="tb5">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style10">
                    <asp:Button ID="Button1" runat="server" CssClass="tb5" Height="35px" OnClick="Button1_Click" Text="ONAYLA" Width="108px" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
