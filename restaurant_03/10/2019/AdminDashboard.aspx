<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="AdminDashboard.aspx.cs" Inherits="AdminDashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%;">
        <tr>
            <td><h1><strong><center><span style="text-decoration: underline; font-size: xx-large">
                <br />
                Welcome Admin !</span><br />
                <br />
                </center></strong></h1></td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td><h1><strong><center><a href="MenuIem.aspx">Add Menu Item!</a> 
                <br />
                <br />
                </center></strong></h1></td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td><h1><strong><center><a href="ComboOffer.aspx">Add Combo Offer!</a><br />
                <br />
                </center></strong></h1></td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
         <tr>
            <td><h1><strong><center><a href="Table.aspx">Add Table !</a><br />
                <br />
                </center></strong></h1></td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
                <tr>
            <td><h1><strong><center><a href="Staff.aspx">Add Staff Details !</a><br />
                <br />
                </center></strong></h1></td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>

        <tr>
            <td><h1><strong><center><a href="LoginDetails.aspx">View Login Details !</a><br />
                <br />
                </center></strong></h1></td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
         <tr>
            <td><h1><strong><center><a href="ViewCustomerOrder.aspx">View Customer Orders!</a><br />
                <br />
                </center></strong></h1></td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>

                 <tr>
            <td><h1><strong><center><a href="ViewAdminBill.aspx">View Bill Details!</a><br />
                <br />
                </center></strong></h1></td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
                <tr>
            <td><h1><strong><center><asp:Button ID="Btnlogout" runat="server" Text="Logout" OnClick="Btnlogout_Click"></asp:Button></center></strong></h1></td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

