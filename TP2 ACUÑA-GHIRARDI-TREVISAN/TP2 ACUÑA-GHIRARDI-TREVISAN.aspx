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
        <asp:Label ID="TituloConcepto" runat="server" Text="Concepto:"></asp:Label>
        <br />
        <asp:TextBox ID="Concepto" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="TituloFecha" runat="server" Text="Fecha:"></asp:Label>
        <br />
        <asp:Calendar ID="Calendar1" runat="server" Height="123px" Width="276px"></asp:Calendar>
        <br />
        <asp:Label ID="TituloMedioDePago" runat="server" Text="Medio de Pago:"></asp:Label>
        <br />
        <asp:RadioButton ID="Credito" runat="server" text ="Credito"/>
        <asp:RadioButton ID="Debito" runat="server" text = "Debito" OnCheckedChanged="Debito_CheckedChanged" />
        <br />
        <br />
        <asp:Label ID="TituloMonto" runat="server" Text="Monto:"></asp:Label>
        <br />
        <asp:TextBox ID="Monto" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Height="39px" Text="Ingresar" Width="185px" OnClick="carga" />
        <br />
        <br />
        <br />
        <br />
        <asp:Label ID="TituloDatos" runat="server" Text="Datos:"></asp:Label>
        <br />
        <asp:Label ID="Datos" runat="server" Text="..."></asp:Label>
        <br />
    </form>
</body>
</html>
