<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Tarifler.aspx.cs" Inherits="YemekTarifSitesi.Tarifler" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style10 {
            text-align: center;
        }

        .auto-style13 {
            background-color: #66FF33;
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
            width: 450px;
        }

        .auto-style23 {
            text-align: right;
            width: 151px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server">
        <div class="auto-style10">

            <table class="auto-style6">
                <tr>
                    <td class="auto-style21">
                        <asp:Button ID="Button1" runat="server" CssClass="auto-style20" Text="+" Width="30px" OnClick="Button1_Click" />
                    </td>
                    <td class="auto-style19">
                        <asp:Button ID="Button2" runat="server" CssClass="auto-style20" Text="-" Width="30px" OnClick="Button2_Click" />
                    </td>
                    <td class="auto-style16"><strong>ONAYLANMAYAN TARİF LİSTESİ</strong></td>
                </tr>
            </table>
        </div>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server">
            <ItemTemplate>
                <table class="auto-style6">
                    <tr>
                        <td class="auto-style22">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("AD") %>'></asp:Label>
                        </td>
                        <td class="auto-style23">
                            <a href="TarifOnerDetay.aspx?TarifID=<%# Eval("ID") %>">
                                <asp:Image ID="Image2" runat="server" Height="30px" Width="30px" CssClass="auto-style13" ImageUrl="~/Image/read.jpg" />
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
                        <asp:Button ID="Button3" runat="server" CssClass="auto-style20" Text="+" Width="30px" OnClick="Button3_Click"  />
                    </td>
                    <td class="auto-style19">
                        <asp:Button ID="Button4" runat="server" CssClass="auto-style20" Text="-" Width="30px" OnClick="Button4_Click"  />
                    </td>
                    <td class="auto-style16"><strong>ONAYLANAN TARİF LİSTESİ</strong></td>
                </tr>
            </table>
        </div>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
        <asp:DataList ID="DataList2" runat="server">
            <ItemTemplate>
                <table class="auto-style6">
                    <tr>
                        <td class="auto-style22">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("AD") %>'></asp:Label>
                        </td>
                        <td class="auto-style23">
                            <a href="TarifOnerDetay.aspx?TarifID=<%# Eval("ID") %>">
                                <asp:Image ID="Image2" runat="server" Height="30px" Width="30px" CssClass="auto-style13" ImageUrl="~/Image/read.jpg" />
                            </a>


                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>

</asp:Content>


