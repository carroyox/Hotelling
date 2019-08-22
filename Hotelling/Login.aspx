<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Hotelling.Login" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title>Hoteling</title>
    <link href="CSS/StyleLogin.css" rel="stylesheet" />
    <script src="JS/login.js" type="text/javascript"></script>
    <link rel="icon" type="image/png" sizes="32x32" href="Images/icon.png">
</head>
<body onload="showSlides()">
    <form id="form" runat="server">
        <div id="wrapper">

            <div id="left">
                
                <div class="login">



                    <div class="form-login">
                        <img src="Images/Avatar.jpg" class="avatar" />
                    </div>


                    <div class="form-log">

                        <div>
                            <asp:TextBox type="text" ID="txtUser" runat="server" class="text-input" placeholder="&#128100;Usuario"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="UsrVal" runat="server" ErrorMessage="*" ForeColor="#990000" ControlToValidate="txtUser"></asp:RequiredFieldValidator>

                        </div>

                        <div>
                            <asp:TextBox type="password" runat="server" class="text-input" ID="txtPassword" placeholder="&#128275;Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="PswVal" runat="server" ErrorMessage="*" ForeColor="#990000" ControlToValidate="txtPassword"></asp:RequiredFieldValidator>

                        </div>

                        <asp:Button ID="Button1" runat="server" Text="Sign In" type="submit" class="btn-save" OnClick="Submit_Click" />



                        <div class="links">
                            <a href="#">Forgot password?</a>
                        </div>

                        <footer id="main-footer">
                            <span>&copy;Hoteling - Universidad Americana</span><br />
                            <span>Todos los derechos reservados</span>
                            <div>
                                <a href="a">Terms of use</a> | <a href="#">Privacy Policy</a>
                            </div>
                        </footer>


                    </div>

                </div>

            </div>

            <div id="right">
                <div class="showcase mySlides fade" style="background: url(Images/cubicules5.jpg) no-repeat center">
                    <div class="text">
                        <h1 class="label">Reserve your WorkStation</h1>
                    </div>

                </div>

                <div class="showcase mySlides fade" style="background: url(Images/cubicles4.jpg) no-repeat center">
                    <div class="text">
                        <h1 class="label">We have entire offices available</h1>
                    </div>
                </div>

                <div class="showcase mySlides fade" style="background: url(Images/cubicles3.jpg) no-repeat center">
                    <div class="text">
                        <h1 class="label">Let's have your meetings in our Rooms</h1>
                    </div>
                </div>

            </div>
        </div>
    </form>
</body>
</html>
