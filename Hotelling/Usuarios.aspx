<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="Usuarios.aspx.cs" Inherits="Hotelling.Usuarios" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="CSS/Registro.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="wrapper">
        <div class="left">
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
                    <asp:TextBox ID="tbTelOfi" type="tel" class="input" runat="server" placeholder="&#128222;Telefono Oficina" required="true"></asp:TextBox>   <%--extencion--%>
                 
                 

                       <%-- <asp:DropDownList ID="cbOfi" runat="server" required="true"></asp:DropDownList>--%>
                    
                    

                    <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
                    
                    

                    <%--  IdOficina--%>
                    <%--  IdPerfil--%>
                    <div class="btn-form">
                        <asp:Button ID="btnSave" class="btn-submit" runat="server" Text="Guardar" OnClick="btnSave_Click" />

                        <asp:Button ID="btnClear" class="btn-reset" runat="server" Text="Limpiar" />


                    </div>
                </div>
            </div>
        </div>
        <div class="right">

            <div class="tab-pane" id="list" role="tabpanel" aria-labelledby="list-tab">
                <div class="card">

                    <div class="card-header">
                        <h4>Active Users 
                            <asp:Label class="lbSearch" runat="server" Text="Search">
                                <asp:TextBox ID="tbSearch" runat="server" class="tbSearch"></asp:TextBox>
                            </asp:Label></h4>

                    </div>
                    <div class="card-body">
                        <div class="table-responsive">

                            <asp:Table ID="userList" runat="server" class="table table-bordered table-hover table-striped">
                                <asp:TableHeaderRow TableSection="TableHeader" class="thead-light" runat="server">
                                    <asp:TableHeaderCell ID="TableHeaderCell1" runat="server">ID</asp:TableHeaderCell>
                                    <asp:TableHeaderCell ID="TableHeaderCell2" runat="server">Name</asp:TableHeaderCell>
                                    <asp:TableHeaderCell ID="TableHeaderCell3" runat="server">Last Name</asp:TableHeaderCell>
                                    <asp:TableHeaderCell ID="TableHeaderCell4" runat="server">Cel</asp:TableHeaderCell>
                                    <asp:TableHeaderCell ID="TableHeaderCell5" runat="server">E-mail</asp:TableHeaderCell>
                                </asp:TableHeaderRow>

                                <asp:TableRow runat="server">
                                    <asp:TableCell ID="TableCell1" runat="server">11795312</asp:TableCell>
                                    <asp:TableCell ID="TableCell2" runat="server">Diana</asp:TableCell>
                                    <asp:TableCell ID="TableCell3" runat="server">Perez</asp:TableCell>
                                    <asp:TableCell ID="TableCell4" runat="server">c.r.username</asp:TableCell>
                                    <asp:TableCell ID="TableCell5" runat="server">username@hotmail.com</asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow runat="server">
                                    <asp:TableCell ID="TableCell6" runat="server">11795312</asp:TableCell>
                                    <asp:TableCell ID="TableCell7" runat="server">Diana</asp:TableCell>
                                    <asp:TableCell ID="TableCell8" runat="server">Perez</asp:TableCell>
                                    <asp:TableCell ID="TableCell9" runat="server">c.r.username</asp:TableCell>
                                    <asp:TableCell ID="TableCell10" runat="server">username@hotmail.com</asp:TableCell>
                                </asp:TableRow>


                            </asp:Table>
                        </div>
                    </div>
                </div>

            </div>
        </div>


    </div>
</asp:Content>
