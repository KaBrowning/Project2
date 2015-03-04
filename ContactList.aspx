<%@ Page Title="" Language="C#" MasterPageFile="~/Ballgame.master" AutoEventWireup="true" CodeFile="ContactList.aspx.cs" Inherits="CustomerList" %>

<asp:Content ID="Content3" ContentPlaceHolderID="headPlaceHolder" Runat="Server">
    <title>Contact List</title>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="formPlaceHolder" Runat="Server">
    <h3>Selected Customers</h3>
    <asp:DropDownList ID="ddlCustomers" runat="server" AutoPostBack="True" DataSourceID="sdsCustomerInfo" DataTextField="Name" DataValueField="CustomerID"></asp:DropDownList>
    <asp:SqlDataSource ID="sdsCustomerInfo" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [CustomerID], [Name], 
        [Address], [City], [State], [ZipCode], [Phone], [Email] FROM [Customer] ORDER BY [CustomerID]">      
    </asp:SqlDataSource>
    

    

</asp:Content>


