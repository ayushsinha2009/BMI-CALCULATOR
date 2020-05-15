<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="Staff.aspx.cs" Inherits="Staff" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

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
                Add Staff Details !</span><br />
                <br />
                </center></strong></h1></td>
            <td><a href="AdminDashboard.aspx"><strong>Back</strong></a><asp:ToolkitScriptManager ID="ScriptManager1" EnablePageMethods="true" ScriptMode="Release" EnablePartialRendering="true" runat="server"></asp:ToolkitScriptManager></td>
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
            <td><b>&nbsp;&nbsp;&nbsp; First Name::*</b><asp:TextBox ID="txtname"  runat="server" autocomplete="off" placeholder="First Name"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtname" ErrorMessage="*" ValidationGroup="a"></asp:RequiredFieldValidator>
                <br />
                <br />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
                <tr>
            <td><b>&nbsp;&nbsp;&nbsp; Middle Name::*</b><asp:TextBox ID="txtmname"  runat="server" autocomplete="off" placeholder="Middle Name"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtmname" ErrorMessage="*" ValidationGroup="a"></asp:RequiredFieldValidator>
                <br />
                <br />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
                <tr>
            <td><b>&nbsp;&nbsp;&nbsp;&nbsp; Last Name::*</b><asp:TextBox ID="txtlname"  runat="server" autocomplete="off" placeholder="Last Name"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtlname" ErrorMessage="*" ValidationGroup="a"></asp:RequiredFieldValidator>
                <br />
                <br />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td><b>&nbsp;&nbsp;&nbsp; Photo::<asp:FileUpload ID="photo" runat="server" /></b>
                
                <br />
                <br />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
                <tr>
            <td><b>&nbsp;&nbsp;&nbsp; Address::*</b><asp:TextBox ID="txtAddress" autocomplete="off"   runat="server" TextMode="MultiLine" placeholder="Address.." Height="73px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtAddress" ErrorMessage="*" ValidationGroup="a"></asp:RequiredFieldValidator>
                <br />
                <br />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td><b>&nbsp;&nbsp;&nbsp; Contact No::*</b><asp:TextBox ID="txtcontact" MaxLength="7"   runat="server" autocomplete="off" placeholder="Contact No."></asp:TextBox>
                                            <asp:FilteredTextBoxExtender ID="txtcontact_FilteredTextBoxExtender"
                                    runat="server" Enabled="True" FilterMode="ValidChars" FilterType="Numbers" TargetControlID="txtcontact">
                                </asp:FilteredTextBoxExtender>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtcontact" ErrorMessage="*" ValidationGroup="a"></asp:RequiredFieldValidator>
                <br />
                <br />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
         <tr>
            <td><b>&nbsp;&nbsp; Mobile No::*</b><asp:TextBox ID="txtmobile"   runat="server" MaxLength="10" autocomplete="off" placeholder="Mobile No."></asp:TextBox>
                <asp:FilteredTextBoxExtender ID="txtmobile_FilteredTextBoxExtender"
                                    runat="server" Enabled="True" FilterMode="ValidChars" FilterType="Numbers" TargetControlID="txtmobile">
                                </asp:FilteredTextBoxExtender>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtmobile" ErrorMessage="*" ValidationGroup="a"></asp:RequiredFieldValidator>
                <br />
                <br />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
         <tr>
            <td><b>&nbsp;&nbsp; Qualification::*</b><asp:TextBox ID="txtquali"   runat="server" autocomplete="off" placeholder="Qualification."></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtquali" ErrorMessage="*" ValidationGroup="a"></asp:RequiredFieldValidator>
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
            <td>&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="btnadd" runat="server" Text="Add Staff" OnClick="btnadd_Click" ValidationGroup="a" /><asp:Button ID="btnupdate" runat="server" Text="UpdateStaff" OnClick="btnupdate_Click" /><asp:Button ID="btndel" runat="server" Text="Delete" OnClick="btndel_Click" /><asp:Button ID="btncancel" runat="server" Text="cancel" OnClick="btncancel_Click" />
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
                <asp:GridView ID="gvdetails" CssClass="table table-hover" runat="server" EmptyDataText="No Record!" DataKeyNames="StaffId" CellPadding="2" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False" AllowPaging="True" OnPageIndexChanging="gvdetails_PageIndexChanging" PageSize="25" AutoGenerateSelectButton="True" OnSelectedIndexChanged="gvdetails_SelectedIndexChanged" Height="16px" Width="569px">
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
                                        <asp:BoundField DataField="Firstname" HeaderText="First Name" />
                                        <asp:BoundField DataField="Middlename" HeaderText="Middle Name" />
                                        <asp:BoundField DataField="Lastname" HeaderText="Last Name" />
                                        <asp:ImageField DataImageUrlField="Photo" ControlStyle-Height="50" ControlStyle-Width="90" HeaderText="Image"></asp:ImageField>
                                        <asp:BoundField DataField="Address" HeaderText="Address" />
                                        <asp:BoundField DataField="ContactNo" HeaderText="Contact No" />
                                        <asp:BoundField DataField="MobileNo" HeaderText="Mobile No" />
                                        <asp:BoundField DataField="Qualification" HeaderText="Qualification" />
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

