<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="nyoba.aspx.cs" Inherits="Tugas5.nyoba" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 282px;
        }
        .dropdown-menu
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <center>
                <%--<asp:DropDownList ID="DropDownList1" runat="server" Height="100px"  OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="315px" >
                </asp:DropDownList>--%>
                <asp:DropDownList ID="DropDownList2" Width ="50px" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" >
                    
                </asp:DropDownList>
                <%--<asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>--%>
            </center>
        </div>
        <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
    </form>
</body>
</html>
