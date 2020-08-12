<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="select_login.aspx.cs" Inherits="Car_Rental.select_login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div><center>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Height="40px" OnClick="Button1_Click" Text="เข้าสู่ระบบสำหรับผู้ดูแลระบบ" Width="240px" BackColor="#669999" />
        <br />
        <br />
        <asp:Button ID="Button2" runat="server" Height="40px" OnClick="Button2_Click" Text="เข้าสู่ระบบสำหรับสมาชิก" Width="240px" BackColor="#669999" />
        </center>
        </div>
        </asp:Content>
