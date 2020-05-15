<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ayush5.aspx.cs" Inherits="ayush5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    
    
        <div class="auto-style1">
            REGISTRATION<br />
            <br />
            NAME<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            CLASS<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            ROLL<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
        </div>
    
    
    </form>
</body>
</html>
