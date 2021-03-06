﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="WebPruebas.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Inicio</title>
    <link href="styles.css" rel="stylesheet" />
</head>
<body class=" ">
    <form id="form1" runat="server">
    <div>
        <div id="div_0">
            <asp:LinkButton ID="LinkLoginAdmin" PostBackUrl="~/loginAdmin.aspx" runat="server" ForeColor="#000066" BorderStyle="None">Registered Admin</asp:LinkButton></div>
        <h1 id="h1_titleHome" style="font-family: 'Courier New', Courier, monospace; font-size: large; font-weight: normal; font-style: normal; color: #000080;">Haz tu reserva aquí</h1>
        <br />
        <br />
        <div id="div_1" >
            <asp:Label CssClass="cssLabels" ID="lbl_doc" runat="server" Text="Documento">
                </asp:Label><asp:TextBox ID="txt_documento" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_documento" CssClass="validators" Display="Dynamic" ValidationGroup="AllValidators">*</asp:RequiredFieldValidator><br />
        </div>
        <br />
        <div id="div_2">            
            <asp:Label CssClass="cssLabels" ID="lbl_pais" runat="server" Text="País emisor"></asp:Label><asp:DropDownList ID="drp_Pais" runat="server"></asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="drp_Pais" Display="Dynamic" SetFocusOnError="True" InitialValue="Seleccionar" ValidateRequestMode="Enabled" ValidationGroup="AllValidators" ViewStateMode="Enabled" CssClass="validators">*</asp:RequiredFieldValidator>
        </div>
        <br />
        
        <div id="div_errorMessageDiv" runat="server">
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ValidationGroup="AllValidators" HeaderText="Los campos con * son obligatorios" CssClass="validators" />
        </div>
        <div id="div_3"><asp:Button ID="Submit" runat="server" Text="Hacer reserva" OnClick="Submit_Click" ValidationGroup="AllValidators" /></div>
        <br />
    </div>
    </form>
</body>
</html>
