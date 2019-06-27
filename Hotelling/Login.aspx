<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Hotelling.Login" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title>System Q&R / CR</title>
    <link href="CSS/StyleLogin.css" rel="stylesheet" />
    <script src="JavaScript/login.js" type="text/javascript"></script>
    <link rel="icon" type="image/png" sizes="32x32" href="Images/icon.png">
</head>
<body onload="showSlides()">

    <div id="wrapper">
        <div id="left">
            <div id="sign-in">
                <div class="logo">

                    <img src="https://image.ibb.co/hW1YHq/login-logo.png" alt="">
                </div>

                <form id="form2" runat="server">


                    <div>
                        <label>Username</label>
                        <asp:RequiredFieldValidator ID="UsrVal" runat="server" ErrorMessage="*" ForeColor="#990000" ControlToValidate="txtUser"></asp:RequiredFieldValidator>
                        <asp:TextBox type="text" ID="txtUser" runat="server" class="text-input"></asp:TextBox>
                    </div>

                    <div>
                        <label>Password</label>
                        <asp:RequiredFieldValidator ID="PswVal" runat="server" ErrorMessage="*" ForeColor="#990000" ControlToValidate="txtPassword"></asp:RequiredFieldValidator>

                        &nbsp;<asp:TextBox type="password" runat="server" class="text-input" ID="txtPassword"></asp:TextBox>

                    </div>


                    <asp:Button ID="Submit" runat="server" Text="Sign In" type="submit" class="primary-btn" OnClick="Submit_Click" />

                </form>

                <div class="links">
                    <a href="#">Forgot password?</a>
                </div>

                <footer id="main-footer">
                    <span>&copy;Copyright 2017 - Universidad Shit</span><br />
                    <span>Todos los derechos reservados</span>
                    <div>
                        <a href="a">Terms of use</a> | <a href="#">Privacy Policy</a>
                    </div>
                </footer>
            </div>

        </div>

        <div id="right">
            <div class="showcase mySlides fade" style="background: url(Images/bklog1.jpg) no-repeat center">
                <div class="text">
                    <h1 class="label">Let's create the future together.</h1>
                </div>

            </div>

            <div class="showcase mySlides fade" style="background: url(Images/bklog2.jpg) no-repeat center">
                <div class="text">
                    <h1 class="label">Let's create the future together.</h1>
                </div>
            </div>

            <div class="showcase mySlides fade" style="background: url(Images/bklog3.jpg) no-repeat center">
                <div class="text">
                    <h1 class="label">Let's create the future together.</h1>
                </div>
            </div>

        </div>
    </div>
</body>
</html>
