<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cekorder.aspx.cs" Inherits="Tugas5.cekorder" %>

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
            height: max-content;
            background-color: rgba(0, 0, 0, 0.376);
            background-size:cover;
            height:610px;
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
            font-family: monospace;
            position: static;
        }
        .newStyle3 {
            position: relative;
        }
        .auto-style3 {
            text-align: center;
            font-size: 50px;
            color: white;
        }
        .auto-style4 {
            color: white;
        }
        .auto-style5 {
            text-align: center;
            color: white;
        }
        .ling{
            color: white;
            text-decoration: none;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style3" colspan="2"><a href="Maindashboard.aspx" class="ling">MY TRAIN</a></td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style2" colspan="2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style2" colspan="2" rowspan="9">
                        <center><span class="auto-style4">PESANAN YANG TELAH DIBUAT</span><br />
                            <br />
                            <br />
                            <asp:GridView ID="GridView1" runat="server" BackColor="#FEF9A7" CssClass="newStyle2" Width="1031px"></asp:GridView></center>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
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
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style5"><a href="changeorder.aspx" class="ling">Edit Pesanan</a></td>
                    <td class="auto-style5"><a href="Cancelorder.aspx" class="ling">Hapus Pesanan</a></td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
