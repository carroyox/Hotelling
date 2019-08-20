<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="Asientos.aspx.cs" Inherits="Hotelling.Asientos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    <link href="CSS/Principal.css" rel="stylesheet" />

    <title>Seats</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="Union">
        <div class="form-top">
            <h2>Seats Administration</h2>
        </div>

        <div class="form-reg">

            <asp:DropDownList ID="DDLOficina" class="input" placeholder="Oficina" required="true" runat="server" AppendDataBoundItems="true" OnSelectedIndexChanged="DDLOficina_SelectedIndexChanged" AutoPostBack="True">
                <asp:ListItem Text="Select Office" Value="" disabled Selected></asp:ListItem> 
          
            </asp:DropDownList><br>
            <asp:DropDownList ID="DDLAsiento" class="input" placeholder="Asiento" required="true" runat="server" AppendDataBoundItems="true">
                <asp:ListItem Text="Select Seats" Value="" disabled Selected></asp:ListItem>
            </asp:DropDownList>


            <h3>Features</h3>

            <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">Open Seats Features</button>


            <div class="modal fade" id="myModal" role="dialog">
                <div class="modal-dialog modal-sm">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4 class="modal-title">Seats Features</h4>
                        </div>
                        <div class="modal-body">
                            <label>
                                <asp:CheckBox ID="CheckBox1" runat="server" Text="Rotative" /></label><br>
                            <label>
                                <asp:CheckBox ID="CheckBox3" runat="server" Text="Desk Phone" /></label><br>
                            <label>
                                <asp:CheckBox ID="CheckBox4" runat="server" Text="Monitor" /></label><br>
                            <label>
                                <asp:CheckBox ID="CheckBox5" runat="server" Text="Keyboard" /></label><br>
                            <label>
                                <asp:CheckBox ID="CheckBox6" runat="server" Text="Mouse" /></label><br>
                        </div>
                        <div class="modal-footer">
                            <asp:TextBox ID="TextBox1" class="btn-submit" type="submit" value="Save" runat="server"></asp:TextBox>
                        </div>
                    </div>
                </div>
            </div>
            <div class="btn-form">
                <asp:Button ID="Submit" runat="server" Text="Save Changes" class="btn-submit" />
            </div>
        </div>
    </div>

</asp:Content>
