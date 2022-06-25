<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="caritiket.aspx.cs" Inherits="Tugas5.caritiket" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        body{
            height: auto;
            background-color: rgba(0, 0, 0, 0.376);
            background-size:cover;
        }
        html{
            font-family: '04b 30';
            color:white;
            background: url(../aset/pxart.png);
            background-size:cover;
        }
        .auto-style1 {
            width: 840px;
        }
        .auto-style5 {
            width: 1463px;
            border-radius: 15px;
            border-top-right-radius: 15px;
            text-align: center;
        }
        .newStyle1 {
            float: right;
        }
        .gv{
            /*border-color: white;*/
            border-top-color: black;
            border-style: solid;
            color: black;
            align-content: center;
            background-color:#FEF9A7;
            /*border-radius:15px;*/
            text-align:center;
            font-family:monospace;
        }
        .newStyle2 {
            float: right;
        }
        .newStyle3 {
            float: right;
        }
        .newStyle4 {
            position: absolute;
        }
        .newStyle5 {
            position: absolute;
        }
        .newStyle6 {
            position: absolute;
        }
        .newStyle7 {
            float: right;
        }
        .newStyle8 {
            position: fixed;
        }
        .newStyle9 {
            position: static;
        }
        .newStyle10 {
            position: relative;
        }
        .auto-style8 {
            position: relative;
            left: 0px;
            top: -1px;
        }
        .newStyle11 {
            position: static;
        }
        .newStyle12 {
            position: static;
        }
        .auto-style10 {
            text-align: center;
        }
        .auto-style11 {
            font-family:'04b 30';
            position: static;
            text-align: center;
            font-weight: normal;
        }
        .auto-style12 {
            width: 875px;
        }
        .btnsrch{
            /*border-radius: 20px;*/
            border-style: solid;
            border-color:white;
            border-top-color: black;
            color: white;
        }
        .auto-style13 {
            font-family:'04b 30';
            text-decoration:none;
            color: black;
        }
        .auto-style14 {
            width: 1463px;
            border-radius: 15px;
            border-top-right-radius: 15px;
            text-align: center;
            height: 57px;
        }
        .newStyle13 {
            position: relative;
        }
        .jdl{
            text-decoration: none;
        }
        .auto-style15 {
            position: relative;
            color: black;
        }
        .auto-style16 {
            font-family: '04b 30';
            text-decoration: none;
            font-weight: normal;
        }
        .auto-style17 {
            font-family: '04b 30';
            text-decoration: none;
            color: white;
            font-weight: normal;
            font-size: 50px;
        }
        .auto-style18 {
            width: 875px;
            color: white;
        }
        .auto-style19 {
            color: white;
        }
        .btnbl{
            color: white;
            border-top-color: black;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
            <table>
                <tr>
                    <td colspan="2">
                        <center><h1 class="auto-style13">&nbsp;</h1>
                            <a href="Maindashboard.aspx" class="jdl"><h1 class="auto-style17">MY TRAIN</h1></a>
                            <h1 class="auto-style13">&nbsp;</h1>
                            <h1 class="auto-style16">Cari Tiket</h1>
                            <p>&nbsp;</p></center>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style18"><p align="right" class="newStyle1">Kota Asal&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; </p></td>
                    <td class="auto-style1">:&nbsp;&nbsp;<asp:DropDownList ID="DropDownList1" runat="server" CssClass="newStyle9" Width="190px">
                            </asp:DropDownList>
                            </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style18"><p align="right">Kota Tujuan&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; </p></td>
                    <td class="auto-style1">:&nbsp;
                        <asp:DropDownList ID="DropDownList2" runat="server" Width="188px">
                        </asp:DropDownList>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style18"><p align="right">Jam Berangkat&nbsp;&nbsp; &nbsp;&nbsp; </p></td>
                    <td class="auto-style1">:&nbsp;
                        <asp:DropDownList ID="DropDownList3" runat="server" Width="190px">
                        </asp:DropDownList>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style18" item-align="right">
                        <p align="right">Tanggal Berangkat&nbsp; </p></td>
                    <td>:&nbsp;
                        <asp:DropDownList ID="DropDownList4" runat="server" Width="190px">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style12">&nbsp;</td>
                </tr>
                </table>
            <p class="auto-style10">
                <asp:Button ID="btnSelect" runat="server" Text="Cari" OnClick="btnSelect_Click" CssClass="btnsrch" BackColor="#777777" Height="34px" Width="109px" />
            </p>
            <table>
                <tr>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>

            <hr class="auto-style8" />

            <table>
                <tr class="newStyle11">
                    <td class="auto-style14">
                        <span class="newStyle10">PILIH TIKET</span><span class="auto-style13"> </span>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;
                        <span class="auto-style15"><span class="auto-style19">PILIH SEAT</span> </span>
                        <asp:DropDownList ID="DropDownList5" runat="server" Width="149px">
                        </asp:DropDownList>
&nbsp;&nbsp; <span class="auto-style15"><span class="auto-style19">USERNAME</span> </span>
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                        <br />
                        <br />
&nbsp;<asp:Button ID="btnClose" runat="server" Text="BELI TIKET" BackColor="#777777" BorderColor="White" OnClick="btnClose_Click" CssClass="btnbl" Height="31px" Width="170px" />
                    </td>
                </tr>
                <tr>

                    <td class="auto-style5">
                        <h1 class="auto-style11">Daftar Keberangkatan Kereta</h1>
                        <center>&nbsp;&nbsp; </center>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        
                        <center><asp:GridView ID="GridView1" runat="server" CssClass="gv" Height="218px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="493px" ></asp:GridView></center>
                    </td>
                </tr>
            </table>
            
            <hr />

            
            <p>
                &nbsp;</p>
            <p class="auto-style10">
                <asp:Label ID="Label1" runat="server" CssClass="auto-style13"></asp:Label>
            </p>

            
    </form>
    <p>
        &nbsp;</p>
</body>
</html>