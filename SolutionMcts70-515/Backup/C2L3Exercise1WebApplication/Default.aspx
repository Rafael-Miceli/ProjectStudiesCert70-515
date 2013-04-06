<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="C2L3Exercise1WebApplication._Default" %>

<%@ OutputCache Duration="20" VaryByParam="ctl00$MainContent$ddlChoice" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <%--<h2>
        Welcome to ASP.NET!
    </h2>
    <p>
        To learn more about ASP.NET visit <a href="http://www.asp.net" title="ASP.NET Website">www.asp.net</a>.
    </p>
    <p>
        You can also find <a href="http://go.microsoft.com/fwlink/?LinkID=152368&amp;clcid=0x409"
            title="MSDN ASP.NET Docs">documentation on ASP.NET at MSDN</a>.
    </p>--%>

    <asp:Label ID="lblChosen" runat="server" Text="Label" />
    <br />
    <asp:DropDownList ID="ddlChoice" runat="server">
        <asp:ListItem Text="One" />
        <asp:ListItem Text="Two" />
        <asp:ListItem Text="Three" />
    </asp:DropDownList>
    <br />
    <asp:Button ID="btnSubmit" Text="OK" runat="server" OnClick="btnSubmit_Click" />

</asp:Content>
