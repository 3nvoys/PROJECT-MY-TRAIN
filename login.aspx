<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Tugas5.login" %>

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
            background-color: rgba(0, 0, 0, 0.376);
            height: 577px;
        }
        .title{
            color: white
        }
        .uname{
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
            margin-top:-5%
        }
        .hakun{
            color: white;
        }
        .lglink{
            text-decoration: none;
            color: rgb(208, 225, 255)
        }
        .auto-style3{
            color: white;
            background-color: #777777;
            border-style: solid;
            border-color: white;
            border-top-color: black;
            height: 40px;
            width: 70px;
        }
        
    </style>
</head>
<body style="height: 623px">
    <form runat="server" class="auto-style1">
        <div class="container pt-5" style="height: 619px">
            <div class="row text-end">
                <h1 class="title text-center">&nbsp;</h1>
                <h1 class="title text-center" style="font-family: '04b 30';">MY TRAIN</h1>
                <p class="title text-center">&nbsp;</p>
                <h1 class="title text-center" style="font-family: '04b 30';">LOGIN</h1>
                <div class="col-4">
                    <p class="uname py-3" id="a" style="font-family: '04b 30';">Email</p>
                    <p class="uname py-3" id="b" style="font-family: '04b 30';">Password</p>
                </div>
                <div class="col-4 justify-content-center">
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" ></asp:TextBox>
                </div>
            </div>
            <div class="text-center pt-5">
                <br />
                <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" CssClass="auto-style3" />
                <br />
                <br />
                <p class="hakun" style="font-family: '04b 30';">Belum Memiliki Akun? <a href="signup.aspx" class="lglink">Signup</a></p>
                <br />
                <br />
                <asp:Label ID="lblmsg2" runat="server" ForeColor="red"></asp:Label>
            </div>
        
        </div>
    </form>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
</body>
</html>