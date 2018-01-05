<%@ Page Title="" Language="C#" MasterPageFile="~/teachermaster.master" AutoEventWireup="true" CodeFile="viewstudents.aspx.cs" Inherits="viewstudents" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style4
    {
        width: 50%;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="style4">
    <tr>
        <td align="center" style="font-size: x-large; font-weight: bold">
            Student View Details<br />
        </td>
    </tr>
    <tr>
        <td align="center" style="font-size: x-large; font-weight: bold">
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                AllowSorting="True" AutoGenerateColumns="False" BackColor="White" 
                BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                DataKeyNames="rollno" DataSourceID="SqlDataSource2" Height="203px" 
                Width="660px">
                <Columns>
                    <asp:BoundField DataField="rollno" HeaderText="rollno" ReadOnly="True" 
                        SortExpression="rollno" />
                    <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                    <asp:BoundField DataField="fathername" HeaderText="fathername" 
                        SortExpression="fathername" />
                    <asp:BoundField DataField="address" HeaderText="address" 
                        SortExpression="address" />
                    <asp:BoundField DataField="phoneno" HeaderText="phoneno" 
                        SortExpression="phoneno" />
                    <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                    <asp:BoundField DataField="branch" HeaderText="branch" 
                        SortExpression="branch" />
                    <asp:BoundField DataField="year" HeaderText="year" SortExpression="year" />
                    <asp:BoundField DataField="sem" HeaderText="sem" SortExpression="sem" />
                    <asp:BoundField DataField="thumb" HeaderText="thumb" SortExpression="thumb" />
                    <asp:BoundField DataField="photo" HeaderText="photo" SortExpression="photo" />
                </Columns>
                <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                <RowStyle BackColor="White" ForeColor="#330099" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                <SortedAscendingCellStyle BackColor="#FEFCEB" />
                <SortedAscendingHeaderStyle BackColor="#AF0101" />
                <SortedDescendingCellStyle BackColor="#F6F0C0" />
                <SortedDescendingHeaderStyle BackColor="#7E0000" />
            </asp:GridView>
            <br />
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                ConnectionString="<%$ ConnectionStrings:fingerprintsConnectionString %>" 
                SelectCommand="SELECT * FROM [students]"></asp:SqlDataSource>
        </td>
    </tr>
</table>
</asp:Content>

