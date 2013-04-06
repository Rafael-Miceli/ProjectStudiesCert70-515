<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ScriptDebug.aspx.cs" Inherits="C8L1Exercise1WebApplication.ScriptDebug" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script language="javascript" type="text/javascript">
        function buttonClick() {
            alert('Button Clicked!');
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Button ID="Button1" Text="Button" runat="server" OnClientClick="buttonClick()" />
    </div>
    </form>
</body>
</html>
