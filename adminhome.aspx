<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="adminhome.aspx.cs" Inherits="adminhome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style4
    {
        width: 59%;
        height: 399px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="style4">
    <tr>
        <td align="center" 
            style="font-size: x-large; font-weight: bold; color: #000000">
            WELCOME TO ADMIN HOME PAGE</td>
    </tr>
    <tr>
        <td align="center">
            <asp:Image ID="Image2" runat="server" Height="358px" 
                ImageUrl="~/images/Login.jpg" Width="830px" />
        </td>
    </tr>
    </table>
</asp:Content>

