<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="user.aspx.cs" Inherits="Car_Rental.user" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style7 {
            height: 80px;
            width: 1335px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div><center>
         &nbsp;
         <div><img class="auto-style7" src="pic/re.jpg" /></div>
             
             <br />
         <br />
         ชื่อผู้ใช้&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:TextBox ID="txtUser" runat="server" BackColor="White" Height="26px" Width="244px"></asp:TextBox>
         <br />
         <br />
         รหัสผ่าน&nbsp;&nbsp;&nbsp; <asp:TextBox ID="txtPass" runat="server" BackColor="White" Height="26px" Width="244px" TextMode="Password"></asp:TextBox>

         <br />
         <br />
         ชื่อ&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="txtFName" runat="server" BackColor="White" Height="26px" Width="244px"></asp:TextBox>

         <br />
         <br />
        นามสกุล&nbsp;&nbsp;&nbsp; <asp:TextBox ID="txtLName" runat="server" BackColor="White" Height="26px" Width="244px"></asp:TextBox>

         <br />
         <br />
         รหัสใบขับขี่ <asp:TextBox ID="txtDli" runat="server" BackColor="White" Height="26px" Width="244px"></asp:TextBox>

         <br />
         <br />
         อายุ&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="txtAge" runat="server" BackColor="White" Height="26px" Width="244px"></asp:TextBox>

         <br />
         <br />
         อีเมลล์&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="txtEmail" runat="server" BackColor="White" Height="26px" Width="244px" TextMode="Email"></asp:TextBox>

         <br />
         <br />
         เบอร์โทร&nbsp;&nbsp;&nbsp; <asp:TextBox ID="txtTel" runat="server" BackColor="White" Height="26px" Width="244px" TextMode="Phone"></asp:TextBox>

         <br />
         <br />
         <asp:Button ID="Button1" runat="server" BackColor="Black" Text="ลงทะเบียน" OnClick="Button1_Click" ForeColor="White" BorderStyle="Ridge" />
    &nbsp;
         <asp:Button ID="back" runat="server" BackColor="Black" OnClick="back_Click1" Text="กลับสู่หน้าหลัก" ForeColor="White" BorderStyle="Ridge" />
    </div></center>
</asp:Content>
