<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage1.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
        <table style="width: 100%;">
            <tr>
                <td><h1><strong><center style="font-size: xx-large">
                    <br />
                    Login Details !<br />
                    <br />
                    </center></strong></h1></td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
             <tr>
                <td><h1><strong><center><span style="font-size: x-large">Fields Marked * are mandatory !<br />
                    <br />
                    </span>
                    <br />
                    </center></strong></h1></td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td><center><b>UserName::*<asp:TextBox ID="txtusername" autocomplete="off" runat="server" Width="194px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtusername" ErrorMessage="*" ValidationGroup="l"></asp:RequiredFieldValidator>
                    </center>
                    <br />
                    
                    </b></td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td><center><b>Password::*<asp:TextBox ID="txtpwd" TextMode="Password" autocomplete="off" runat="server" Width="194px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtpwd"  ErrorMessage="*" ValidationGroup="l"></asp:RequiredFieldValidator>
                    </center>
                    <br />
                  
                    </b></td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
             <tr>
                <td><center><asp:Button ID="Btnlogin" runat="server" Text="Check Login" ValidationGroup="l" OnClick="Btnlogin_Click" /></center>
                    <asp:Label ID="lblmsg" runat="server" ></asp:Label>
                 </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </div>
</asp:Content>

