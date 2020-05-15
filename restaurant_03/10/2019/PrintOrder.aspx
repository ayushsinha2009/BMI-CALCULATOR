<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PrintOrder.aspx.cs" Inherits="PrintOrder" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Iphygenia Solution.||Restaurant</title>
<meta charset="utf-8">
<link rel="icon" href="images/favicon.png">
<link rel="shortcut icon" href="images/favicon.png">

<script src="js/tms-0.4.1.js"></script>

    <style type="text/css">
        .auto-style1 {
            width: 278px;
        }
        .auto-style2 {
            width: 261px;
            font-weight: bold;
        }
        .auto-style3 {
            width: 92px;
        }
        .auto-style4 {
            text-align: center;
        }
        .auto-style5 {
            width: 278px;
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
        <table style="width: 100%;">
            <tr>
                <td></td>
                <td class="auto-style1"><h1>Restaurant Name</h1>
                    <p><h2>Address.</h2><strong>Date:-</strong><b><asp:Label ID="lbl6" runat="server"></asp:Label>
                    </b>
                    </p></td>
                <td class="auto-style3"><a href="CustomerOrder.aspx"><strong>Back !!</strong></a> </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td></td>
                <td class="auto-style5">Order No.<b>
                    <asp:Label ID="lbl1" runat="server"></asp:Label>
                    </b>
                </td>
                <td class="auto-style3">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td></td>
                <td class="auto-style5">Order Desc.<b> <asp:Label ID="lbl2" runat="server"></asp:Label></b></td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
                        <tr>
                            <td></td>
                <td class="auto-style5">Table No.<b> <asp:Label ID="lbl3" runat="server"></asp:Label></b></td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td></td>
                <td class="auto-style5">Staff Name<b>. <asp:Label ID="lbl4" runat="server"></asp:Label></b></td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td></td>
                <td class="auto-style5">Amount.<b> <asp:Label ID="lbl5" runat="server"></asp:Label></b></td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2"></td>
                <td class="auto-style1"><h2 class="auto-style4"><asp:Button ID="printButton" runat="server" Text="Print" OnClientClick="javascript:window.print();" /></h2>
                    <h2 class="auto-style4"><a href="GenerateBill.aspx" target="_blank">Generate Bill.</a></h2></td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
