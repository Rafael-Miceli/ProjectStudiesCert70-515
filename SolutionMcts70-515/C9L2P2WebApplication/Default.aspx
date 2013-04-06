<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="C9L2P2WebApplication._Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">
    .weak
    {
        border: thin solid #FF0000;
    }
    .medium
    {
        border: thin solid #FFFF00;
    }
    .strong
    {
        border: medium solid #008000;
    }
    </style>    
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">    
   <%-- O código javascript deve ser após o ScriptManager, pois ele irá utilizar as classes de AJAX do .NET --%>
    <script type="text/javascript">
        var app = Sys.Application;
        app.add_init(appInit);
        function appInit(sender, args) {
            $create(AjaxEnabled.PassTextBox,
            { weakCssClass: 'weak', mediumCssClass: 'medium', strongCssClass: 'strong' },
            null,
            null,
            $get('MainContent_TextBoxPassword'));
        }
    </script>
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
    <asp:TextBox ID="TextBoxPassword" runat="server" TextMode="Password" Width="200"></asp:TextBox>
    <asp:Label ID="LabelStrength" runat="server" Text=""></asp:Label>
    <br />
    <input id="ButtonSubmit" type="button" value="Log On" />

</asp:Content>
