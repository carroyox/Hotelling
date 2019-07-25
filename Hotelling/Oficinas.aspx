<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="Oficinas.aspx.cs" Inherits="Hotelling.Oficinas" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="CSS/Registro.css" rel="stylesheet" />
    <title>Office</title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="wrapper">
        <div class="left">
            <div class="Container">
                <div class="form-top">
                    <h2>Registry Form</h2>
                </div>
                <div class="form-reg">

                    <asp:TextBox ID="tbName" type="text" class="input" runat="server" placeholder="&#128100;Office Name" required="true"></asp:TextBox>
                    <asp:TextBox ID="tbAdress" type="text" class="input" runat="server" placeholder="&#127968;Adress" required="true"></asp:TextBox>
                    <asp:TextBox ID="tbEmail" type="email" class="input" runat="server" placeholder="&#9993;Email" required="true"></asp:TextBox>
                    <asp:TextBox ID="tbPhone" type="tel" class="input" runat="server" placeholder="&#128222;Phone" required="true"></asp:TextBox>
                      
                    <div class="btn-form">
                        <asp:Button ID="btnSave" class="btn-submit" runat="server" Text="Guardar" OnClick="btnSave_Click"/>
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
                            </asp:Table>
                        </div>
                    </div>
                </div>

            </div>
        </div>


    </div>

    <%--<div class="Container">
        <div class="form-top">
            <h2>Registro Oficinas</h2>
        </div>
        <div class="form-reg">
            <input class="input" type="text" placeholder="&#128100;Nombre" required>
            <input class="input" type="text" placeholder="&#127968;Direccion" required>
            <input class="input" type="email" placeholder="&#9993;Correo Electronico" required>
            <input class="input" type="tel" placeholder="&#128222;Telefono Oficina" required>

            <div class="caja">
                <select name="" id="">
                    <option value="0">0</option>
                    <option value="1">1</option>
                    <option value="2">2</option>
                    <option value="3">3</option>
                    <option value="4">4</option>
                    <option value="5">5</option>
                    <option value="6">6</option>
                    <option value="7">7</option>
                    <option value="8">8</option>
                    <option value="9">9</option>
                    <option value="10">10</option>
                    <option value="11">11</option>
                    <option value="12">12</option>
                    <option value="13">13</option>
                    <option value="14">14</option>
                    <option value="15">15</option>
                    <option value="16">16</option>
                    <option value="17">17</option>
                    <option value="18">18</option>
                    <option value="19">19</option>
                    <option value="20">20</option>
                </select>
              
            </div>
            <div class="btn-form">
                <input class="btn-submit" type="submit" value="Guardar">
             
                <input class="btn-reset" type="reset" value="Limpiar">
            </div>
        </div>
    </div>--%>
</asp:Content>
