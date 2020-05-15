<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="LoginDetails.aspx.cs" Inherits="LoginDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <table style="width: 100%; text-align: center;">
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
            <td><h1><strong><center><span style="text-decoration: underline; font-size: xx-large">
                <br />
                Login Details !</span><br />
                <br />
                </center></strong></h1></td>
            <td><a href="AdminDashboard.aspx"><strong>Back</strong></a></td>
            <td>&nbsp;</td>
        </tr>

          <tr>
            <td style="height: 18px"></td>
            <td style="height: 18px"></td>
            <td style="height: 18px"></td>
        </tr>       
        
<tr>
                       
            <td style="height: 18px">
         <center>
                
                <asp:GridView ID="gvdetails" CssClass="table table-hover" runat="server" EmptyDataText="No Record!"  CellPadding="2" ForeColor="#333333" GridLines="None" AutoGenerateColumns="True" AllowPaging="True"  Height="16px" Width="569px">
                                    <EditRowStyle BackColor="#999999" />
                                    <FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" />
                                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                   
                                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                                </asp:GridView>
             </center>
            </td>
            <td style="height: 18px"></td>
            <td style="height: 18px"></td>
        </tr> 
    </table>

</asp:Content>

