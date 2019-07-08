<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="Usuarios.aspx.cs" Inherits="Hotelling.Usuarios" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="CSS/Registro.css" rel="stylesheet" />
    <link href="CSS/jquery.dataTables.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.1/css/bootstrap.css" />
    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.19/css/dataTables.bootstrap4.min.css" />
    <script src="JavaScript/jquery-3.4.1.min.js"></script>
    <script src="JavaScript/jquery.dataTables.min.js"></script>
    <script src="https://use.fontawesome.com/releases/v5.0.7/js/all.js"></script>

    <script type="text/javascript">
        $(document).ready(function () {
            $('#userList').DataTable();
        });
    </script>




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
                    <asp:TextBox ID="tbCel" type="tel" class="input" runat="server" placeholder="&#128241;Celular" required="false"></asp:TextBox>
                    <asp:TextBox ID="tbTelOfi" type="tel" class="input" runat="server" placeholder="&#128222;Telefono Oficina" required="false"></asp:TextBox>


                    <div class="btn-form">
                        <asp:Button ID="btnSave" class="btn-submit" runat="server" Text="Guardar" OnClick="btnSave_Click" />

                        <asp:Button ID="btnClear" class="btn-reset" runat="server" Text="Limpiar" />


                    </div>
                </div>
            </div>
        </div>
        <div class="right">
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
                                            <th scope="col">Cel</th>
                                            <th scope="col">E-mail</th>
                                            <th></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>1</td>
                                            <td>Diana</td>
                                            <td>Perez</td>
                                            <td>c.r.username</td>
                                            <td>username@hotmail.com</td>
                                            <td><a href="#"><i class="fas fa-edit"></i></a>| <a href="#"><i class="fas fa-user-times"></i></a></td>
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
