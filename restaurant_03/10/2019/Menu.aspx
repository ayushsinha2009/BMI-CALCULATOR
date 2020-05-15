<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage1.master" AutoEventWireup="true" CodeFile="Menu.aspx.cs" Inherits="Menu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <br />
      <br />
      <br />
    <center>
<h1><strong><center><span style="text-decoration: underline; font-size: xx-large">
                <br />
                Menu List & Rates !</span><br />
                <br />
                </center></strong></h1>
       <br />
      <br />
    <asp:GridView ID="gvdetails" CssClass="table table-hover" runat="server" EmptyDataText="No Record!" DataKeyNames="ItemId" ShowHeader="false" AutoGenerateColumns="False" AllowPaging="True"  PageSize="50"  Height="16px" Width="569px" Font-Bold="True">
                                    <Columns>
                                        <asp:TemplateField HeaderText="S.No." ItemStyle-Width="100" HeaderStyle-VerticalAlign="Top">
                                            <ItemTemplate>
                                                <asp:Label ID="lblRowNumber" Text='<%# Container.DataItemIndex + 1 %>' runat="server" />
                                            </ItemTemplate>

<ItemStyle Width="100px"></ItemStyle>
                                        </asp:TemplateField>
                                        <asp:BoundField DataField="ItemName" HeaderText="Item Name" />
                                        <asp:BoundField DataField="ItemType" HeaderText="ItemType" />
                                        <asp:BoundField DataField="Rate" HeaderText="Rate" />
                                    </Columns>
                                </asp:GridView>
        </center>
</asp:Content>

