<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Kassakvitto.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="~/Style/Style.css" rel="stylesheet" type="text/css" />
    <title>Kassakvitto</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>Kassakvitto</h1>
    <asp:TextBox ID="Text" runat="server" CssClass="textbox"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Får inte vara tomt! Måste inehålla ett tal över 0" ControlToValidate="Text" Display="Dynamic">*</asp:RequiredFieldValidator>
    <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Måste innehålla ett heltal över 0" ControlToValidate="Text" Display="Dynamic" Operator="GreaterThan" Type="Double" ValueToCompare="0">*</asp:CompareValidator>

        <p><asp:Label ID="Label1" runat="server" Text="kr"></asp:Label></p>
    <asp:Button ID="Button" runat="server" Text="Beräkna Rabatt" CssClass="button" OnClick="Button_Click" />
    </div>
    </form>
</body>
</html>
