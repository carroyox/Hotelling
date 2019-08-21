<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="SeleccionAsientos.aspx.cs" Inherits="Hotelling.SeleccionAsientos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="wrapper">
        <div class="left">
            <div class="Container">
                <div class="form-top">
                    <h2>Seats Selection</h2>
                </div>
                <asp:DropDownList ID="Oficina" class="input" placeholder="Oficina" required="true" runat="server" AppendDataBoundItems="true">
                    <asp:ListItem Text="Seleccione la Oficina" Value="" disabled Selected></asp:ListItem>
                    <asp:ListItem Value=""></asp:ListItem>
                    <asp:ListItem Value=""></asp:ListItem>
                </asp:DropDownList>
                <table>
                    <tr>
                        <td>

                            <input type="image" class="seats" alt="Submit Form" /></td>
                        <td>
                            <input type="image" class="seats" alt="Submit Form" /></td>
                        <td>
                            <input type="image" class="seats" alt="Submit Form" /></td>
                        <td>
                            <input type="image" class="seats" alt="Submit Form" /></td>
                        <td>
                            <input type="image" class="seats" alt="Submit Form" /></td>
                    </tr>
                    <tr>
                        <td>
                            <input type="image" class="seats" alt="Submit Form" /></td>
                        <td>
                            <input type="image" class="seats" alt="Submit Form" /></td>
                        <td>
                            <input type="image" class="seats" alt="Submit Form" /></td>
                        <td>
                            <input type="image" class="seats" alt="Submit Form" /></td>
                        <td>
                            <input type="image" class="seats" alt="Submit Form" /></td>
                    </tr>
                    <tr>
                        <td>
                            <input type="image" class="seats" alt="Submit Form" /></td>
                        <td>
                            <input type="image" class="seats" alt="Submit Form" /></td>
                        <td>
                            <input type="image" class="seats" alt="Submit Form" /></td>
                        <td>
                            <input type="image" class="seats" alt="Submit Form" /></td>
                        <td>
                            <input type="image" class="seats" alt="Submit Form" /></td>
                    </tr>
                    <tr>
                        <td>
                            <input type="image" class="seats" alt="Submit Form" /></td>
                        <td>
                            <input type="image" class="seats" alt="Submit Form" /></td>
                        <td>
                            <input type="image" class="seats" alt="Submit Form" /></td>
                        <td>
                            <input type="image" class="seats" alt="Submit Form" /></td>
                        <td>
                            <input type="image" class="seats" alt="Submit Form" /></td>
                    </tr>
                </table>
            </div>
        </div>
        <div class="right">
            <div class="Container">
                <div class="form-top">
                    <h2>Desk Components</h2>
                </div>
                <div class="form-reg">



                    <%--  <asp:TextBox ID="TxtbxNombre" class="input" type="text" placeholder="Nombre" required="true" runat="server"></asp:TextBox>--%>






                    <label>
                       
                        <asp:CheckBox ID="cbox1" runat="server" value="first_checkbox" Enabled="false"/>
                        Rotative</label><br>
                    <label>
                        <asp:CheckBox ID="cbox2" runat="server" value="first_checkbox" Enabled="false"/>
                        Desk Phone</label><br>
                    <label>
                        <asp:CheckBox ID="cbox3" runat="server" value="first_checkbox" Enabled="false"/>
                        Monitor</label><br>
                    <label>
                        <asp:CheckBox ID="cbox4" runat="server" value="first_checkbox" Enabled="false"/>
                        Keyboard</label><br>
                    <label>
                        <asp:CheckBox ID="cbox5" runat="server" value="first_checkbox" Enabled="false"/>
                        Mouse</label><br>




                    <div class="btn-form">
                        <%-- <asp:Button ID="Submit" runat="server" Text="Guardar" class="btn-submit" OnClick="Submit_Click" />
                <asp:Button ID="Reset" runat="server" Text="Limpiar" class="btn-reset" OnClick="Reset_Click" />--%>

                        <input class="btn-submit" type="submit" value="Save">
                        <input class="btn-reset" type="reset" value="Clear">
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
