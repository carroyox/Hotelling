<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="Usuarios.aspx.cs" Inherits="Hotelling.Usuarios" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="CSS/Principal.css" rel="stylesheet" />

    <title>Users</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="wrapper">
        <div class="left">
            <div class="Container">
                <div class="form-top">
                    <h2>Register Form</h2>
                </div>
                <div class="form-reg">
                    <asp:TextBox ID="TbName" class="input" type="text" placeholder="&#128100;Name" required="true" runat="server"></asp:TextBox>
                    <asp:TextBox ID="TbLastName" class="input" type="text" placeholder="&#128100;Last Name" required="true" runat="server"></asp:TextBox>
                    <asp:TextBox ID="TbId" class="input" type="text" placeholder="&#127380;Id" required="true" runat="server"></asp:TextBox>
                    <asp:TextBox ID="TbEmail" class="input" type="email" placeholder="&#9993;Email Address" required="true" runat="server"></asp:TextBox>
                    <asp:TextBox ID="TbCel" class="input" type="tel" placeholder="&#128241;Celular" required="true" runat="server"></asp:TextBox>
                    <asp:TextBox ID="TbExt" class="input" type="tel" placeholder="&#128222;Ext" required="true" runat="server"></asp:TextBox>
                    <asp:DropDownList ID="DDLOficina" class="input" placeholder="Oficina" required="true" runat="server" AppendDataBoundItems="true" >
                        <asp:ListItem Text="Select Office" Value="" disabled Selected></asp:ListItem>
                    </asp:DropDownList><br>

                    <h3>Rights</h3>
                    <br>
                    <label>
                        <asp:CheckBox ID="Mp" runat="server" Text="Principal Page" /></label><br>
                    <label>
                        <asp:CheckBox ID="Up" runat="server" Text="User Forms" /></label><br>
                    <label>
                        <asp:CheckBox ID="Op" runat="server" Text="Offices Form" /></label><br>
                    <label>
                        <asp:CheckBox ID="SAp" runat="server" Text="Seats Administration" /></label><br>
                    <label>
                        <asp:CheckBox ID="SSp" runat="server" Text="Seats Selection" /></label><br>
                </div>



                <div class="btn-form">
            
                    <asp:Button ID="Save" class="btn-submit" type="submit" text="Save" runat="server" OnClick="Save_Click" ></asp:Button>
                    <asp:Button ID="Clear" class="btn-reset" type="reset" text="Clear" runat="server"></asp:Button>
                    <asp:Button ID="Delete" class="btn-submit" type="submit" text="Delete" runat="server"></asp:Button>
                </div>
            </div>

        </div>



        <div class="right">

           <div class="table-responsive card-body">
                <asp:GridView ID="DGPersonas" runat="server" class="table table-bordered table-hover table-striped" >
                    <HeaderStyle CssClass="thead-light"></HeaderStyle>
                    <AlternatingRowStyle CssClass="GridRow" />
                </asp:GridView>

            </div>

        </div>

    </div>


</asp:Content>
