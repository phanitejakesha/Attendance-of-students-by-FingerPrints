<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="viewstudents.aspx.cs" Inherits="viewstudents" %>

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
            &nbsp;Teacher View Details<br />
        </td>
    </tr>
    <tr>
        <td align="center" style="font-size: x-large; font-weight: bold">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                DataKeyNames="teacherid" DataSourceID="SqlDataSource2">
                <Columns>
                    <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                    <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
                    <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                    <asp:BoundField DataField="address" HeaderText="address" 
                        SortExpression="address" />
                    <asp:BoundField DataField="teacherid" HeaderText="teacherid" ReadOnly="True" 
                        SortExpression="teacherid" />
                    <asp:BoundField DataField="password" HeaderText="password" 
                        SortExpression="password" />
                    <asp:BoundField DataField="branch" HeaderText="branch" 
                        SortExpression="branch" />
                    <asp:BoundField DataField="photo" HeaderText="photo" SortExpression="photo" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                ConnectionString="<%$ ConnectionStrings:fingerprintsConnectionString %>" 
                SelectCommand="SELECT * FROM [teachers]"></asp:SqlDataSource>
        </td>
    </tr>
</table>
</asp:Content>

