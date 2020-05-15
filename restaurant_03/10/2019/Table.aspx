﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="Table.aspx.cs" Inherits="Table" %>

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
            <td><h1><strong><center><span style="text-decoration: underline; font-size: xx-large">
                <br />
                Add Table !</span><br />
                <br />
                </center></strong></h1></td>
            <td><a href="AdminDashboard.aspx"><strong>Back</strong></a></td>
            <td>&nbsp;</td>
        </tr>
          <tr>
            <td><h1><strong><center><span style="text-decoration: underline; font-size: xx-large">
                <br />
                Fields Marked * Are Mandatory !<br />
                <br />
                </span><br />
                <br />
                </center></strong></h1></td>
            <td></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td><b>Table Name::*</b><asp:TextBox ID="txtname"  runat="server" autocomplete="off" placeholder="Table Name"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtname" ErrorMessage="*" ValidationGroup="a"></asp:RequiredFieldValidator>
                <br />
                <br />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
       
          <tr>
            <td style="height: 18px"></td>
            <td style="height: 18px"></td>
            <td style="height: 18px"></td>
        </tr>       
        <tr>
            <td><asp:Button ID="btnadd" runat="server" Text="Add Table" OnClick="btnadd_Click" ValidationGroup="a" /><asp:Button ID="btnupdate" runat="server" Text="Update Table" OnClick="btnupdate_Click" /><asp:Button ID="btndel" runat="server" Text="Delete" OnClick="btndel_Click" /><asp:Button ID="btncancel" runat="server" Text="cancel" OnClick="btncancel_Click" />
                <asp:Label ID="lblmsg" runat="server" ></asp:Label>
                <asp:Label ID="lblid" Visible="false" runat="server"></asp:Label>
            </td>
            <td>&nbsp;</td>
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
                <asp:GridView ID="gvdetails" CssClass="table table-hover" runat="server" EmptyDataText="No Record!" DataKeyNames="TableId" CellPadding="2" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False" AllowPaging="True" OnPageIndexChanging="gvdetails_PageIndexChanging" PageSize="25" AutoGenerateSelectButton="True" OnSelectedIndexChanged="gvdetails_SelectedIndexChanged" Height="16px" Width="569px">
                                    <EditRowStyle BackColor="#999999" />
                                    <FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" />
                                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                    <Columns>
                                        <asp:TemplateField HeaderText="S.No." ItemStyle-Width="100">
                                            <ItemTemplate>
                                                <asp:Label ID="lblRowNumber" Text='<%# Container.DataItemIndex + 1 %>' runat="server" />
                                            </ItemTemplate>

<ItemStyle Width="100px"></ItemStyle>
                                        </asp:TemplateField>
                                        <asp:BoundField DataField="TableName" HeaderText="Table Name" />
                                        <asp:BoundField DataField="Createdby" HeaderText="Created By" />
                                        <asp:BoundField DataField="Createdon" HeaderText="Created on" />
                                        <asp:BoundField DataField="Updatedon" HeaderText="Updated on" />
                                    </Columns>
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

