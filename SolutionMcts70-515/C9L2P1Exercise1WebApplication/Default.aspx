<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="C9L2P1Exercise1WebApplication._Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <script language="javascript" type="text/javascript">
        function _OnKeypress() {
            var checker = new AjaxEnabled.PasswordStrengthComponent();
            var pass = document.getElementById("MainContent_TextBoxPassword").value;
            var strength = checker.returnPasswordStrength(pass);
            document.getElementById("MainContent_LabelStrength").innerText = strength;
        }
    </script>
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

    

    <div style="font-size: large; font-weight: bold">
        User Logon
    </div>
    <hr />
    <br />
    User Name:
    <br />
    <asp:TextBox ID="TextBoxUserName" runat="server" Width="200"></asp:TextBox>
    <br />
    Password:
    <br />
    <asp:TextBox ID="TextBoxPassword" runat="server" TextMode="Password" Width="200" onkeyup="_OnKeypress()"></asp:TextBox>
    <asp:Label ID="LabelStrength" runat="server" Text=""></asp:Label>
    <br />
    <input id="ButtonSubmit" type="button" value="Log On" />
</asp:Content>
