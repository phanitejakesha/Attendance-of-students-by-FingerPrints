<%@ Page Title="" Language="C#" MasterPageFile="~/teachermaster.master" AutoEventWireup="true" CodeFile="viewattendancedates.aspx.cs" Inherits="viewattendancehtno" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script src="Scripts/jquery-1.4.1.min.js" type="text/javascript"></script>
<script src="Scripts/jquery.dynDateTime.min.js" type="text/javascript"></script>
<script src="Scripts/calendar-en.min.js" type="text/javascript"></script>
<link href="Styles/calendar-blue.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">
    $(document).ready(function () {
        $("#<%=TextBox1.ClientID %>").dynDateTime({
            showsTime: true,
            ifFormat: "%Y/%m/%d %H:%M",
            daFormat: "%l;%M %p, %e %m, %Y",
            align: "BR",
            electric: false,
            singleClick: false,
            displayArea: ".siblings('.dtcDisplayArea')",
            button: ".next()"
        });
    });


    $(document).ready(function () {
        $("#<%=TextBox2.ClientID %>").dynDateTime({
            showsTime: true,
            ifFormat: "%Y/%m/%d %H:%M",
            daFormat: "%l;%M %p, %e %m, %Y",
            align: "BR",
            electric: false,
            singleClick: false,
            displayArea: ".siblings('.dtcDisplayArea')",
            button: ".next()"
        });
    });



</script>
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
            <td align="center" colspan="3" style="font-size: x-large; font-weight: bold">
                View Attendance Betweendates</td>
        </tr>
        <tr>
            <td align="center" style="font-weight: bold; font-size: large">
                Branch<br />
                <asp:DropDownList ID="DropDownList1" runat="server" Width="200px">
                </asp:DropDownList>
            </td>
            <td align="center" class="style5" style="font-size: large; font-weight: bold">
                Year<br />
                <asp:DropDownList ID="DropDownList2" runat="server" Width="200px">
                </asp:DropDownList>
            </td>
            <td align="center" style="font-size: large; font-weight: bold">
                Semister<br />
                <asp:DropDownList ID="DropDownList3" runat="server" Width="200px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td align="center" style="font-size: large; font-weight: bold">
                &nbsp;</td>
            <td align="center" class="style5" style="font-size: large; font-weight: bold">
                Start Date<br />
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <img src="images/calenderimage.jpg" style="height: 30px; width: 30px" />
                <br />
            </td>
            <td align="center">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center" style="font-size: large; font-weight: bold">
                &nbsp;</td>
            <td align="center" class="style5" style="font-size: large; font-weight: bold">
                End Date<br />
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <img src="images/calenderimage.jpg" style="height: 30px; width: 30px" />
            </td>
            <td align="center">
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td align="center" class="style5">
                <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Size="Large" 
                    Text="Show" onclick="Button1_Click" />
            </td>
            <td>
                <br />
            </td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:GridView ID="GridView1" runat="server" BackColor="White" 
                    BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                    Height="155px" Width="698px" AllowPaging="True" AllowSorting="True" 
                    AutoGenerateColumns="False" DataKeyNames="rollno" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:BoundField DataField="rollno" HeaderText="rollno" ReadOnly="True" 
                            SortExpression="rollno" />
                        <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
                        <asp:BoundField DataField="status" HeaderText="status" 
                            SortExpression="status" />
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:fingerprintsDBConnectionString2 %>" 
                    SelectCommand="SELECT * FROM [attendance]"></asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

