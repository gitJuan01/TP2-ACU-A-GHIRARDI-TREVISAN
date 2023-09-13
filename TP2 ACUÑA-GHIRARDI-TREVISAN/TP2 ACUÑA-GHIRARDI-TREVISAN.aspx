<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TP2 ACUÑA-GHIRARDI-TREVISAN.aspx.cs" Inherits="TP2_ACUÑA_GHIRARDI_TREVISAN.TP2_ACUÑA_GHIRARDI_TREVISAN" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:Label ID="Label1" runat="server" Text="Concepto:"></asp:Label>
        <br />
        <asp:TextBox ID="Concepto" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Fecha:"></asp:Label>
        <br />
        <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
        <br />
        <asp:Label ID="Label3" runat="server" Text="Medio de Pago:"></asp:Label>
        <br />
        <asp:RadioButton ID="Credito" runat="server" />
        <asp:RadioButton ID="Debito" runat="server" OnCheckedChanged="Debito_CheckedChanged" />
        <br />
        <br />
        <asp:Label ID="Label4" runat="server" Text="Monto:"></asp:Label>
        <br />
        <asp:TextBox ID="Monto" runat="server"></asp:TextBox>
        <br />
    </form>
</body>
</html>
