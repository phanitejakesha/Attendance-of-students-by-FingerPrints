<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="addteachers.aspx.cs" Inherits="addteachers" %>
<%@ Register Assembly="MSCaptcha" Namespace="MSCaptcha" Tagprefix="rsv"  %>
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
    .style6
    {
        width: 316px;
        height: 54px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="style4">
    <tr>
        <td align="center" class="style5" style="font-size: x-large; font-weight: bold">
            Add Teachers</td>
        <td rowspan="11">
            <asp:Image ID="Image2" runat="server" Height="148px" 
                ImageUrl="~/images/Login.jpg" Width="173px" />
        </td>
    </tr>
    <tr>
        <td class="style5" style="font-size: large; font-weight: bold">
            Name<br />
            <asp:TextBox ID="TextBox1" runat="server" Width="180px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style6" style="font-weight: bold; font-size: large">
            Phone No<br />
            <asp:TextBox ID="TextBox2" runat="server" Width="180px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style5" style="font-weight: bold; font-size: large">
            Email<br />
            <asp:TextBox ID="TextBox3" runat="server" Width="180px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style5" style="font-weight: bold; font-size: large">
            Address<br />
            <asp:TextBox ID="TextBox4" runat="server" Height="65px" TextMode="MultiLine" 
                Width="180px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style5" style="font-weight: bold; font-size: large">
            Teacher-Id<br />
            <asp:TextBox ID="TextBox5" runat="server" Width="180px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style5" style="font-weight: bold; font-size: large">
            Password<br />
            <asp:TextBox ID="TextBox6" runat="server" Width="180px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style5" style="font-weight: bold; font-size: large">
            Branch<br />
            <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="180px">
                <asp:ListItem>CSE</asp:ListItem>
                <asp:ListItem>ece</asp:ListItem>
                <asp:ListItem>Civil</asp:ListItem>
                <asp:ListItem>eee</asp:ListItem>
                <asp:ListItem>me</asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="style5" style="font-weight: bold; font-size: large">
            Photo<br />
            <asp:FileUpload ID="FileUpload2" runat="server" />
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
            
            <br />
        </td>
    </tr>
</table>
</asp:Content>

