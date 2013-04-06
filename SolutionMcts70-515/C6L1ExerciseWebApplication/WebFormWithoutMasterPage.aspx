<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebFormWithoutMasterPage.aspx.cs" Inherits="C6L1ExerciseWebApplication.WebFormWithoutMasterPage" culture="auto" meta:resourcekey="PageResource1" uiculture="auto" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>
            <asp:Label ID="lblWelcome" Text="Welcome" runat="server" meta:resourcekey="LabelWelcomeResource1" /> 
        </h1>   
        <br />

        <asp:DropDownList ID="ddlListLang" runat="server" AutoPostBack="True" 
            meta:resourcekey="ddlListLangResource1" />
    </div>
    </form>
</body>
</html>
