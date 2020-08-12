<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="login_admin.aspx.cs" Inherits="Car_Rental.login_admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
            width: 985px;
        }
        .auto-style7 {
            width: 247px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center><table style="width:100%;">
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
        </tr>
    </table>
    <br />
    <br />
    <br />Username:
        <asp:TextBox ID="txtUser" runat="server" Width="200px" BackColor="#66CCFF"></asp:TextBox>
        <br />
        <br />
        Password:&nbsp; <asp:TextBox ID="txtPass" runat="server" Width="200px" BackColor="#66CCFF" TextMode="Password"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="btnLogin" runat="server" BackColor="#669999" OnClick="btnLogin_Click1" Text="ลงชื่อเข้าใช้"/>
&nbsp;&nbsp;
    <asp:Button ID="back" runat="server" BackColor="#669999" OnClick="back_Click1" Text="กลับสู่หน้าหลัก" /></center>
</asp:Content>
