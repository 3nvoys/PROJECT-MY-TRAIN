<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="changeorder.aspx.cs" Inherits="Tugas5.changeorder" %>

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
            color : white;
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
        .auto-style3 {
            text-align: center;
            font-size: 50px;
        }
        .gv{
            color: black;
            font-family: monospace;
        }
        .bt{
            color: white;
            border-style: solid;
            border-color: white;
            border-top-color: black;
            height: 30px;
            width:70px;
        }
        .block1{
            border-style: solid;
            border-color: black;
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
                        <td rowspan="5">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td rowspan="5">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style3" colspan="2"><a href="Maindashboard.aspx" class="ling">MY TRAIN</a><br />
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2" colspan="2">Pilih Jadwal Keberangkatan yang Akan Diubah<br />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">&nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <center><asp:GridView ID="GridView1" CssClass="gv" BackColor="#FEF9A7" runat="server"></asp:GridView></center>
                        </td>
                    </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style2" colspan="2">
                        <br />
                        <br />
                        <br />
                        <br />
                        Cari Jadwal Pergantian<br />
                        <br />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style2">Kota asal&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;:
                        <asp:DropDownList ID="DropDownList1" runat="server" Width="170px">
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style2">Jam Berangkat&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :
                        <asp:DropDownList ID="DropDownList3" runat="server" Width="170px">
                        </asp:DropDownList>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style2">Kota Tujuan&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;:
                        <asp:DropDownList ID="DropDownList2" runat="server" Width="170px">
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style2">Tanggal Berangkat&nbsp;&nbsp; :
                        <asp:DropDownList ID="DropDownList4" runat="server" Width="170px">
                        </asp:DropDownList>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style2" colspan="2">
                        <br />
                        <asp:Button ID="Button1" runat="server" BackColor="#777777" CssClass="bt" Text="Cari" OnClick="Button1_Click" />
                        <br />
                        <br />
                        <br />
                        Jadwal Perubahan Yang Tersedia<br />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td colspan="2">
                        <center><asp:GridView ID="GridView2" CssClass="gv" BackColor="#FEF9A7" runat="server"></asp:GridView></center>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style2" colspan="2">
                        <br />
                        <br />
                        PILIH ID TIKET YANG DIRUBAH :
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        <br />
                        <br />
                        PILIH TIKET BARU :&nbsp; <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp; PILIH SEAT :
                        <asp:DropDownList ID="DropDownList5" runat="server">
                        </asp:DropDownList>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style2" colspan="2">
                        <br />
                        <br />
                        <br />
                        <asp:Button ID="Button2" runat="server" BackColor="#777777" CssClass="bt" OnClick="Button2_Click" Text="Button" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style2" colspan="2">
                        <asp:Label ID="Label1" runat="server" ></asp:Label>
                    </td>
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
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
