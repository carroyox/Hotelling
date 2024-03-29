﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="Asientos.aspx.cs" Inherits="Hotelling.Asientos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    <link href="CSS/Principal.css" rel="stylesheet" />

    <title>Seats</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <div class="menu-bar">
        <ul>
            <li class ="active"><a href = "Principal.aspx"> Home</a></li>
            <li><a href = "Usuarios.aspx">Users</a></li>
            <li><a href= "Oficinas.aspx">Offices</a>
            </li>
            <li><a href='#'>Seats</a>
                <div class="sub-menu2">
                    <ul>
                        <li><a href="Asientos.aspx">Administration</a></li>
                        <li><a href="SeleccionAsientos.aspx">Seats Selection</a></li>
                    </ul>
                </div>
            </li>
        </ul>
        <div class="search">
            <input type="text">
             <input type = "button"  value = "LogOut"  onclick = "location='Login.aspx'"/>
        </div>
    </div>
    <div class="Union">
        <div class="form-top">
            <h2>Seats Administration</h2>
        </div>

        <div class="form-reg">

            <asp:DropDownList ID="DDLOficina" class="input" placeholder="Oficina" runat="server" AppendDataBoundItems="true" OnSelectedIndexChanged="DDLOficina_SelectedIndexChanged" AutoPostBack="True">
                <asp:ListItem Text="Select Office" Value="" disabled Selected></asp:ListItem>
            </asp:DropDownList><br>
            <asp:DropDownList ID="DDLAsiento" class="input" placeholder="Asiento" runat="server" AppendDataBoundItems="true" OnSelectedIndexChanged="DDLAsiento_SelectedIndexChanged" AutoPostBack="True">
                <asp:ListItem Text="Select Seats" Value="" disabled Selected></asp:ListItem>
            </asp:DropDownList>


            <h3>Features</h3>

            <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">Open Seats Features</button>
            <%-- <asp:Button ID="OpenFeatures" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal" runat="server" Text="Open Seats Features"  />--%>

            <div class="modal fade" id="myModal" role="dialog">
                <div class="modal-dialog modal-sm">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4 class="modal-title">Seats Features</h4>
                        </div>
                        <div class="modal-body">
                            <label>
                                <asp:CheckBox ID="ChkEspecial" runat="server" Text="Special" /></label><br>
                            <label>
                                <asp:CheckBox ID="ChkPhone" runat="server" Text="Phone" /></label><br>
                            <label>
                                <asp:CheckBox ID="ChkMonitor" runat="server" Text="Monitor" /></label><br>
                            <label>
                                <asp:CheckBox ID="ChkFijo" runat="server" Text="Rotative" /></label><br>
                            <label>
                                <asp:CheckBox ID="ChkKM" runat="server" Text="Keyboard & mouse" /></label><br>
                        </div>
                        <div class="modal-footer">
                            <asp:Button ID="Submit" class="btn-submit" runat="server" Text="Save" OnClick="Submit_Clicked" />

                        </div>
                    </div>
                </div>
            </div>
            <%--<div class="btn-form">
                <asp:Button ID="Submit" runat="server" Text="Save Changes" class="btn-submit" OnClick="Submit_Clicked" />
            </div>--%>
        </div>
    </div>

</asp:Content>
