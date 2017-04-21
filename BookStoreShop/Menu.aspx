<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Menu.aspx.cs" Inherits="BookStoreShop.Menu" culture="auto" meta:resourcekey="PageResource1" uiculture="auto" %>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:Label ID="Label2" runat="server" Text="Меню и категории" meta:resourcekey="Label2Resource1"></asp:Label>
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" ShowHeader="False" meta:resourcekey="GridView1Resource1">
        <AlternatingRowStyle BackColor="#DCDCDC" />
        <Columns>
            <asp:TemplateField meta:resourcekey="TemplateFieldResource1">
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" Text='<%# Eval("BookType") %>' OnClick="LinkButton1_Click" meta:resourcekey="LinkButton1Resource1"></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#0000A9" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#000065" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:BooksDBSQLConnectionString %>" SelectCommand="Select distinct booktype from books"></asp:SqlDataSource>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="lblSearch" runat="server" Text="Търсене:" meta:resourcekey="lblSearchResource1"></asp:Label>
&nbsp;<asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style10" Height="21px" Width="176px" meta:resourcekey="TextBox1Resource1"></asp:TextBox>
    <asp:Button ID="BtnSearch" runat="server" OnClick="Button1_Click" OnLoad="BtnSearch_Load" Text="Търси" style="height: 29px" meta:resourcekey="BtnSearchResource1" />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label3" runat="server" Text="Кошнища:" meta:resourcekey="Label3Resource1"></asp:Label>
    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/BookPictures/kosh.jpg" PostBackUrl="~/Basket.aspx" meta:resourcekey="ImageButton1Resource1" />
    <br />
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="BookID" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" meta:resourcekey="GridView2Resource1">
    <Columns>
        <asp:BoundField DataField="BookID" HeaderText="BookID" ReadOnly="True" SortExpression="BookID" meta:resourcekey="BoundFieldResource1" />
        <asp:BoundField DataField="BookType" HeaderText="BookType" SortExpression="BookType" meta:resourcekey="BoundFieldResource2" />
        <asp:BoundField DataField="BookTitle" HeaderText="BookTitle" SortExpression="BookTitle" meta:resourcekey="BoundFieldResource3" />
        <asp:BoundField DataField="BookAuthor" HeaderText="BookAuthor" SortExpression="BookAuthor" meta:resourcekey="BoundFieldResource4" />
        <asp:BoundField DataField="BookPrice" HeaderText="BookPrice" SortExpression="BookPrice" meta:resourcekey="BoundFieldResource5" />
        <asp:CommandField SelectText="Виж детайли за книгата" ShowSelectButton="True" meta:resourcekey="CommandFieldResource1" />
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BooksDBSQLConnectionString %>" SelectCommand="SELECT [BookID], [BookType], [BookTitle], [BookAuthor], [BookPrice] FROM [Books] WHERE ([BookType] = @BookType)">
    <SelectParameters>
        <asp:QueryStringParameter DefaultValue="Web" Name="BookType" QueryStringField="Category" Type="String" />
    </SelectParameters>
</asp:SqlDataSource>
</asp:Content>
<asp:Content ID="Content5" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style10 {
            margin-left: 8px;
        }
        </style>
</asp:Content>

