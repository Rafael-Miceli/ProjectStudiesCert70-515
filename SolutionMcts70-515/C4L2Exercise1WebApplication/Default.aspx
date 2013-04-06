<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="C4L2Exercise1WebApplication.Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        
        <asp:Wizard ID="Wizard1" runat="server" Width="475px" Height="350px" 
            BackColor="#EFF3FB" BorderColor="#B5C7DE" BorderWidth="1px" 
            Font-Names="Verdana" Font-Size="0.8em" ActiveStepIndex="2" 
            onactivestepchanged="Wizard1_ActiveStepChanged" 
            onfinishbuttonclick="Wizard1_FinishButtonClick">
            <HeaderStyle BackColor="#284E98" BorderColor="#EFF3FB" BorderStyle="Solid" 
                BorderWidth="2px" Font-Bold="True" Font-Size="0.9em" ForeColor="White" 
                HorizontalAlign="Center" />
            <NavigationButtonStyle BackColor="White" BorderColor="#507CD1" 
                BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" 
                ForeColor="#284E98" />
            <SideBarButtonStyle BackColor="#507CD1" Font-Names="Verdana" 
                ForeColor="White" />
            <SideBarStyle BackColor="#507CD1" Font-Size="0.9em" VerticalAlign="Top" />
            <StepStyle Font-Size="0.8em" ForeColor="#333333" />
            <WizardSteps>
                <asp:WizardStep runat="server" title="Select Office">
                    <asp:ImageMap ID="ImgMapOffice" ImageUrl="~/Images/Floorplan.png" runat="server"
                        OnClick="ImgMapOffice_Click" />
                    <br />
                    Office Selected: 
                    <asp:Label ID="lblOfficeSelected" Text="" runat="server" />
                </asp:WizardStep>
                <asp:WizardStep runat="server" title="Service Date">
                    Select Service Date:
                    <br />
                    <asp:Calendar ID="calServiceDate" runat="server" />
                </asp:WizardStep>
                <asp:WizardStep runat="server" Title="Summary" >
                    <asp:Label ID="lblSummary" Text="" Height="200px" Width="500px" runat="server" />
                </asp:WizardStep>
            </WizardSteps>
        </asp:Wizard>

    </div>
    </form>
</body>
</html>
