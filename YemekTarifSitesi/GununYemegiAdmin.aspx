<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="GununYemegiAdmin.aspx.cs" Inherits="YemekTarifSitesi.GununYemegiAdmin" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style10 {
            text-align: center;
        }

        .auto-style12 {
            width: 377px;
        }

        .auto-style13 {
            background-color: #66FF33;
        }

        .auto-style15 {
            text-align: right;
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

        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server">
        <div class="auto-style10">

            <table class="auto-style6">
                <tr>
                    <td class="auto-style21">
                        <asp:Button ID="Button1" runat="server" CssClass="auto-style20" Text="+" Width="30px" OnClick="Button1_Click"   />
                    </td>
                    <td class="auto-style19">
                        <asp:Button ID="Button2" runat="server" CssClass="auto-style20" Text="-" Width="30px" OnClick="Button2_Click"  />
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
                                <asp:Image ID="Image2" runat="server" Height="30px" Width="30px" CssClass="auto-style13" ImageUrl="~/Image/choose.jpg" />
                            </a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
</asp:Content>


