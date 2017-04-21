<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="BookStoreShop.Admin" culture="auto" meta:resourcekey="PageResource1" uiculture="auto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="100px" AutoGenerateRows="False" DataKeyNames="BookID" DataSourceID="SqlDataSource2" OnPageIndexChanging="DetailsView1_PageIndexChanging" meta:resourcekey="DetailsView1Resource1">
        <Fields>
            <asp:BoundField DataField="BookID" HeaderText="BookID" ReadOnly="True" SortExpression="BookID" meta:resourcekey="BoundFieldResource1" />
            <asp:BoundField DataField="BookType" HeaderText="BookType" SortExpression="BookType" meta:resourcekey="BoundFieldResource2" />
            <asp:BoundField DataField="BookTitle" HeaderText="BookTitle" SortExpression="BookTitle" meta:resourcekey="BoundFieldResource3" />
            <asp:BoundField DataField="BookAuthor" HeaderText="BookAuthor" SortExpression="BookAuthor" meta:resourcekey="BoundFieldResource4" />
            <asp:BoundField DataField="BookDescription" HeaderText="BookDescription" SortExpression="BookDescription" meta:resourcekey="BoundFieldResource5" />
            <asp:BoundField DataField="BookPrice" HeaderText="BookPrice" SortExpression="BookPrice" meta:resourcekey="BoundFieldResource6" />
            <asp:BoundField DataField="BookQty" HeaderText="BookQty" SortExpression="BookQty" meta:resourcekey="BoundFieldResource7" />
            <asp:CheckBoxField DataField="BookSale" HeaderText="BookSale" SortExpression="BookSale" meta:resourcekey="CheckBoxFieldResource1" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" meta:resourcekey="CommandFieldResource1" />
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:BooksDBSQLConnectionString %>" DeleteCommand="DELETE FROM [Books] WHERE [BookID] = @BookID" InsertCommand="INSERT INTO [Books] ([BookID], [BookType], [BookTitle], [BookAuthor], [BookDescription], [BookPrice], [BookQty], [BookSale]) VALUES (@BookID, @BookType, @BookTitle, @BookAuthor, @BookDescription, @BookPrice, @BookQty, @BookSale)" SelectCommand="SELECT [BookID], [BookType], [BookTitle], [BookAuthor], [BookDescription], [BookPrice], [BookQty], [BookSale] FROM [Books]" UpdateCommand="UPDATE [Books] SET [BookType] = @BookType, [BookTitle] = @BookTitle, [BookAuthor] = @BookAuthor, [BookDescription] = @BookDescription, [BookPrice] = @BookPrice, [BookQty] = @BookQty, [BookSale] = @BookSale WHERE [BookID] = @BookID">
        <DeleteParameters>
            <asp:Parameter Name="BookID" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="BookID" Type="String" />
            <asp:Parameter Name="BookType" Type="String" />
            <asp:Parameter Name="BookTitle" Type="String" />
            <asp:Parameter Name="BookAuthor" Type="String" />
            <asp:Parameter Name="BookDescription" Type="String" />
            <asp:Parameter Name="BookPrice" Type="Decimal" />
            <asp:Parameter Name="BookQty" Type="Int32" />
            <asp:Parameter Name="BookSale" Type="Boolean" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="BookType" Type="String" />
            <asp:Parameter Name="BookTitle" Type="String" />
            <asp:Parameter Name="BookAuthor" Type="String" />
            <asp:Parameter Name="BookDescription" Type="String" />
            <asp:Parameter Name="BookPrice" Type="Decimal" />
            <asp:Parameter Name="BookQty" Type="Int32" />
            <asp:Parameter Name="BookSale" Type="Boolean" />
            <asp:Parameter Name="BookID" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:FileUpload ID="FileUpload1" runat="server" meta:resourcekey="FileUpload1Resource1" />
    <asp:Button ID="btnUpload" runat="server" OnClick="Button1_Click" Text="Качване на файл" meta:resourcekey="btnUploadResource1" />
    <asp:Label ID="lblMessageText" runat="server" Text="Label" meta:resourcekey="lblMessageTextResource1"></asp:Label>
</asp:Content>
