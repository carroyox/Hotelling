<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="Principal.aspx.cs" Inherits="Hotelling.Principal" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="CSS/HojaEstilos.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <nav>
            <ul>
                <li><a href = "#"> Contacto</a></li>
                <li><a href = "Asientos.aspx"> Asientos</a></li>
                <li><a href = "Oficinas.aspx"> Oficinas</a></li>
                <li><a href = "Usuarios.aspx"> Usuarios</a></li>
            </ul>
         <div class = "search">
             <input type ="text">
             <%--<input type = "text" placeholder ="search">--%>
             <button> Search</button>
         </div>

        </nav>
        <div class = "Social-Bar">
            <img src = "Images/facebook.png" class = "icon icon-facebook"></>
            <img src = "Images/Instagram.png" class = "icon icon-instagram"></>
            <img src = "Images/youtube.png" class = "icon icon-youtube"></>
        </div>
</asp:Content>
