<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="C10L2Exercise2WebApplication._Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">

    <asp:GridView ID="GridView1" runat="server" DataSourceID="ObjectDataSourceAuthors">
    </asp:GridView>
    <asp:ObjectDataSource runat="server" ID="ObjectDataSourceAuthors" TypeName="PubService.Authors"
        SelectMethod="GetAuthorTitles">
        <SelectParameters>
            <asp:QueryStringParameter Name="authorId" QueryStringField="auId" Type="String" DefaultValue="0" />
        </SelectParameters>
    </asp:ObjectDataSource>

</asp:Content>
