<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cadastro.aspx.cs" Inherits="Web.Cadastro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h3>Cadastro de Clientes</h3>
            <br /><br />
            <label>Nome:</label><br />
            <asp:TextBox ID="txtNome" runat="server" MaxLength="50" Width="200px" /><br />
            <label>Data Nascimento:</label><br />
            <asp:TextBox ID="txtDtNascimento" runat="server" MaxLength="10" Width="50px" /><br/>
            <label>Email:</label><br />
            <asp:TextBox ID="TxtEmail" runat="server" MaxLength="30" Width="200px" /><br/>
            <label>Estado Cívil:</label><br />
            <asp:TextBox ID="TxtEstadoCivil" runat="server" MaxLength="10" Width="50px" />
            <br /><br />
            <asp:Button ID="btnGravar" runat="server" Text="Gravar" OnClick="btnGravar_Click" />
        </div>
    </form>
</body>
</html>
