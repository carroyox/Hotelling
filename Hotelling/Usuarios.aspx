<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="Usuarios.aspx.cs" Inherits="Hotelling.Usuarios" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="CSS/Registro.css" rel="stylesheet" />

    <%--<link href="CSS/jquery.dataTables.min.css" rel="stylesheet" />--%>
    <%--<script src="JS/jquery-3.4.1.min.js"></script>
    <script src="JS/jquery.dataTables.min.js"></script>--%>

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
            <asp:textbox id="TextBox1" class="input" type="text" placeholder="&#128100;Name" required="true" runat="server"></asp:textbox>
            <asp:textbox id="TextBox2" class="input" type="text" placeholder="&#128100;Last Name" required="true" runat="server"></asp:textbox>
            <asp:textbox id="TextBox3" class="input" type="text" placeholder="&#127380;Id" required="true" runat="server"></asp:textbox>
            <asp:textbox id="TextBox4" class="input" type="email" placeholder="&#9993;Email Address" required="true" runat="server"></asp:textbox>
            <asp:textbox id="TextBox5" class="input" type="tel" placeholder="&#128241;Cellular" required="true" runat="server"></asp:textbox>
            <asp:textbox id="TextBox6" class="input" type="tel" placeholder="&#128222;Ext" required="true" runat="server"></asp:textbox>
            <asp:textbox id="TextBox7" class="input" type="tel" placeholder="&#x1F3E2;Office" required="true" runat="server"></asp:textbox>
            
            <%--<input class="input" type="text" placeholder="&#127380;Id" required>--%>

            <%--<asp:textbox id="TextBox4" class="input" type="number" placeholder="Edad" required="true" runat="server"></asp:textbox>--%>

                <%--<button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">Assign User Profiles</button>

                <!-- Modal -->
                <div class="modal fade" id="myModal" role="dialog">
                    <div class="modal-dialog modal-sm">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                                <h4 class="modal-title">User Profiles</h4>
                            </div>
                            <div class="modal-body">
                                <label><input type="checkbox" id="cbox1" value="first_checkbox">Administrator</label><br>
                                <label><input type="checkbox" id="cbox2" value="first_checkbox">Normal User</label><br>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-default" data-dismiss="modal">Save</button>
                            </div>
                        </div>
                    </div>
                </div>--%>

            


            <div class="btn-form">
                <asp:textbox id="TextBox8" class="btn-submit" type="submit" value="Save" runat="server"></asp:textbox>
                <asp:textbox id="TextBox9" class="btn-reset" type="reset" value="Clear" runat="server"></asp:textbox>
                <asp:textbox id="TextBox10" class="btn-submit" type="submit" value="Delete" runat="server"></asp:textbox>
                <%--<input class="btn-submit" type="submit" value="Delete">--%>
            </div>
        </div>
        <%--<div class="btn-tabla">
            <input type="button" value="To all Users" onclick="window.location.href = 'TablaUsuarios.aspx'">
        </div>--%>
            </div>
           </div>


         <div class="right">

              <asp:DataGrid ID="DGPersonas" runat="server" CssClass="Grid">
                    <HeaderStyle CssClass="GridHeader"></HeaderStyle>
                    <ItemStyle CssClass="GridItem"></ItemStyle>
                    <AlternatingItemStyle CssClass="GridAltItem"></AlternatingItemStyle>
                </asp:DataGrid>
            
         </div>
    </div>


    <%--<input type="button" value="Ver Usuarios" onClick="window.location.href='TablaUsuarios.aspx'">--%>
</asp:Content>
