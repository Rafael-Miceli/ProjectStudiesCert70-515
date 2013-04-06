<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="C9L2P3WebApplication._Default" %>

<%@ Register TagPrefix="ajaxEnabled" Namespace="C9L2P3AjaxEnabled" Assembly="C9L2P3AjaxEnabled" %>

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
    <asp:ScriptManager runat="server" id="ScriptManager1">
    </asp:ScriptManager>

    <ajaxEnabled:PassTextBox ID="textbox1" runat="server" width="200" TextMode="Password"
        WeakCssClass="weak" MediumCssClass="medium" StrongCssClass="strong">
    </ajaxEnabled:PassTextBox>
</asp:Content>
