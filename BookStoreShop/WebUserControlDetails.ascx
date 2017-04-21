<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WebUserControlDetails.ascx.cs" Inherits="BookStoreShop.WebUserControlDetails" %>
<asp:Label ID="lblBookID" runat="server" Text="Книга№:"></asp:Label>
<asp:ImageButton ID="ImageButton1" runat="server" Height="51px" />
<br />
<asp:Label ID="lblBookTitle" runat="server" Text="Заглавие:"></asp:Label>
<br />
<asp:Label ID="lblBookPrice" runat="server" Text="Цена:"></asp:Label>
<br />
<asp:Label ID="lblBookQuantity" runat="server" Text="Количество:"></asp:Label>
<br />
<asp:Label ID="lblAmount" runat="server" Text="Сума:"></asp:Label>
<br />
<asp:CheckBox ID="CheckBox1" runat="server" Text="Отбележи за купуване " OnCheckedChanged="CheckBox1_CheckedChanged" />

