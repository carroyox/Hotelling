<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="Principal.aspx.cs" Inherits="Hotelling.Principal" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="CSS/Principal.css" rel="stylesheet" />

    <meta http-equiv="Expires" content="0">
    <meta http-equiv="Last-Modified" content="0">
    <meta http-equiv="Cache-Control" content="no-cache, mustrevalidate">
    <meta http-equiv="Pragma" content="no-cache">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="menu-bar">
        <ul>
            <li class ="active"><a href = "Principal.aspx"> Home</a></li>
            <li><a href = "Usuarios.aspx"> Users</a></li>
            <li><a href="Oficinas.aspx">Offices</a>
                <%--<div class="sub-menu1">
                    <ul>
                        <li><a href="Oficinas.aspx">Administrator</a></li>
                        <li><a href="Oficinas.aspx">Users</a></li>
                    </ul>
                </div>--%>
            </li>
            <li><a href='#'>Seats</a>
                <div class="sub-menu2">
                    <ul>
                        <li><a href="Asientos.aspx">Administration</a></li>
                        <li><a href="Asientos.aspx">Seats Selection</a></li>
                    </ul>
                </div>
            </li>
        </ul>
        <div class="search">
            <input type="text">
            <asp:Button ID="LogOut" runat="server" Text="LogOut" OnClick="LogOut_Click" />
        </div>
    </div>


    <div class="Social-Bar">
        <img src="Images/facebook.png" class="icon icon-facebook"></>
            <img src="Images/Instagram.png" class="icon icon-instagram"></>
            <img src="Images/youtube.png" class="icon icon-youtube"></>
    </div>
</asp:Content>
