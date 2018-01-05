<%@ Page Title="" Language="C#" MasterPageFile="~/home.master" AutoEventWireup="true" CodeFile="teacherlogin.aspx.cs" Inherits="teacherlogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style4
    {
        width: 38%;
        height: 163px;
    }
    .style5
    {
        width: 316px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="style4">
    <tr>
        <td align="center" class="style5" style="font-size: x-large; font-weight: bold">
            Teacher Login</td>
        <td rowspan="5">
            <asp:Image ID="Image2" runat="server" Height="148px" 
                ImageUrl="~/images/Login.jpg" Width="173px" />
        </td>
    </tr>
    <tr>
        <td class="style5" style="font-size: large; font-weight: bold">
            User Id<br />
            <asp:TextBox ID="TextBox1" runat="server" Width="176px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style5" style="font-weight: bold; font-size: large">
            Password<br />
            <asp:TextBox ID="TextBox2" runat="server" Width="173px" TextMode="Password"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style5">
            <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Size="Large" 
                Text="Login" onclick="Button1_Click" />
        </td>
    </tr>
    <tr>
        <td class="style5">
            <asp:Literal ID="Literal1" runat="server"></asp:Literal>
        </td>
    </tr>
</table>
</asp:Content>

