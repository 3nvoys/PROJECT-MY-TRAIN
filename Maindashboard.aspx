<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Maindashboard.aspx.cs" Inherits="Tugas5.Maindashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        body{
            height: max-content;
            background-color: rgba(0, 0, 0, 0.376);
            background-size:cover;
        }
        html{
            font-family :monospace;
            color:white;
            background: url(../aset/pxart.png);
            z-index: -1;
            background-size:cover;
        }
        .auto-style1 {
            width: 100%;
            height: 504px;
        }
        .auto-style2 {
            text-align: center;
        }
        .newStyle1 {
            position: absolute;
        }
        .newStyle2:hover{
            color: #25dda978;
        }
        .newStyle2 {
            color: white;
            border-radius:5px;
            position: static;
        }
        .auto-style3 {
            color: black;
        }
        gv {
            color: black;
        }
        .auto-style4 {
            height: 50px;
            text-align: right;
        }
        .auto-style5 {
            background-color: #c4c3b3; 
            border-top-color: black;
            border-style:solid;
            text-align: left;
        }
        .auto-style6 {
            background-color: #c4c3b3;
            border-style:solid;
            border-top-color: black;
            width: 437px;
        }
        .auto-style7 {
            text-align: center;
            width: 437px;
            height: 32px;
        }
        .auto-style8 {
            width: 100%;
        }
        .auto-style9 {
            color: black;
            font-family:'04b 30';
            text-align: center;
            margin-top: 0px;
        }
        .auto-style10 {
            text-align: center;
            color: black;
            height: 32px;
        }
        .auto-style11 {
            font-size: 20px;
            font-weight: normal;
            color: #FFFFFF;
        }
        .lg{
            color: white;
            border-radius: 5px;
        }
        .auto-style12 {
            font-size: 15px;
            color: black;
        }
        .auto-style13 {
            height: 32px;
        }
        .auto-style14 {
            width: 437px;
        }
        .auto-style15 {
            font-weight: normal;
            font-size: 50px;
            color: #FFFFFF;
        }
    </style>
    
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="auto-style4">
                <br />
                <asp:Button ID="Button5" runat="server" BorderColor="Transparent" CssClass="lg" BackColor="#da1f1f" OnClick="Button5_Click" Text="LOGOUT" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </div>
            <table class="auto-style1">
                <class="auto-style4">
                <tr>
                    <td colspan="3">
                        <h1 class="auto-style9" style="font-size:20px;"><span class="auto-style15">MY TRAIN</span><table class="auto-style8">
                            <tr>
                                <td class="auto-style11">SELAMAT DATANG DI MY TRAIN</td>
                            </tr>
                            </table>
                        </h1>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10" colspan="3"></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style14" >&nbsp;</td>
                    <td rowspan="7" class="auto-style5">
                        <div class="auto-style2">
                            <br />
                            <span class="auto-style12">Jadwal Kereta Tersedia</span><span class="auto-style3"><br />
                            <br />
                            </span></div>
                        <center><asp:GridView ID="GridView1" runat="server" CssClass="gv" BackColor ="#FEF9A7" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" ForeColor="Black" Width="574px"></asp:GridView></center>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style13"></td>
                    <td class="auto-style7"></td>
                </tr>
                <tr>
                    <td colspan="2" class="auto-style5">
                        <span class="auto-style3">CARI DAN PESAN TIKET</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button1" runat="server" CssClass="newStyle2" BorderColor="Transparent" BackColor="#2bdd25" Text="Go!" OnClick="Button1_Click" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2" class="auto-style5"><span class="auto-style3">CEK PEMESANAN</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="Button2" runat="server" CssClass="newStyle2" BorderColor="Transparent" BackColor="#2bdd25" Text="Go!" OnClick="Button2_Click"/>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" class="auto-style5">
                        <span class="auto-style3">PEMBATALAN</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="Button3" runat="server" CssClass="newStyle2" BorderColor="Transparent" BackColor="#2bdd25" Text="Go!" OnClick="Button3_Click"/>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" class="auto-style5"><span class="auto-style3">UBAH JADWAL</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="Button4" CssClass="newStyle2" runat="server" BorderColor="Transparent" BackColor="#2bdd25" Text="Go!" OnClick="Button4_Click"/>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style14">&nbsp;</td>
                </tr>
            </table>
            <table class="auto-style8">
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
    <table class="auto-style8">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</body>
</html>
