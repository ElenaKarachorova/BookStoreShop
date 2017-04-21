<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Contacts.aspx.cs" Inherits="BookStoreShop.Contacts" culture="auto" meta:resourcekey="PageResource1" uiculture="auto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style10 {
            margin-left: 76px;
        }
        .auto-style12 {
            margin-left: 56px;
        }
        .auto-style13 {
            margin-left: 41px;
            margin-top: 1px;
        }
        .auto-style14 {
            margin-left: 409px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <asp:Label ID="Label2" runat="server" Text="До:" meta:resourcekey="Label2Resource1"></asp:Label>
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="MailTo" runat="server" CssClass="auto-style10" Width="243px" meta:resourcekey="MailToResource1" Height="24px"></asp:TextBox>
    <br />
    <asp:Label ID="Label3" runat="server" Text="От:" meta:resourcekey="Label3Resource1"></asp:Label>
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="MailFrom" runat="server" CssClass="auto-style10" Width="243px" meta:resourcekey="MailFromResource1" Height="28px" ></asp:TextBox>
    <br />
    <asp:Label ID="Label4" runat="server" Text="Относно:" meta:resourcekey="Label4Resource1"></asp:Label>
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="Subject" runat="server" CssClass="auto-style12" Width="243px" meta:resourcekey="SubjectResource1" Height="27px"></asp:TextBox>
    <br />
    <asp:Label ID="Body" runat="server" Text="Запитване:" meta:resourcekey="BodyResource1"></asp:Label>
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox4" runat="server" CssClass="auto-style13" Height="93px" TextMode="MultiLine" Width="243px" meta:resourcekey="TextBox4Resource1"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" CssClass="auto-style14" OnClick="Button1_Click" Text="Изпрати" meta:resourcekey="Button1Resource1" />
    <br />
    <asp:Label ID="MailMsg" runat="server" Text="MailMsg" meta:resourcekey="MailMsgResource1"></asp:Label>
</asp:Content>
