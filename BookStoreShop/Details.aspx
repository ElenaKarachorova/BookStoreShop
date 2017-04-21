<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Details.aspx.cs" Inherits="BookStoreShop.Details" culture="auto" meta:resourcekey="PageResource1" uiculture="auto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style10 {
            margin-left: 62px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <asp:FormView ID="FormView1" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="BookID" DataSourceID="SqlDataSource1" GridLines="Vertical" Height="231px" OnPageIndexChanging="FormView1_PageIndexChanging" Width="347px" meta:resourcekey="FormView1Resource1">
        <EditItemTemplate>
            BookID:
            <asp:Label ID="BookIDLabel1" runat="server" Text='<%# Eval("BookID") %>' meta:resourcekey="BookIDLabel1Resource1" />
            <br />
            BookTitle:
            <asp:TextBox ID="BookTitleTextBox" runat="server" Text='<%# Bind("BookTitle") %>' meta:resourcekey="BookTitleTextBoxResource1" />
            <br />
            BookAuthor:
            <asp:TextBox ID="BookAuthorTextBox" runat="server" Text='<%# Bind("BookAuthor") %>' meta:resourcekey="BookAuthorTextBoxResource1" />
            <br />
            BookDescription:
            <asp:TextBox ID="BookDescriptionTextBox" runat="server" Text='<%# Bind("BookDescription") %>' meta:resourcekey="BookDescriptionTextBoxResource1" />
            <br />
            BookPrice:
            <asp:TextBox ID="BookPriceTextBox" runat="server" Text='<%# Bind("BookPrice") %>' meta:resourcekey="BookPriceTextBoxResource1" />
            <br />
            BookQty:
            <asp:TextBox ID="BookQtyTextBox" runat="server" Text='<%# Bind("BookQty") %>' meta:resourcekey="BookQtyTextBoxResource1" />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CommandName="Update" Text="Update" meta:resourcekey="UpdateButtonResource1" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" meta:resourcekey="UpdateCancelButtonResource1" />
        </EditItemTemplate>
        <EditRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
        <InsertItemTemplate>
            BookID:
            <asp:TextBox ID="BookIDTextBox" runat="server" Text='<%# Bind("BookID") %>' meta:resourcekey="BookIDTextBoxResource1" />
            <br />
            BookTitle:
            <asp:TextBox ID="BookTitleTextBox" runat="server" Text='<%# Bind("BookTitle") %>' meta:resourcekey="BookTitleTextBoxResource2" />
            <br />
            BookAuthor:
            <asp:TextBox ID="BookAuthorTextBox" runat="server" Text='<%# Bind("BookAuthor") %>' meta:resourcekey="BookAuthorTextBoxResource2" />
            <br />
            BookDescription:
            <asp:TextBox ID="BookDescriptionTextBox" runat="server" Text='<%# Bind("BookDescription") %>' meta:resourcekey="BookDescriptionTextBoxResource2" />
            <br />
            BookPrice:
            <asp:TextBox ID="BookPriceTextBox" runat="server" Text='<%# Bind("BookPrice") %>' meta:resourcekey="BookPriceTextBoxResource2" />
            <br />
            BookQty:
            <asp:TextBox ID="BookQtyTextBox" runat="server" Text='<%# Bind("BookQty") %>' meta:resourcekey="BookQtyTextBoxResource2" />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" meta:resourcekey="InsertButtonResource1" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" meta:resourcekey="InsertCancelButtonResource1" />
        </InsertItemTemplate>
        <ItemTemplate>
            Книга номер:
            <asp:Label ID="BookIDLabel" runat="server" Text='<%# Eval("BookID") %>' meta:resourcekey="BookIDLabelResource1" />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Image ID="Image1" runat="server" meta:resourcekey="Image1Resource1" />
            <br />
            Заглавие:
            <asp:Label ID="BookTitleLabel" runat="server" Text='<%# Bind("BookTitle") %>' meta:resourcekey="BookTitleLabelResource1" />
            <br />
            Автор:
            <asp:Label ID="BookAuthorLabel" runat="server" Text='<%# Bind("BookAuthor") %>' meta:resourcekey="BookAuthorLabelResource1" />
            <br />
            Описание:
            <asp:Label ID="BookDescriptionLabel" runat="server" Text='<%# Bind("BookDescription") %>' meta:resourcekey="BookDescriptionLabelResource1" />
            <br />
            Цена:
            <asp:Label ID="BookPriceLabel" runat="server" Text='<%# Bind("BookPrice") %>' meta:resourcekey="BookPriceLabelResource1" />
            <br />
            Количество:<asp:TextBox ID="TextBox1" runat="server" meta:resourcekey="TextBox1Resource1"></asp:TextBox>
            <br />
            <asp:Button ID="Button1" runat="server" CssClass="auto-style10" Text="Добавете в кошницата" Width="251px" meta:resourcekey="Button1Resource1" OnClick="Button1_Click" Height="30px" />
        </ItemTemplate>
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BooksDBSQLConnectionString %>" SelectCommand="SELECT [BookID], [BookTitle], [BookAuthor], [BookDescription], [BookPrice], [BookQty] FROM [Books] WHERE ([BookID] = @BookID)">
        <SelectParameters>
            <asp:QueryStringParameter Name="BookID" QueryStringField="BookID" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" meta:resourcekey="LinkButton1Resource1" PostBackUrl="~/Menu.aspx">Назад</asp:LinkButton>
</asp:Content>


