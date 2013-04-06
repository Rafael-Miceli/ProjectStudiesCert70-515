<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="C2L2Exercise1WebApplication._Default" Theme="Fabrikam" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
   <%-- <h2>
        Welcome to ASP.NET!
    </h2>
    <p>
        To learn more about ASP.NET visit <a href="http://www.asp.net" title="ASP.NET Website">www.asp.net</a>.
    </p>
    <p>
        You can also find <a href="http://go.microsoft.com/fwlink/?LinkID=152368&amp;clcid=0x409"
            title="MSDN ASP.NET Docs">documentation on ASP.NET at MSDN</a>.
    </p>
--%>
    <asp:Image ID="Image1" runat="server" SkinID="Logo" />

    <br />

    <div style="float:left"><asp:TextBox ID="TextBox1" runat="server" CssClass="textBox"></asp:TextBox></div>
    <div style="margin-left:200px">
        <asp:DropDownList ID="Dropdownlist1" runat="server" AutoPostBack="true" 
            onselectedindexchanged="Dropdownlist1_SelectedIndexChanged">
            <asp:ListItem Text="Selecione..." />
            <asp:ListItem Text="Fabrikam" />
            <asp:ListItem Text="Contoso" />
        </asp:DropDownList>
    </div>

    <br />

    <asp:Button ID="Button1" runat="server" Text="Button"  CssClass="button"/>
</asp:Content>
