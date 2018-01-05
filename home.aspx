<%@ Page Title="" Language="C#" MasterPageFile="~/home.master" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style4
    {
        width: 100px;
        height: 380px;
    }
    .style5
    {
        width: 80%;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="style5">
    <tr>
        <td align="center" 
            style="font-size: x-large; font-weight: bold; color: #FF0000">
            WELCOME TO HOME</td>
    </tr>
    <tr>
        <td align="center">
            <asp:Image ID="Image2" runat="server" Height="335px" 
                ImageUrl="~/images/welcome.jpg" Width="875px" />
        </td>
    </tr>
</table>
</asp:Content>

