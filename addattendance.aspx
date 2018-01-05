<%@ Page Title="" Language="C#" MasterPageFile="~/teachermaster.master" AutoEventWireup="true" CodeFile="addattendance.aspx.cs" Inherits="addattendance" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style4
    {
        width: 46%;
        height: 317px;
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
            Add Attendace</td>
        <td rowspan="7">
            <asp:Image ID="Image2" runat="server" Height="148px" 
                ImageUrl="~/images/Login.jpg" Width="173px" />
        </td>
    </tr>
    <tr>
        <td class="style5" style="font-size: large; font-weight: bold">
            RollNo<br />
            <asp:TextBox ID="TextBox1" runat="server" Width="176px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style5" style="font-size: large; font-weight: bold">
            Class<br />
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style5" style="font-weight: bold; font-size: large">
            Date<br />
            <asp:TextBox ID="TextBox2" runat="server" Width="173px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style5" style="font-weight: bold; font-size: large">
            Status<br />
            <asp:TextBox ID="TextBox3" runat="server" Width="170px"></asp:TextBox>
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

