<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="C9L1Exercise1WebApplication._Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
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

    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    
    <h2>Suppliers</h2>
    <hr />
    <div style="margin: 20px 0px 20px 40px">
        Company<br />
        <asp:UpdatePanel ID="UpdatePanel2" runat="server">    
            <contenttemplate>                   
                <asp:TextBox ID="TextBoxCompany" runat="server" Width="200"></asp:TextBox>
                <br />
                Contact Name<br />
                <asp:TextBox ID="TextBoxContact" runat="server" Width="200"></asp:TextBox>
                <br />
                City<br />
                <asp:TextBox ID="TextBoxCity" runat="server" Width="200"></asp:TextBox>
                <br />
                Phone<br />
                <asp:TextBox ID="TextBoxPhone" runat="server" Width="200"></asp:TextBox>
                <br />
                <asp:Button ID="ButtonSave" runat="server" Text="add" Style="margin-top: 15px" OnClick="ButtonSave_Click" />
            </contenttemplate>
        </asp:UpdatePanel>
    </div>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">        
        <triggers>
            <asp:AsyncPostBackTrigger ControlID="ButtonSave" EventName="Click" />
        </triggers>
        <ContentTemplate>
            <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSourceNwd" 
                AutoGenerateColumns="False" DataKeyNames="SupplierID" AllowPaging="True">
                <Columns>
                    <asp:BoundField DataField="SupplierID" HeaderText="SupplierID" 
                        InsertVisible="False" ReadOnly="True" SortExpression="SupplierID" />
                    <asp:BoundField DataField="CompanyName" HeaderText="CompanyName" 
                        SortExpression="CompanyName" />
                    <asp:BoundField DataField="ContactName" HeaderText="ContactName" 
                        SortExpression="ContactName" />
                    <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                    <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSourceNwd" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                
                SelectCommand="SELECT [SupplierID], [CompanyName], [ContactName], [City], [Phone] FROM [Suppliers] ORDER BY [CompanyName]" 
                InsertCommand="INSERT INTO Suppliers(CompanyName, ContactName, City, Phone) VALUES (@company, @contact, @city, @phone)">
                <InsertParameters>
                    <asp:ControlParameter ControlID="TextBoxCity" Name="city" PropertyName="Text" />
                    <asp:ControlParameter ControlID="TextBoxContact" Name="contact" 
                        PropertyName="Text" />
                    <asp:ControlParameter ControlID="TextBoxCompany" Name="company" 
                        PropertyName="Text" />
                    <asp:ControlParameter ControlID="TextBoxPhone" Name="phone" 
                        PropertyName="Text" />
                </InsertParameters>
            </asp:SqlDataSource>
            <asp:UpdateProgress runat="server">
                <ProgressTemplate>
                    <div style="margin-top: 20px; font-size: larger; color: Green">
                    Processing, please wait ...
                    </div>
                </progresstemplate>
            </asp:UpdateProgress>
        </ContentTemplate>
    </asp:UpdatePanel>

    <asp:UpdatePanel ID="UpdatePanel3" runat="server">
        <contenttemplate>
            <asp:label ID="lbl1" text="Advertisement" runat="server" />
            <br />
            <asp:image ID="img" imageurl="image/hprichbg16.jpg" runat="server" />
            <asp:Timer runat="server" Interval="4000" ontick="Unnamed2_Tick"></asp:Timer>
         </contenttemplate>
    </asp:UpdatePanel>
</asp:Content>

