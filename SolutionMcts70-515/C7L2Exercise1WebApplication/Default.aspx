<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="C7L2Exercise1WebApplication._Default" %>

<%@ Register Assembly="C7L2Exercise1ServerControl" Namespace="C7L2Exercise1ServerControl"
    TagPrefix="cc1" %>

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
    
    <cc1:StateListControl ID="StateListControl1" runat="server">
    </cc1:StateListControl>
    <br />
    <asp:Button ID="btnSubmit" Text="Submit" runat="server" 
        onclick="btnSubmit_Click" />
    <br />
    <asp:Label ID="lblSelected" Text="" runat="server" />
</asp:Content>
