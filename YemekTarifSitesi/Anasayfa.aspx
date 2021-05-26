<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="Anasayfa.aspx.cs" Inherits="YemekTarifSitesi.Anasayfa" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style11 {
            text-align: left;
        }

        .auto-style12 {
            width: 100%;
        }

        .auto-style13 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style8">
        <strong>YEMEKLER</strong>
    </p>
    <p class="auto-style8">
        <asp:DataList ID="DataList2" runat="server">
            <ItemTemplate>
                <div class="auto-style11">
                    <table class="auto-style12">
                        <tr>
                            <td><strong>
                                <a href="YemekDetay.aspx?YemekID=<%# Eval("ID") %>">
                                    <asp:Label ID="Label3" runat="server" CssClass="auto-style10" Text='<%# Eval("AD") %>'></asp:Label>
                                </a>
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
                            <td class="auto-style13">
                                <asp:Image ID="Image1" runat="server" Height="207px" ImageUrl='<%# Eval("RESİM") %>' Width="313px" />
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td><strong>PUAN</strong>:<asp:Label ID="Label6" runat="server" Text='<%# Eval("PUAN") %>'></asp:Label>
                                &nbsp;&nbsp;&nbsp; -&nbsp; <strong>TARİH</strong>:<asp:Label ID="Label7" runat="server" Text='<%# Eval("TARİH") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td><strong>KATEGORİ</strong>:<asp:Label ID="Label8" runat="server" Text='<%# Eval("KategoriID") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="border-top-style: groove; border-color: #000000">&nbsp;</td>
                        </tr>
                    </table>
                </div>
            </ItemTemplate>
        </asp:DataList>
    </p>
</asp:Content>
