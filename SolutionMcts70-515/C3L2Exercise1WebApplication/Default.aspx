<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="C3L2Exercise1WebApplication._Default" %>

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
    <asp:Label ID="Label1" Text="text" runat="server" />
    <br />
    <asp:HyperLink ID="Hyperlink1" NavigateUrl="~/Default2.aspx" Text="Default2 aspx" runat="server" />
    <br />
    <asp:Button ID="Button1" Text="text" runat="server" />

    <asp:HiddenField ID="HiddenField1" runat="server" />    
</asp:Content>
