<%@ Page Title="" Language="C#" MasterPageFile="~/Ballgame.master" AutoEventWireup="true" CodeFile="CustomerList.aspx.cs" Inherits="CustomerList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headPlaceHolder" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="formPlaceHolder" Runat="Server">
     <h3>Please select a customer to view their information</h3>
    <asp:DropDownList ID="ddlCustomers" runat="server" AutoPostBack="True" DataSourceID="sdsCustomerList" 
        DataTextField="Name" AppendDataBoundItems="True" DataValueField="CustomerID"></asp:DropDownList>

    <asp:SqlDataSource ID="sdsCustomerList" runat="server" ConnectionString="<%$ ConnectionStrings:CustomerConnectionString %>" 
        ProviderName="<%$ ConnectionStrings:CustomerConnectionString.ProviderName %>" 
        SelectCommand="SELECT [CustomerID], [Name], [City], [Address], [State], [ZipCode], [Phone], [Email] 
        FROM [Customer] ORDER BY [CustomerID]"></asp:SqlDataSource>
      
    <asp:SqlDataSource ID="SqlDataSourceSelectedItem" runat="server" ConnectionString="<%$ ConnectionStrings:CustomerConnectionString %>"
        ProviderName="<%$ ConnectionStrings:CustomerConnectionString.ProviderName %>"
        SelectCommand="SELECT [CustomerID], [Name], [Address], [City], [State], [ZipCode], [Phone], [Email] 
            FROM [Customer] WHERE ([CustomerID] = @CustomerID)">
         <SelectParameters>
                <asp:ControlParameter ControlID="ddlCustomers" Name="CustomerID" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
    </asp:SqlDataSource>
    
     <asp:Repeater ID="dlCustomerInfo" runat="server" DataSourceID="SqlDataSourceSelectedItem">
                <ItemTemplate>
                    <label>Customer ID: </label>
                    <asp:Label ID="lblCustomerId" runat="server" Text='<%# Bind("CustomerID") %>'></asp:Label>
                    <br />

                    <label>Name: </label>
                    <asp:Label ID="lblName" runat="server" Text='<%# Bind("Name") %>'></asp:Label>
                    <br />

                    <label>Address: </label>
                    <asp:Label ID="lblAddress" runat="server" Text='<%# Bind("Address") %>'></asp:Label>
                    <br />

                    <label>City: </label>
                    <asp:Label ID="lblCity" runat="server" Text='<%# Bind("City") %>'></asp:Label>
                    <br />

                    <label>State: </label>
                    <asp:Label ID="lblState" runat="server" Text='<%# Bind("State") %>'></asp:Label>
                    <br />

                    <label>Zipcode: </label>
                    <asp:Label ID="lblZipcode" runat="server" Text='<%# Bind("Zipcode") %>'></asp:Label>
                    <br />

                    <label>Phone: </label>
                    <asp:Label ID="lblPhone" runat="server" Text='<%# Bind("Phone") %>'></asp:Label>
                    <br />

                    <label>Email: </label>
                    <asp:Label ID="lblEmail" runat="server" Text='<%# Bind("Email") %>'></asp:Label>
                    
                </ItemTemplate>
            </asp:Repeater>
    
            <br/>
            <br/>
            <asp:Button ID="btnAddToContacts" runat="server" Text="Add to Contacts"/>
            <asp:Button ID="btnViewList" runat="server" Text="View Contact List"/>
            <br/>
            <br/>
            <asp:Label ID="lblSuccessfulAdd" runat="server" CssClass="label"></asp:Label>

</asp:Content>

