<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Basket.aspx.cs" Inherits="BookStoreShop.Basket" culture="auto" meta:resourcekey="PageResource1" uiculture="auto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label2" runat="server" Text="Във вашата кошница има:" meta:resourcekey="Label2Resource1"></asp:Label>
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" RepeatColumns="3" RepeatDirection="Horizontal" Width="599px" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" GridLines="Both" meta:resourcekey="DataList1Resource1">
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <ItemStyle BackColor="White" />
        <ItemTemplate>
            <span class="auto-style11"><strong>
            <asp:Image ID="Image1" runat="server" ImageUrl='<%# "./BookPictures/" + Eval("BookID") + ".jpg" %>' meta:resourcekey="Image1Resource1" />
            <br />
            </strong></span>BookID:
            <asp:Label ID="BookIDLabel" runat="server" Text='<%# Eval("BookID") %>' />
            <br />
            BookTitle:
            <asp:Label ID="BookTitleLabel" runat="server" Text='<%# Eval("BookTitle") %>' />
            <br />
            Expr1:
            <asp:Label ID="Expr1Label" runat="server" Text='<%# Eval("Expr1") %>' />
            <br />
            OrderID:
            <asp:Label ID="OrderIDLabel" runat="server" Text='<%# Eval("OrderID") %>' />
            <br />
            <asp:CheckBox ID="CheckBox3" runat="server" meta:resourcekey="CheckBox3Resource1" Text="Отбележете за премаване" />
            <br />
        </ItemTemplate>
        <SelectedItemStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BooksDBSQLConnectionString %>" SelectCommand="SELECT BookID, BookTitle, SUM(Price * Qty) AS Expr1, OrderID FROM ShopCart GROUP BY BookID, BookTitle, OrderID"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:BooksDBSQLConnectionString %>" SelectCommand="SELECT SUM(BookPrice * BookQty) AS Total FROM Books"></asp:SqlDataSource>
    <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource2" meta:resourcekey="FormView1Resource1">
        <EditItemTemplate>
            Total:
            <asp:TextBox ID="TotalTextBox" runat="server" Text='<%# Bind("Total") %>' meta:resourcekey="TotalTextBoxResource1" />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CommandName="Update" Text="Update" meta:resourcekey="UpdateButtonResource1" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" meta:resourcekey="UpdateCancelButtonResource1" />
        </EditItemTemplate>
        <InsertItemTemplate>
            Total:
            <asp:TextBox ID="TotalTextBox" runat="server" Text='<%# Bind("Total") %>' meta:resourcekey="TotalTextBoxResource2" />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" meta:resourcekey="InsertButtonResource1" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" meta:resourcekey="InsertCancelButtonResource1" />
        </InsertItemTemplate>
        <ItemTemplate>
            Total:
            <asp:Label ID="TotalLabel" runat="server" Text='<%# Bind("Total") %>' meta:resourcekey="TotalLabelResource2" />
            <br />

        </ItemTemplate>
    </asp:FormView>
    <asp:Button ID="Button1" runat="server" meta:resourcekey="Button1Resource1" Text="Изтриване на маркираните книги" Width="264px" OnClick="Button1_Click" />
    <br />
</asp:Content>
