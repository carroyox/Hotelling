<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="Oficinas.aspx.cs" Inherits="Hotelling.Oficinas" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="CSS/Principal.css" rel="stylesheet" />


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

                    <asp:TextBox ID="TbName" class="input" type="text" placeholder="&#128100;Name" required="true" runat="server"></asp:TextBox>
                    <asp:TextBox ID="TbAddress" class="input" type="text" placeholder="&#127968;Address" required="true" runat="server"></asp:TextBox>
                    <asp:TextBox ID="TbEmail" class="input" type="email" placeholder="&#9993;Email Address" required="true" runat="server"></asp:TextBox>
                    <asp:TextBox ID="TbExt" class="input" type="tel" placeholder="&#128222;Ext" required="true" runat="server"></asp:TextBox>
                    <asp:TextBox ID="Seats" class="input" type="number" onkeydown="return false" min='10' max='18' placeholder="&#x1F4BA;Number of seats" required="true" runat="server"></asp:TextBox>
                </div>
                <div class="btn-form">
                    <asp:Button ID="BtnSave" class="btn-submit" runat="server" Text="Save" OnClick="BtnSave_Click" />
                    <asp:Button ID="BtnDelete" class="btn-submit" runat="server" Text="Delete" />

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
    </div>
</asp:Content>



