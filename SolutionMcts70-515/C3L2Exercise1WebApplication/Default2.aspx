<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default2.aspx.cs" Inherits="C3L2Exercise1WebApplication.Default2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="Label1" Text="text" runat="server" />
    <br />
    <asp:HyperLink ID="Hyperlink1" NavigateUrl="~/Default.aspx" Text="Default aspx" runat="server" />
    <br />
    <asp:Button ID="Button1" Text="text" runat="server" />
</asp:Content>
