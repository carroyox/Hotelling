<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="Oficinas.aspx.cs" Inherits="Hotelling.Oficinas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="CSS/Registro.css" rel="stylesheet" />
    <title>Registro Oficinas</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

  <div class="Container">
  <div class="form-top">
  <h2>Registro Oficinas</h2>
  </div>
  <div class="form-reg">
   <input class="input" type="text" placeholder="&#128100;Nombre" required > 
   <input class="input" type="text" placeholder="&#127968;Direccion" required >
   <input class="input" type="email" placeholder="&#9993;Correo Electronico" required >
   <input class="input" type="tel" placeholder="&#128222;Telefono Oficina" required >
      
      <div class ="caja">
  <%--    <form action="cgi-bin/control.exe" method="post" enctype="text/plain" name="miform">
  Cantidad de Asientos:--%>
   <select name="" id="" >
   <option value="0">0</option>
   <option value="1">1</option>
   <option value="2">2</option>
   <option value="3">3</option>
   <option value="4">4</option>
   <option value="5">5</option>
   <option value="6">6</option>
   <option value="7">7</option>
   <option value="8">8</option>
   <option value="9">9</option>
   <option value="10">10</option>
   <option value="11">11</option>
   <option value="12">12</option>
   <option value="13">13</option>
   <option value="14">14</option>
   <option value="15">15</option>
   <option value="16">16</option>
   <option value="17">17</option>
   <option value="18">18</option>
   <option value="19">19</option>
   <option value="20">20</option>
       </select>
          <%--</form>--%>
          </div>
   <div class="btn-form">
    <input class="btn-submit" type="submit" value="Guardar">
    <%--<input class="btn-submit" type="button" value="Eliminar">--%>
    <input class="btn-reset" type="reset" value="Limpiar">
   </div>
  </div>
 </div>
</asp:Content>
