<%@ Page Title="" Language="C#" MasterPageFile="~/home.master" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style5
        {
            width: 60%;
            height: 191px;
        }
        .style6
        {
            width: 479px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="style5" style="border-style: inset">
        <tr>
            <td>
                <table align="center" class="style5">
                    <tr>
                        <td align="center" class="style6" style="font-size: x-large; font-weight: 700">
                            Contact</td>
                    </tr>
                    <tr>
                        <td class="style6">
                            Name:
                            <br />
                        </td>
                    </tr>
                </table>
            </td>
            <td>
                <asp:Image ID="Image2" runat="server" ImageUrl="~/images/nature1.jpg" />
            </td>
        </tr>
    </table>
</asp:Content>

