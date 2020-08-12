<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Car_Rental.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style8 {
            width: 931px;
        }
        .auto-style9 {
            width: 102%;
        }
        .auto-style10 {
            width: 122px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style9">
        <tr>
            <td style="font-size: small" class="auto-style8">
                &nbsp;</td>
            
            <td style="font-size: small" class="auto-style10">
               <center> <asp:LinkButton ID="Reg0" runat="server" OnClick="Reg_Click" ForeColor="White">สมัครสมาชิก</asp:LinkButton></center>
            </td>
            
        </tr>
    </table><center>
        <div><img class="auto-style21" src="pic/ulogin.jpg" /></div>
    
    <br />Username:
        <asp:TextBox ID="txtUser" runat="server"></asp:TextBox>
        <br />
        <br />
        Password:&nbsp; 
        <asp:TextBox ID="txtPass" runat="server" TextMode="Password"></asp:TextBox>
        <br />
        <br />
    <asp:Button ID="Log" runat="server" BackColor="black" OnClick="Log_Click1" Text="ลงชื่อเข้าใช้" ForeColor="White" />&nbsp;
    <asp:Button ID="back" runat="server" BackColor="black" OnClick="back_Click1" Text="กลับสู่หน้าหลัก" ForeColor="White" />
        </center>
</asp:Content>
