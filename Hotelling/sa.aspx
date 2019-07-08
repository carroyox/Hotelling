<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sa.aspx.cs" Inherits="Hotelling.sa" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <link href="CSS/jquery.dataTables.min.css" rel="stylesheet" />
    <script src="JS/jquery-3.4.1.min.js"></script>
    <script src="JS/jquery.dataTables.min.js"></script>

    <script type="text/javascript">
        $(document).ready(function () {
            $('#userList').DataTable();
        });
    </script>


    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/solid.css" />
    <script src="https://use.fontawesome.com/releases/v5.0.7/js/all.js"></script>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.1/css/bootstrap.css"/>
    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.19/css/dataTables.bootstrap4.min.css"/>


    <title>Tabla de Usuarios</title>
</head>
<body>
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
                                    <td>Diana</td>
                                    <td>Perez</td>
                                    <td>c.r.username</td>
                                    <td>username@hotmail.com</td>
                                    <td>
                                        <a href="#"><i class="fas fa-edit"></i></a>| <a href="#"><i class="fas fa-user-times"></i></a>

                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row">1</th>
                                    <td>Jesus</td>
                                    <td>Pacheco</td>
                                    <td>c.r.username</td>
                                    <td>c.r.use@outlook.com</td>
                                    <td>
                                        <a href="#"><i class="fas fa-edit"></i></a>| <a href="#"><i class="fas fa-user-times"></i></a>
                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row">1</th>
                                    <td>Carlos</td>
                                    <td>Castro</td>
                                    <td>c.r.username</td>
                                    <td>c.r.username@gmail.com</td>
                                    <td>
                                        <a href="#"><i class="fas fa-edit"></i></a>| <a href="#"><i class="fas fa-user-times"></i></a>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
