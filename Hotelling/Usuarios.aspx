<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="Usuarios.aspx.cs" Inherits="Hotelling.Usuarios" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="CSS/Registro.css" rel="stylesheet" />
    <title>Formulario Registro</title>
    <script src="https://use.fontawesome.com/releases/v5.0.7/js/all.js"></script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div id="wrapper">
        <div id="left">
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
                    <asp:TextBox ID="tbTelOfi" type="tel" class="input" runat="server" placeholder="&#128222;Telefono Oficina" required="true"></asp:TextBox>


                    <div class="btn-form">
                        <asp:Button ID="btnSave" class="btn-submit" runat="server" Text="Guardar" OnClick="btnSave_Click" />

                        <asp:Button ID="btnClear" class="btn-reset" runat="server" Text="Limpiar" />


                    </div>
                </div>
            </div>
        </div>
        <div id="right">

            <div class="tab-content" id="myTabContent">
                <div class="tab-pane fade show active" id="list" role="tabpanel" aria-labelledby="list-tab">
                    <div class="card">
                        <div class="card-header">
                            <h4>Active Users</h4>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table id="userList" class="table table-bordered table-hover table-striped">

                                    <thead class="thead-light">
                                        <tr>
                                            <th scope="col">#</th>
                                            <th scope="col">Name</th>
                                            <th scope="col">Last Name</th>
                                            <th scope="col">Cellular</th>
                                            <th scope="col">E-mail</th>
                                            <th></th>
                                        </tr>
                                    </thead>
                                    <tbody>

                                        <tr>
                                            <th scope="row">1</th>
                                            <td>Jesus</td>
                                            <td>Pacheco</td>
                                            <td>c.r.username</td>
                                            <td>c.r.use@outlook.com</td>
                                            <td>
                                                <a href="#"><i class="fas fa-edit"></i></a> | <a href="#"><i class="fas fa-user-times"></i></a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th scope="row">1</th>
                                            <td>Carlos</td>
                                            <td>Castro</td>
                                            <td>c.r.username</td>
                                            <td>c.r.username@gmail.com</td>
                                            <td>
                                               <a href="#"><i class="fas fa-edit"></i></a> | <a href="#"><i class="fas fa-user-times"></i></a>
                                            </td>
                                        </tr>

                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>


</asp:Content>
