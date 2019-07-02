<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="Usuarios.aspx.cs" Inherits="Hotelling.Usuarios" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="CSS/Registro.css" rel="stylesheet" />
    <title>Formulario Registro</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="Container">
        <div class="form-top">
            <h2>Formulario de Registro</h2>
        </div>
        <div class="form-reg">
            <asp:TextBox ID="tbName" type="text" class="input" runat="server" placeholder="&#128100;Nombre" required="true"></asp:TextBox>
            <asp:TextBox ID="tbLastName" type="text" class="input" runat="server" placeholder="&#128100;Apellidos" required="true"></asp:TextBox>
            <asp:TextBox ID="tbID" type="text" class="input" runat="server" placeholder="&#127380;Identificacion" required="true"></asp:TextBox>
            <asp:TextBox ID="tbEmail" type="email" class="input" runat="server" placeholder="&#9993;Correo Electronico" required="true"></asp:TextBox>
            <asp:TextBox ID="tbCel" type="tel" class="input" runat="server" placeholder="&#128241;Celular" required="true"></asp:TextBox>
            <asp:TextBox ID="tbTelOfi" type="tel" class="input" runat="server" placeholder="&#128222;Telefono Oficina" required="true"></asp:TextBox>


            <div class="btn-form">
                <asp:Button ID="btnSave" class="btn-submit" runat="server" Text="Guardar" OnClick="btnSave_Click" />

                <asp:Button ID="btnClear" class="btn-reset" runat="server" Text="Limpiar" />
           
     
            </div>
        </div>
    </div>
</asp:Content>
