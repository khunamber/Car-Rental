<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Car_Rental.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
            width: 1100px;
        }
        .auto-style7 {
            width: 149px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:100%;">
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
            <td style="font-size: small">
                <asp:LinkButton ID="Reg" runat="server" OnClick="Reg_Click">สมัครสมาชิก</asp:LinkButton>
            </td>
            
        </tr>
    </table><center>
    <br />
    <br />
    <br />Username:
        <asp:TextBox ID="txtUser" runat="server"></asp:TextBox>
        <br />
        <br />
        Password:&nbsp; 
        <asp:TextBox ID="txtPass" runat="server" TextMode="Password"></asp:TextBox>
        <br />
        <br />
    <asp:Button ID="Log" runat="server" BackColor="#669999" OnClick="Log_Click1" Text="ลงชื่อเข้าใช้" />&nbsp;
    <asp:Button ID="back" runat="server" BackColor="#669999" OnClick="back_Click1" Text="กลับสู่หน้าหลัก" />
        </center>
</asp:Content>
