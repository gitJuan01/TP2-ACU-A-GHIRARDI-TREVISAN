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
        <asp:RadioButtonList ID="RadioButtonList1" runat="server">
            <asp:ListItem Value="1">Debito</asp:ListItem>
            <asp:ListItem Value="2">Credito</asp:ListItem>
        </asp:RadioButtonList>
        <br />
        <asp:Label ID="TituloMonto" runat="server" Text="Monto:"></asp:Label>
        <br />
        <asp:TextBox ID="Monto" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Height="39px" Text="Ingresar" Width="185px" OnClick="carga" />
        <br />
        <br />
        Búsqueda por mes:<br />
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem Value="1">Enero</asp:ListItem>
            <asp:ListItem Value="2">Febrero</asp:ListItem>
            <asp:ListItem Value="3">Marzo</asp:ListItem>
            <asp:ListItem Value="4">Abril</asp:ListItem>
            <asp:ListItem Value="5">Mayo</asp:ListItem>
            <asp:ListItem Value="6">Junio</asp:ListItem>
            <asp:ListItem Value="7">Julio</asp:ListItem>
            <asp:ListItem Value="8">Agosto</asp:ListItem>
            <asp:ListItem Value="9">Septiembre</asp:ListItem>
            <asp:ListItem Value="10">Octubre</asp:ListItem>
            <asp:ListItem Value="11">Noviembre</asp:ListItem>
            <asp:ListItem Value="12">Diciembre</asp:ListItem>
        </asp:DropDownList>
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Buscar" />
        <br />
        <br />
        <asp:Label ID="TituloDatos" runat="server" Text="Datos:"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" Text="..."></asp:Label>
        <br />
    </form>
</body>
</html>