<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>


<%@ Register Assembly="MSCaptcha" Namespace="MSCaptcha" TagPrefix="rsv" %> 

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    </form>
</body>
<form id="form2" runat="server">
    <div class="style1">
    
        <div class="style2">
        
        <rsv:CaptchaControl ID="captcha1" runat ="server" CaptchaLength="5" 
                CaptchaHeight ="60" CaptchaWidth="200" CaptchaLineNoise="None" 
                CaptchaMinTimeout="5" CaptchaMaxTimeout="240" ForeColor="#00FFCC" 
                BackColor="White" CaptchaChars="ABCDEFGHIJKLNPQRTUVXYZ12346789" 
                FontColor="Red" /> 
        <br />
        <asp:TextBox ID="TextBox2" runat="server" CssClass="style4" Width="196px"></asp:TextBox>
            <br />
            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Veryfy" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="TextBox2" ErrorMessage="*"></asp:RequiredFieldValidator>

            <asp:Label ID="Label1" runat="server" Text="Label" Font-Bold="True" 
                Font-Size="XX-Large"></asp:Label>
        </div>
    
    </div>
    </form>
</html>
