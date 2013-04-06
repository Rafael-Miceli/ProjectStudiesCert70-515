<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="C4L1Exercise1WebApplication.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="Label1" Text="Name: " runat="server" />
        <asp:TextBox ID="txtName" runat="server" />
        &nbsp &nbsp &nbsp
        <asp:Button ID="btnAdd" Text="Add" runat="server" OnClick="btnAdd_Click" />

        <br />
        <br />

        <asp:Literal ID="Literal1" Text="Shipping Type: " runat="server" />
        <br />
        <asp:RadioButtonList ID="rblShippingType" runat="server" RepeatDirection="Horizontal">
            <asp:ListItem Text="Standard" />
            <asp:ListItem Text="Priority" />
            <asp:ListItem Text="Urgent" />
        </asp:RadioButtonList>

        <br />
        <br />

        <asp:Literal ID="litDestinations" Text="Destinations: " runat="server" />
        <br />
        <asp:CheckBoxList ID="cblDestinations" runat="server">
        </asp:CheckBoxList>

        <br />
        <br />

        <asp:Button ID="btnShip" Text="Ship" runat="server" OnClick="btnShip_Click" />

        <br />
        <br />

        <asp:Label ID="lblShippingConfirmation" Text="" runat="server" />
    </div>
    </form>
</body>
</html>
