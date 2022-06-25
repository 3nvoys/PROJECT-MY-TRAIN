<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cancelorder.aspx.cs" Inherits="Tugas5.Cancelorder" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        html{
            color:black;
            background: url(../aset/pxart.png);
            background-size:cover;
            font-family:'04b 30';
        }
        body{
            height: auto;
            background-color: rgba(0, 0, 0, 0.376);
            background-size:cover;
            height: 610px;
        }
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: center;
        }
        .newStyle1 {
            position: fixed;
        }
        .newStyle2 {
            position: static;
        }
        .newStyle3 {
            position: relative;
        }
        .auto-style3 {
            position: relative;
            left: 12px;
            top: 157px;
            width: 720px;
            text-align: center;
        }
        .auto-style4 {
            font-family:monospace;
            position: static;
            margin-top: 0px;
        }
        .auto-style5 {
            width: 7px;
        }
        .auto-style6 {
            width: 541px;
        }
        .newStyle4 {
            position: static;
        }
        .newStyle5 {
            position: relative;
        }
        .newStyle6 {
            position: absolute;
        }
        .newStyle7 {
            position: fixed;
        }
        .newStyle8 {
            position: absolute;
        }
        .newStyle9 {
            position: static;
        }
        .newStyle10 {
            position: relative;
        }
        .newStyle11 {
            position: static;
        }
        .auto-style7 {
            font-size: 50px;
            color: white;
        }
        .auto-style8 {
            text-align: center;
            color: white;
        }
        .auto-style9 {
            color: white;
        }
        .btn{
            color:white;
            border-color: white;
            border-top-color: black;
        }
        .ling{
            text-decoration:none;
            color: white;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style2" colspan="2"><span class="auto-style7"><a href="Maindashboard.aspx" class="ling">MY TRAIN</a></span><br />
                        <br />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style2" colspan="2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style8" colspan="2">PILIH PESANAN YANG AKAN ANDA BATALKAN</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3" colspan="2" rowspan="8">
                        <center><asp:GridView ID="GridView1" runat="server" BackColor="#FEF9A7" CssClass="auto-style4" Width="931px"></asp:GridView>
                            <br />
                            <br />
                            <span class="auto-style9">MASUKKAN ID TIKET YANG AKAN DIBATALKAN</span><br />
                            <br />
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="newStyle11"></asp:TextBox>
&nbsp;&nbsp;
                        <asp:Button ID="Button1" runat="server" Text="Hapus" BorderStyle="Solid" CssClass="btn" BackColor="#777777" OnClick="Button1_Click"/>
                        </center>
                        
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>

