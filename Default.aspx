<%@ Page Title="" Language="C#" MasterPageFile="~/Ballgame.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headPlaceHolder" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="formPlaceHolder" Runat="Server">
     <h3>Please select a customer to view their information</h3>
    <asp:DropDownList ID="ddlCustomers" runat="server" AutoPostBack="True" DataSourceID="sdsCustomerList" 
        DataTextField="Name" AppendDataBoundItems="True" DataValueField="CustomerID"></asp:DropDownList>

    <asp:SqlDataSource ID="sdsCustomerList" runat="server" ConnectionString="<%$ ConnectionStrings:CustomerConnectionString %>" ProviderName="<%$ ConnectionStrings:CustomerConnectionString.ProviderName %>" SelectCommand="SELECT [CustomerID], [Name], [City], [Address], [State], [ZipCode], [Phone], [Email] FROM [Customer] ORDER BY [CustomerID]"></asp:SqlDataSource>

</asp:Content>

