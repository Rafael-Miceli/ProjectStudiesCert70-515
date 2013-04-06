<%@ Page Title="" Language="C#" MasterPageFile="~/Professional.master" AutoEventWireup="true" CodeFile="~/Home.aspx.cs" Inherits="C2L1Exercise1.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <div>
        <asp:Label ID="lblUserName" Text="User Name" runat="server" /> &nbsp
    <%--</div>
    <div>--%>
        <asp:TextBox ID="txtUserName" runat="server" />
    </div>
    <br />
    <div>
        <asp:Label ID="lblColor" Text="Color Scheme" runat="server" />
        <asp:DropDownList ID="ddlColor" runat="server" AutoPostBack="true">
            <asp:ListItem Text="Professional" />
            <asp:ListItem Text="Colorful" />
        </asp:DropDownList>
    </div>
    <br />
    <div>   
        <asp:Button ID="btnOk" Text="OK" runat="server" OnClick="btnOk_Click" />
    </div>
</asp:Content>

