﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="select_login.aspx.cs" Inherits="Car_Rental.select_login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style7 {
        width: 1335px;
            height: 80px;
        }
        .auto-style8 {
            width: 157px;
            height: 86px;
        }
        .auto-style9 {
            width: 157px;
            height: 86px;
        }
        .auto-style10 {
            width: 157px;
            height: 86px;
        }
        .auto-style11 {
            width: 157px;
            height: 86px;
        }
        .auto-style12 {
            width: 157px;
            height: 86px;
        }
        .auto-style13 {
            width: 157px;
            height: 86px;
        }
        .auto-style14 {
            width: 827px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="background-color: #333333"><center>
        <asp:Button ID="Button1" runat="server" Height="22px" OnClick="Button1_Click" Text="สำหรับผู้ดูแลระบบ" Width="150px" BackColor="#333333" ForeColor="White" BorderStyle="Ridge" />
        <asp:Button ID="Button2" runat="server" Height="22px" OnClick="Button2_Click" Text="สำหรับสมาชิก" Width="150px" BackColor="#333333" ForeColor="White" BorderStyle="Ridge" />
        <div><img class="auto-style7" src="pic/w.jpg" /></div>
        <br />
        <img src="pic/1.jpg" class="auto-style8" />
        <img src="pic/2.jpg" class="auto-style9" />
        <img src="pic/3.jpg" class="auto-style10" />
        <img src="pic/4.jpg" class="auto-style11" />
        <img src="pic/5.jpg" class="auto-style12" />
        <img src="pic/6.jpg" class="auto-style13" />
        <br /><img src="pic/cj.jpg"
        <br class="auto-style14" />
        <br />
        <br /><div><asp:Button ID="back" runat="server" BackColor="black" OnClick="back_Click1" Text="กลับสู่หน้าหลัก" ForeColor="White" BorderStyle="Ridge" /></div>

        </center>
        </div>
        </asp:Content>
