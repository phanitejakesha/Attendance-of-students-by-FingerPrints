<%@ Page Title="" Language="C#" MasterPageFile="~/teachermaster.master" AutoEventWireup="true" CodeFile="viewattendancehtno.aspx.cs" Inherits="viewattendancehtno" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
    <style type="text/css">
        .style4
        {
            width: 50%;
            height: 156px;
        }
        .style5
        {
            width: 152px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="style4">
        <tr>
            <td align="center" style="font-size: x-large; font-weight: bold">
                View Attendance Betweendates</td>
        </tr>
        <tr>
            <td align="center" style="font-size: x-large; font-weight: bold">
                Htno<br />
                <asp:TextBox ID="TextBox1" runat="server" Width="204px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="center" style="font-size: x-large; font-weight: bold">
                <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Size="Large" 
                    Text="Show" onclick="Button1_Click" />
                <br />
                <asp:Literal ID="Literal1" runat="server"></asp:Literal>
            </td>
        </tr>
        <tr>
            <td>
            <center>
                <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" 
                    GridLines="None" Width="359px">
                    <AlternatingRowStyle BackColor="White" />
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                    <SortedAscendingCellStyle BackColor="#FDF5AC" />
                    <SortedAscendingHeaderStyle BackColor="#4D0000" />
                    <SortedDescendingCellStyle BackColor="#FCF6C0" />
                    <SortedDescendingHeaderStyle BackColor="#820000" />
                </asp:GridView>
                </center>
            </td>
        </tr>
    </table>
</asp:Content>

