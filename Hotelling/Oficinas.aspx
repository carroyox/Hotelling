<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="Oficinas.aspx.cs" Inherits="Hotelling.Oficinas" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="CSS/Registro.css" rel="stylesheet" />

    <script src="JS/jquery-3.4.1.min.js"></script>
    <script src="JS/jquery.dataTables.min.js"></script>


    <title>Offices</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="wrapper">
        <div class="left">
            <div class="Container">
                <div class="form-top">
                    <h2>Offices Register</h2>
                </div>
                <div class="form-reg">

                    <asp:TextBox ID="TextBox14" class="input" type="text" placeholder="&#128100;Name" required="true" runat="server"></asp:TextBox>
                    <asp:TextBox ID="TextBox15" class="input" type="text" placeholder="&#127968;Address" required="true" runat="server"></asp:TextBox>
                    <asp:TextBox ID="TextBox16" class="input" type="email" placeholder="&#9993;Email Address" required="true" runat="server"></asp:TextBox>
                    <asp:TextBox ID="TextBox17" class="input" type="tel" placeholder="&#128222;Ext" required="true" runat="server"></asp:TextBox>

                    <%--<input class="input" type="text" placeholder="&#x1F4BA;Seats Quantity" required>--%>
                    <%--<input type="checkbox" min='0' max='20' class="input" id="Seats" placeholder="Enter number of seats">--%>
                    <asp:TextBox ID="TextBox18" class="input" type="number" onkeydown="return false" min='10' max='30' placeholder="&#x1F4BA;Number of seats" required="true" runat="server"></asp:TextBox>
                    <%--<input type="number" onkeydown="return false" min='10' max='30' class="input" id="Seats" placeholder="&#x1F4BA;Number of seats">--%>
                </div>
                <div class="btn-form">
                    <asp:TextBox ID="TextBox11" class="btn-submit" type="submit" value="Save" runat="server"></asp:TextBox>
                    <asp:TextBox ID="TextBox12" class="btn-reset" type="reset" value="Clear" runat="server"></asp:TextBox>
                    <asp:TextBox ID="TextBox13" class="btn-submit" type="submit" value="Delete" runat="server"></asp:TextBox>
                </div>
            </div>
        </div>

        <div class="right">


            <div class="table-responsive card-body">
                <asp:GridView ID="DGOficinas" runat="server" class="table table-bordered table-hover table-striped" OnSelectedIndexChanged="DGOficinas_SelectedIndexChanged">
                    <HeaderStyle CssClass="thead-light"></HeaderStyle>
                    <AlternatingRowStyle CssClass="GridRow" />
                </asp:GridView>

            </div>
    </div>
</asp:Content>



