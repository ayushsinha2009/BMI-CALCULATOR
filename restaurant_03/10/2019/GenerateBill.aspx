<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GenerateBill.aspx.cs" Inherits="GenerateBill" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Iphygenia Solution.||Restaurant</title>
<meta charset="utf-8">
<link rel="icon" href="images/favicon.png">
<link rel="shortcut icon" href="images/favicon.png">

<script src="js/tms-0.4.1.js"></script>

    <style type="text/css">
        .auto-style2 {
            width: 251px;
            font-weight: bold;
        }
        .auto-style3 {
            width: 92px;
        }
        .auto-style4 {
            width: 332px;
        }
        .auto-style5 {
            font-weight: normal;
        }
        .auto-style6 {
            width: 332px;
            font-weight: bold;
        }
        </style>
    <script language="javascript" type="text/javascript">
        function CallPrint(strid) {
            var prtContent = document.getElementById(strid);
            var WinPrint = window.open('', '', 'letf=0,top=0,width=20,height=1,toolbar=0,scrollbars=0,status=0');
            WinPrint.document.write(prtContent.innerHTML);
            WinPrint.document.close();
            WinPrint.focus();
            WinPrint.print();
            WinPrint.close();
            prtContent.innerHTML = strOldOne;
        }
</script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <center>
        <table style="width: 100%;">
            <tr>
                <td></td>
                <td class="auto-style4"><h1>Restaurant Name</h1>
                    <h2>Address.</h2>
                    <h2>GST NO:-GSTIN1234</h2>
                    <strong>Date:-</strong><b><asp:Label ID="lbl7" runat="server"></asp:Label>
                    </b>
                    </p></td>
                <td class="auto-style3"><a href="UserDashboard.aspx"><strong>Back !!</strong></a> </td>
                <td>&nbsp;</td>
            </tr>
                        <tr>
                            <td></td>
                <td class="auto-style6">Bill No.<b>
                    <asp:Label ID="lbl1" runat="server"></asp:Label>
                    </b>
                </td>
                <td class="auto-style3">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td></td>
                <td class="auto-style6">Order No.<b>
                    <asp:Label ID="lbl2" runat="server"></asp:Label>
                    </b>
                </td>
                <td class="auto-style3">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td></td>
                <td class="auto-style6">Order Desc.<b> <asp:Label ID="lbl3" runat="server"></asp:Label></b></td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
                        <tr>
                            <td></td>
                <td class="auto-style6">Total Amount.<b> <asp:Label ID="lbl4" runat="server"></asp:Label><span class="auto-style5"><strong>/-</strong></span></b></td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td></td>
                <td class="auto-style6">Inlcuded GST (6%)<b>. 
                    <br />
                    CGST (3%)<br />
                    SGST (3%)</b></td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td></td>
                <td class="auto-style6">Bill Amount.<b><asp:Label ID="lbl6" runat="server"></asp:Label> <span class="auto-style5"><strong>/-</strong></span></b></td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="printButton" runat="server" Text="Print" OnClientClick="javascript:window.print();" style="text-align: left" /></td>
                <td class="auto-style3"></td>
            </tr>
        </table>
            </center>
    </div>
    </form>
</body>
</html>
