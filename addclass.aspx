<%@ Page Title="" Language="C#" MasterPageFile="~/teachermaster.master" AutoEventWireup="true" CodeFile="addclass.aspx.cs" Inherits="addclass" %>

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
            Add Class</td>
        <td rowspan="5">
            <asp:Image ID="Image2" runat="server" Height="148px" 
                ImageUrl="~/images/Login.jpg" Width="173px" />
        </td>
    </tr>
    <tr>
        <td class="style5" style="font-size: large; font-weight: bold">
            Class Name<br />
            <asp:TextBox ID="TextBox1" runat="server" Width="176px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style5" style="font-size: large; font-weight: bold">
            Class Teacher<br />
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style5">
            <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Size="Large" 
                Text="Add" onclick="Button1_Click" />
        </td>
    </tr>
    <tr>
        <td class="style5">
            <asp:Literal ID="Literal1" runat="server"></asp:Literal>
        </td>
    </tr>
</table>
</asp:Content>

