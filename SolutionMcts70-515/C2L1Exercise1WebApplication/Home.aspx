<%@ Page Title="" Language="C#" MasterPageFile="~/Professional.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="C2L1Exercise1WebApplication.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="Server">
    <div>
        <asp:Label ID="lblUserName" Text="User Name" runat="server" />
        &nbsp
        <asp:TextBox ID="txtUserName" runat="server" />
    </div>
    <br />
    <div>
        <asp:Label ID="lblColor" Text="Color Scheme" runat="server" />
        <asp:DropDownList ID="ddlColor" runat="server" AutoPostBack="true" 
            onselectedindexchanged="ddlColor_SelectedIndexChanged">
            <asp:ListItem Text="" />
            <asp:ListItem Text="Professional" />
            <asp:ListItem Text="Colorful" />
        </asp:DropDownList>
    </div>
    <br />
    <div>
        <asp:Button ID="btnOk" Text="OK" runat="server" OnClick="btnOk_Click" />
    </div>
</asp:Content>
