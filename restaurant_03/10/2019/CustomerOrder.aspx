<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="CustomerOrder.aspx.cs" Inherits="CustomerOrder" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%; text-align: center;">
         <tr>
            <td><h1><strong><center><span style="text-decoration: underline; font-size: xx-large">
                <br />
                Welcome User !</span><br />
                <br />
                </center></strong></h1></td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
         <tr>
            <td><h1><strong><center><span style="text-decoration: underline; font-size: xx-large">
                <br />
                Add Customer Order !</span><br />
                <br />
                </center></strong></h1></td>
            <td><a href="UserDashboard.aspx"><strong>Back</strong></a></td>
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
            <td><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Order No.::*</b><asp:TextBox ID="txtname" Enabled="false"  runat="server" autocomplete="off" placeholder="Order No."></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtname" ErrorMessage="*" ValidationGroup="a"></asp:RequiredFieldValidator>
                <br />
                <br />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
                <tr>
            <td><b>Menu Items.::*</b><center><asp:CheckBoxList ID="chkitem" runat="server" DataTextField="Menu" DataValueField="ItemId" AutoPostBack="true" RepeatLayout="OrderedList" Width="432px"></asp:CheckBoxList></center>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtname" ErrorMessage="*" ValidationGroup="a"></asp:RequiredFieldValidator>
                <br />
                <br />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Order Description.::*</b><asp:TextBox ID="txtorderdesc" Enabled="false"   runat="server" autocomplete="off" placeholder="Order Desc." Height="79px" TextMode="MultiLine"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtorderdesc" ErrorMessage="*"  ValidationGroup="a"></asp:RequiredFieldValidator>
                <br />
                <br />
                &nbsp;<asp:Button ID="btnshow" runat="server" Text="Show Details" OnClick="btnshow_Click" />
                <br />
                <br />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>

        <tr>
            <td><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Table Name.::*</b><asp:DropDownList ID="ddntable" runat="server"></asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="ddntable" InitialValue="0" ErrorMessage="*" ValidationGroup="a"></asp:RequiredFieldValidator>
                <br />
                <br />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
                <tr>
            <td><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Staff Name.::*</b><asp:DropDownList ID="ddnstaff" runat="server"></asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="ddnstaff" InitialValue="0" ErrorMessage="*" ValidationGroup="a"></asp:RequiredFieldValidator>
                <br />
                <br />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Amount::*</b><asp:TextBox ID="txtamount" Enabled="false"   runat="server" autocomplete="off" placeholder="0.00"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtamount" ErrorMessage="*" ValidationGroup="a"></asp:RequiredFieldValidator>
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
            <td><asp:Button ID="btnorder" runat="server" Text="Add order" OnClick="btnorder_Click"  />
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
                
                <asp:GridView ID="gvdetails" CssClass="table table-hover" runat="server" EmptyDataText="No Record!" DataKeyNames="OrderId" CellPadding="2" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False" AllowPaging="True"  PageSize="25" AutoGenerateSelectButton="false"  Height="16px" Width="569px">
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
                                        <asp:BoundField DataField="OrderId" HeaderText="Sno." />
                                        <asp:BoundField DataField="OrderNo" HeaderText="Order No" />
                                        <asp:BoundField DataField="OrderDescription" HeaderText="Order Description" />
                                        <asp:BoundField DataField="StaffName" HeaderText="Staff Name" />
                                        <asp:BoundField DataField="TableName" HeaderText="Table Name" />
                                        <asp:BoundField DataField="TotalAmount" HeaderText="Amount" />
                                         <asp:BoundField DataField="Createdby" HeaderText="Created By" />
                                        <asp:BoundField DataField="Createdon" HeaderText="Created on" />
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

