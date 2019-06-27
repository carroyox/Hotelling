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
   <input class="input" type="text" placeholder="&#128100;Nombre" required > 
   <input class="input" type="text" placeholder="&#128100;Apellidos" required >
   <input class="input" type="text" placeholder="&#127380;Identificacion" required >
   <input class="input" type="email" placeholder="&#9993;Correo Electronico" required >
   <input class="input" type="tel" placeholder="&#128241;Celular" required >
   <input class="input" type="tel" placeholder="&#128222;Telefono Oficina" required >
   <%--<input class="input" type="text" placeholder="&#8962;Contraseña" required >--%>
   <div class="btn-form">
    <input class="btn-submit" type="submit" value="Guardar">
    <%--<input class="btn-submit" type="button" value="Eliminar">--%>
    <input class="btn-reset" type="reset" value="Limpiar">
   </div>
  </div>
 </div>
</asp:Content>