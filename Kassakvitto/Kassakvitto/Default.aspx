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
        <div class="main">
        <h1>Kassakvitto</h1>
    <p class="textboxStyle">
        <asp:TextBox ID="Amount" runat="server" CssClass="textbox"></asp:TextBox>
        <asp:Label ID="Label1" runat="server" Text="kr"></asp:Label>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Får inte vara tomt!" ControlToValidate="Amount" Display="Dynamic" Font-Bold="True" Font-Italic="True" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Måste innehålla ett heltal över 0" ControlToValidate="Amount" Display="Dynamic" Operator="GreaterThan" Type="Double" ValueToCompare="0" Font-Bold="True" Font-Italic="True" Font-Size="Small" ForeColor="Red"></asp:CompareValidator>
    
    </p>

    <asp:Button ID="Button" runat="server" Text="Beräkna Rabatt" CssClass="button" OnClick="Button_Click" />

    <asp:Panel ID="Panel1" runat="server" CssClass="receipt">

        <h2>EricsIT</h2>
        <p>IT och Webb Tjänster</p>
        <p>Tel: 076 80 34 840</p>
        <p>Öppetider: 24/7</p>
        <p>~~~~~~~~~~~~~~~~~~~~~~</p>
        <p class="pricename">Totalt: </p><p><asp:Label ID="labelSubtotal" runat="server" Text="" CssClass="pricestyle"></asp:Label></p>
        <p class="pricename">Rabattsats: </p><p><asp:Label ID="labelDiscountRate" runat="server" Text="" CssClass="pricestyle"></asp:Label></p>
        <p class="pricename">Rabatt: </p><p><asp:Label ID="labelMoneyOff" runat="server" Text="" CssClass="pricestyle"></asp:Label></p>
        <p class="pricename">Att betala: </p><p><asp:Label ID="labelTotal" runat="server" Text="" CssClass="pricestyle"></asp:Label></p>
        <p>~~~~~~~~~~~~~~~~~~~~~~</p>
        <p>ORG.NR: 481516 2342</p>
        <p>Tack för besöket!</p>

    </asp:Panel>
        </div>
    </div>
    </form>
</body>
</html>
