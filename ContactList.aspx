<%@ Page Title="" Language="C#" MasterPageFile="~/Ballgame.master" AutoEventWireup="true" CodeFile="ContactList.aspx.cs" Inherits="ContactList" %>

<asp:Content ID="Content3" ContentPlaceHolderID="headPlaceHolder" Runat="Server">
    <title>Contact List</title>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="formPlaceHolder" Runat="Server">
    <h3>Selected Customers</h3>
    <asp:ListBox ID="lbCustomersAdded" runat="server"></asp:ListBox>
    <asp:SqlDataSource ID="sdsCustomersAdded" runat="server" ConnectionString="<%$ ConnectionStrings:CustomerConnectionString %>" ProviderName="<%$ ConnectionStrings:CustomerConnectionString.ProviderName %>" SelectCommand="SELECT [Name], [Phone], [Email] FROM [Customer] ORDER BY [Name]"></asp:SqlDataSource>
    
    
    <asp:Button ID="btnSelectMore" runat="server" Text="Select Additional Customers"/>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnRemove" runat="server" Text="Remove Customer"/>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnClear" runat="server" Text="Clear List"/>
</asp:Content>


