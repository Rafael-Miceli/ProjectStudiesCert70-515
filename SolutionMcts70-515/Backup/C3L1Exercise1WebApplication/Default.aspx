<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="C3L1Exercise1WebApplication._Default" %>

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

    <asp:Label ID="Label1" Text="Logon as:" runat="server" />
    <asp:DropDownList ID="ddlUserType" runat="server">
        <asp:ListItem Text="Registered User" />
        <asp:ListItem Text="Guest" />
    </asp:DropDownList>
    
    <br />

    <asp:Label ID="Label2" Text="User:" runat="server" />
    <asp:TextBox ID="txtUserName" runat="server" />

    <br />

    <asp:Label ID="Label3" Text="Password:" runat="server" />
    <asp:TextBox ID="txtPassword" runat="server" />

    <br />

    <asp:Button ID="btnLogon" Text="Logon" runat="server" OnClick="btnLogon_Click" />
</asp:Content>
