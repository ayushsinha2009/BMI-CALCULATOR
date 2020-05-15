<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage1.master" AutoEventWireup="true" CodeFile="Offer.aspx.cs" Inherits="Offer" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <br />
      <br />
      <br />
    <center>
<h1><strong><center><span style="text-decoration: underline; font-size: xx-large">
                <br />
                Combo Offers & Rates !</span><br />
                <br />
                </center></strong></h1>
       <br />
      <br />
    <asp:GridView ID="gvdetails" CssClass="table table-hover" runat="server" EmptyDataText="No Record!" DataKeyNames="ComboId" ShowHeader="false" AutoGenerateColumns="False" AllowPaging="True"  PageSize="50"  Height="16px" Width="569px" Font-Bold="True">
                                    <Columns>
                                        
                                        <asp:BoundField DataField="ComboName"  HeaderText="Combo Name" />
                                        
                                        <asp:ImageField DataImageUrlField="ComboImage" ControlStyle-Height="90" ControlStyle-Width="200" HeaderText="Image"></asp:ImageField>
                                         
                                        <asp:BoundField DataField="ComboDescription" HeaderText="Combo Description" />
                                        <asp:BoundField DataField="Rate" HeaderText="Rate" />
                                    </Columns>
                                </asp:GridView>
        </center>
</asp:Content>

