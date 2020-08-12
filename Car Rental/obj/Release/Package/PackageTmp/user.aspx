<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="user.aspx.cs" Inherits="Car_Rental.user" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div><center>
         &nbsp;<br />
         <br />
         สมัครสมาชิก<br />
         <br />
         ชื่อผู้ใช้&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:TextBox ID="txtUser" runat="server" BackColor="#66CCFF" Height="26px" Width="244px"></asp:TextBox>
         <br />
         <br />
         รหัสผ่าน&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;          <asp:TextBox ID="txtPass" runat="server" BackColor="#66CCFF" Height="26px" Width="244px" TextMode="Password"></asp:TextBox>

         <br />
         <br />
         ชื่อ&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                  <asp:TextBox ID="txtFName" runat="server" BackColor="#66CCFF" Height="26px" Width="244px"></asp:TextBox>

         <br />
         <br />
        นามสกุล&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <asp:TextBox ID="txtLName" runat="server" BackColor="#66CCFF" Height="26px" Width="244px"></asp:TextBox>

         <br />
         <br />
         รหัสใบขับขี่&nbsp;&nbsp;&nbsp;
                  <asp:TextBox ID="txtDli" runat="server" BackColor="#66CCFF" Height="26px" Width="244px"></asp:TextBox>

         <br />
         <br />
         อายุ&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <asp:TextBox ID="txtAge" runat="server" BackColor="#66CCFF" Height="26px" Width="244px"></asp:TextBox>

         <br />
         <br />
         อีเมลล์&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <asp:TextBox ID="txtEmail" runat="server" BackColor="#66CCFF" Height="26px" Width="244px" TextMode="Email"></asp:TextBox>

         <br />
         <br />
         เบอร์โทร&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <asp:TextBox ID="txtTel" runat="server" BackColor="#66CCFF" Height="26px" Width="244px" TextMode="Phone"></asp:TextBox>

         <br />
         <br />
         <asp:Button ID="Button1" runat="server" BackColor="#669999" Text="ลงทะเบียน" OnClick="Button1_Click" />
    &nbsp;
         <asp:Button ID="back" runat="server" BackColor="#669999" OnClick="back_Click1" Text="กลับสู่หน้าหลัก" />
    </div></center>
</asp:Content>
