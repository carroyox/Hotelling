<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="SeleccionAsientos.aspx.cs" Inherits="Hotelling.SeleccionAsientos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script src="JS/Seats.js"></script>
    
    <div class="wrapper">
        <div class="flex">
            <div class="with">
                <div class="form-top">
                    <h2>Seats Selection</h2>
                </div>
                <asp:DropDownList ID="Oficina" class="input" placeholder="Oficina" runat="server" AppendDataBoundItems="true" OnSelectedIndexChanged="Oficina_SelectedIndexChanged" AutoPostBack="True">
                    <asp:ListItem Text="Select Office" Value="" disabled Selected></asp:ListItem>
                </asp:DropDownList><br>


                <div class="mapper">
                    <img src="Images/office-layout.png" usemap="#image-map">

                    <map name="image-map">

                        <area title="bt1" coords="14,417,136,506" shape="rect" onclick="enabling(1)">
                        <area title="bt2" coords="137,410,11,326" shape="rect" onclick="enabling(2)">
                        <area title="bt3" coords="9,232,138,321" shape="rect" onclick="enabling(3)">
                        <area title="bt4" coords="45,15,268,194" shape="rect" onclick="enabling(4)">
                        <area title="bt5" coords="272,93,381,197" shape="rect" onclick="enabling(5)">
                        <area title="bt6" coords="175,299,223,346" shape="rect" onclick="enabling(6)">
                        <area title="bt7" coords="226,300,274,346" shape="rect" onclick="enabling(7)">
                        <area title="bt8" coords="295,301,341,346" shape="rect" onclick="enabling(8)">
                        <area title="bt9" coords="343,300,392,347" shape="rect" onclick="enabling(9)">
                        <area title="bt10" coords="175,362,223,405" shape="rect" onclick="enabling(10)">
                        <area title="bt11" coords="228,363,276,406" shape="rect" onclick="enabling(11)">
                        <area title="bt12" coords="291,362,342,407" shape="rect" onclick="enabling(12)">
                        <area title="bt13" coords="345,362,394,409" shape="rect" onclick="enabling(13)">
                        <area title="bt14" coords="444,284,631,466" shape="rect" onclick="enabling(14)">
                        <area title="bt15" coords="472,169,550,232" shape="rect" onclick="enabling(15)">
                        <area title="bt16" coords="471,95,554,167" shape="rect" onclick="enabling(16)">
                        <area title="bt17" coords="387,95,469,167" shape="rect" onclick="enabling(17)">
                        <area title="bt18" coords="386,168,467,233" shape="rect" onclick="enabling(18)">
                    </map>
                </div>

            </div>
        </div>
        <div class="right">
            <div class="Container">
                <div class="form-top">
                    <h2>Desk Components</h2>
                </div>
                <div class="form-reg">
                    <label>Asiento:<label id="asiento"></label></label>
                   <%-- <input id="asiento" type="text" runat="server" disabled/>--%>
                  <%--  <asp:Label ID="Label1" runat="server" Text=""></asp:Label>--%>
                   <%-- <label>Estado:<label id="estado"></label></label>
                    <label>Special:<label id="1"></label></label>
                    <label>Phone:<label id="2"></label></label>
                    <label>Monitor:<label id="3"></label></label>
                    <label>Rotative:<label id="4"></label></label>
                    <label>Keyboard & mouse:<label id="5"></label></label>--%>
          
                    <label>
                        
                        Fecha Inicio:
                    <input type="date" id="inicio" runat="server" min="2019-08-22" required>
                    </label>
                    <br>

                    <label>
                        Fecha Final:
                    <input type="date" id="fin" runat="server" min="2019-08-22" required>
                    </label>
                    <br>
                </div>
                <br>





                <div class="btn-form">
                    <asp:Button ID="Button1" class="btn-submit" runat="server" Text="Book!!" OnClick="Button1_Click" />


                </div>
            </div>
        </div>
    </div>


</asp:Content>
