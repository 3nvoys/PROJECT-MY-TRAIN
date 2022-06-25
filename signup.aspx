<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="Tugas5.signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
    <title>COBA</title>
    <style>
        html{
            background: url(../aset/pxart.png);
            background-size:cover;
            height: 577px;
        }
        body{
            /*font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;*/
            background-color: rgba(0, 0, 0, 0.376);
            height: 577px;
        }
        .title{
            color: white
        }
        .uname{
            margin-top: 3%;
            color: white;
        }
        .passwd{
            color: white;
        }
        .col-4{
            color: rgb(208, 225, 255)
            
        }
        .sulink{
            text-decoration: none;
            color: rgb(208, 225, 255)
        }
        .dhakun{
            color: white
        }
        .form-control{
            margin-top: 5%;
        }
        #b{
            /*margin-top:-5%*/
        }
        .hakun{
            color: white;
        }
        .lglink{
            text-decoration: none;
            color: rgb(208, 225, 255)
        }
        .newStyle1 {
            position: static;
        }
        .newStyle2 {
            width: fit-content;
        }
        .auto-style1 {
            height: 32px;
        }
        .newStyle3 {
            position: relative;
        }
        .auto-style2 {
            color: white;
            padding-top: 5px;
            position: relative;
            left: 3px;
            top: 1px;
            width: 460px;
        }
        .auto-style4 {
            padding-top: 5px;
            height: 32px;
            width: 484px;
        }
        .auto-style5 {
            width: 484px;
        }
        .auto-style6 {
            background-color: #777777;
            border-style: solid;
            border-color: white;
            border-top-color: black;
            color: white;
            margin-left: 34;
        }
        .newStyle4 {
            position: relative;
        }
        .auto-style7 {
            color: white;
            width: 460px;
            padding-top: 9px;
        }
        .auto-style8 {
            color: white;
            position: relative;
            left: 2px;
            top: 3px;
            width: 460px;
        }
        .auto-style10 {
            display: block;
            font-size: 1rem;
            font-weight: 400;
            line-height: 1.5;
            color: #212529;
            background-clip: padding-box;
            -webkit-appearance: none;
            -moz-appearance: none;
            appearance: none;
            border-radius: .375rem;
            transition: none;
            border: 1px solid #ced4da;
            margin-top: 0%;
            background-color: #fff;
        }
        .newStyle5 {
            position: fixed;
        }
        .newStyle6 {
            position: relative;
        }
        .newStyle7 {
            position: static;
        }
    </style>
    <%--<script>
        function myFunction() {
            var x = document.getElementById("click");
            var y = document.getElementById("TextBox3");
            if (x.value == 1) {
                y.type = "false";
            } else {
                y.visible = "true";
            }
        }
    </script>--%>
</head>
<body style="height: 647px">
    <form runat="server" class="auto-style1">
        <div class="container pt-5" style="height: 643px">
            <div class="row text-end">
                <h1 class="title text-center" style="font-family:'04b 30';">MY TRAIN</h1>
                <h1 class="title text-center"></h1>
                <h1 class="title text-center" style="font-family:'04b 30';">SIGNUP</h1>
                <table class="newStyle7">
                    <tr>
                        <td class="auto-style5">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style4">
                    <p class="auto-style8" id="a" style="font-family:'04b 30';">Email</p>
                        </td>
                        <td class="auto-style1">
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style10" Width="239px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style5">
                    <p class="auto-style2" id="b" style="font-family:'04b 30';">Username</p>
                        </td>
                        <td>
                        <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style10" Width="240px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style5">
                    <p class="auto-style7" id="d" style="font-family:'04b 30';">Password</p>
                        </td>
                        <td>
                        <asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style10" Width="240px" ></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style5">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style5">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
                <div class="col-4">
                </div>
                <%--<div class="col-4 justify-content-center">
                        <%--<textbox type="text" class="form-control my-3" id="email"></textbox>
                        <textbox type="text" class="form-control my-3" id="name"></textbox>
                        <textbox type="text" class="form-control my-3" id="MyPw"></textbox>--%>
                        <%--<input class="onclick" type="checkbox" onclick="myFunction()" value="1" id="click"> Show Password--%>
                <%--</div>--%>
            </div>
            <div class="text-center pt-5">
                <asp:Button ID="btnSignup" runat="server" Text="Sign Up" OnClick="btnSignup_Click" CssClass="auto-style6" Width="132px" />
                <br />
                <br />
                <p class="hakun" style="font-family:'04b 30';">Sudah memiliki akun? <a href="login.aspx" class="lglink">Login</a></p>
                <br />
                <br />
                <strong><asp:Label ID="lblmsg2" runat="server" ForeColor="white" BackColor="White"></asp:Label></strong>
            </div>
        
        </div>
        </form>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
</body>
</html>