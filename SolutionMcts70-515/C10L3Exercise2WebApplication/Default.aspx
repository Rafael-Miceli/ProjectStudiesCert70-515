<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="C10L3Exercise2WebApplication._Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        Edit Shipper Information
    </h2>
    Enter Shipper Code:
    <br />
    <asp:TextBox ID="TextBoxShipperCode" runat="server"></asp:TextBox>
    <asp:Button ID="ButtonGet" runat="server" Text="Get Shipper" OnClick="ButtonGet_Click" />
    <hr />
    <h3>
        Edit Shipper Data</h3>
    Shiper Id:<br />
    <asp:TextBox ID="TextBoxShipperId" runat="server"></asp:TextBox>
    <br />
    Company Name:<br />
    <asp:TextBox ID="TextBoxCompany" runat="server"></asp:TextBox>
    <br />
    Phone:<br />
    <asp:TextBox ID="TextBoxPhone" runat="server"></asp:TextBox>
    <br />
    <asp:Button ID="ButtonSave" runat="server" Text="Save" OnClick="ButtonSave_Click" />
</asp:Content>
