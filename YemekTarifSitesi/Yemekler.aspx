<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Yemekler.aspx.cs" Inherits="YemekTarifSitesi.Yemekler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style10 {
            text-align: center;
        }

        .auto-style11 {
            text-align: right;
        }

        .auto-style12 {
            width: 377px;
        }

        .auto-style13 {
            background-color: #66FF33;
        }

        .auto-style14 {
            background-color: #99FF33;
        }

        .auto-style15 {
            text-align: center;
            width: 151px;
        }

        .auto-style16 {
            text-align: left;
        }

        .auto-style19 {
            text-align: left;
            width: 49px;
        }

        .auto-style20 {
            font-weight: bold;
            font-size: large;
        }

        .auto-style21 {
            text-align: left;
            width: 40px;
        }

        .auto-style22 {
            margin-left: 40px;
        }

        .auto-style23 {
            height: 23px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server">
        <div class="auto-style10">

            <table class="auto-style6">
                <tr>
                    <td class="auto-style21">
                        <asp:Button ID="Button1" runat="server" CssClass="auto-style20" Text="+" Width="30px" OnClick="Button1_Click"  />
                    </td>
                    <td class="auto-style19">
                        <asp:Button ID="Button2" runat="server" CssClass="auto-style20" Text="-" Width="30px" OnClick="Button2_Click" />
                    </td>
                    <td class="auto-style16">YEMEK LİSTESİ</td>
                </tr>
            </table>
        </div>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server">
            <ItemTemplate>
                <table class="auto-style6">
                    <tr>
                        <td class="auto-style12">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("AD") %>'></asp:Label>
                        </td>
                        <td class="auto-style15">
                            <a href="YemekDüzenle.aspx?YemekID=<%# Eval("ID") %>">
                                <asp:Image ID="Image2" runat="server" Height="30px" Width="30px" CssClass="auto-style13" ImageUrl="~/Image/update2.jpg" />
                            </a>
                        </td>
                        <td class="auto-style11">
                            <a href="Yemekler.aspx?YemekID=<%# Eval("ID") %>&islem=sil">
                                <asp:Image ID="Image3" runat="server" Height="30px" Width="30px" CssClass="auto-style14" ImageUrl="~/Image/delete2.png" />
                            </a>

                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server">
        <div class="auto-style10">

            <table class="auto-style6">
                <tr>
                    <td class="auto-style21">
                        <asp:Button ID="Button3" runat="server" CssClass="auto-style20" Text="+" Width="30px" OnClick="Button3_Click" />
                    </td>
                    <td class="auto-style19">
                        <asp:Button ID="Button4" runat="server" CssClass="auto-style20" Text="-" Width="30px" OnClick="Button4_Click"  />
                    </td>
                    <td class="auto-style16">YEMEK EKLEME</td>
                </tr>
            </table>
        </div>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
        <table class="auto-style6">
            <tr>
                <td class="auto-style23" colspan="2"></td>
            </tr>
            <tr>
                <td class="auto-style11">YEMEK ADI:</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="tb5"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style11">MALZEMELER:</td>
                <td class="auto-style22">
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="tb5" Height="164px" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style11">TARİF:</td>
                <td class="auto-style22">
                    <asp:TextBox ID="TextBox3" runat="server" CssClass="tb5" Height="168px" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style11">KATEGORİ:</td>
                <td class="auto-style22">
                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="tb5">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style22">
                    <asp:Button ID="ButtonEkle" runat="server" CssClass="tb5" Height="34px" Text="EKLE" Width="73px" OnClick="ButtonEkle_Click"  />
                </td>
            </tr>
            <tr>
                <td colspan="2">&nbsp;</td>
            </tr>
            <tr>
                <td colspan="2">&nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>

