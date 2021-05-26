<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="HakkimizdaAdmin.aspx.cs" Inherits="YemekTarifSitesi.HakkimizdaAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style9 {
            width: 33px;
        }
        .auto-style10 {
            width: 89px;
        }
        .auto-style12 {
            width: 485%;
        }
        .auto-style13 {
            width: 30px;
        }
    .auto-style14 {
        text-align: center;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server">
        <div class="auto-style10">
            <table class="auto-style12">
                <tr>
                    <td class="auto-style9">
                        <asp:Button ID="Button1" runat="server" CssClass="auto-style20"  Text="+" Width="30px" OnClick="Button1_Click" />
                    </td>
                    <td class="auto-style13">
                        <asp:Button ID="Button2" runat="server" CssClass="auto-style20"  Text="-" Width="30px" OnClick="Button2_Click" />
                    </td>
                    <td class="auto-style16"><strong>HAKKIMIZDA</strong></td>
                </tr>
            </table>
        </div>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <table class="auto-style6">
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="tb5" Height="276px" TextMode="MultiLine" Width="418px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style14">
                    <asp:Button ID="Button3" runat="server" CssClass="tb5" Height="40px" Text="GÜNCELLE" Width="134px" OnClick="Button3_Click" />
                </td>
            </tr>
        </table>

    </asp:Panel>
</asp:Content>
