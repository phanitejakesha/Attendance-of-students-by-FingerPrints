<%@ Page Title="" Language="C#" MasterPageFile="~/teachermaster.master" AutoEventWireup="true" CodeFile="viewattendance.aspx.cs" Inherits="viewattendance" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" 
            NavigateUrl="~/viewattendancebyclass.aspx" BackColor="#66FFFF" 
            Font-Bold="True">Attendance by Class</asp:HyperLink>
    </p>
    <p>
        <asp:HyperLink ID="HyperLink2" runat="server" 
            NavigateUrl="viewattendancehtno.aspx" BackColor="#66FFFF" Font-Bold="True">Attendance With Hall Ticket Number</asp:HyperLink>
    </p>
    <p>
        <asp:HyperLink ID="HyperLink3" runat="server" 
            NavigateUrl="viewattendancedates.aspx" BackColor="#66FFFF" 
            Font-Bold="True">Attendance by Date</asp:HyperLink>
    </p>
    <br />
</asp:Content>

