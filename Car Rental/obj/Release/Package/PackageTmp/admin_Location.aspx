<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="admin_Location.aspx.cs" Inherits="Car_Rental.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <nav class="navbar navbar-dark bg-dark">
                <br />
                    <center><a class="nav-link" style="font-family:'Athiti', sans-serif;font-size: 30px; color:#e01818">Admin           
                    </a></center>
            <br />
                </nav>
        <br />
        <br /><center>
        <asp:Button ID="Button1" runat="server" Height="55px" Text="จัดการข้อมูลรถ" Width="200px" BackColor="#669999" OnClick="Button1_Click" />
        <asp:Button ID="Button2" runat="server" Height="55px" Text="จัดการข้อมูลสถานที่" Width="200px" BackColor="#669999" OnClick="Button2_Click" />
        <asp:Button ID="Button3" runat="server" Height="55px" Text="จัดการข้อมูลลูกค้า" Width="200px" BackColor="#669999" OnClick="Button3_Click" />
        <br />
        <p>
            <asp:Label ID="Label1" runat="server" ForeColor="#663300" Text="จัดการข้อมูลสาขา"></asp:Label>
    </p>
    <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ชื่อสาขา
        <asp:TextBox ID="LoName" runat="server" BackColor="#66CCFF"></asp:TextBox>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ที่อยู่ &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="Add" runat="server" Height="73px" Width="198px" BackColor="#66CCFF"></asp:TextBox>
    </p>
    <p>
&nbsp;&nbsp;&nbsp;&nbsp; เบอร์โทรศัพท์
        <asp:TextBox ID="Phone" runat="server" BackColor="#66CCFF"></asp:TextBox>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="AddType" runat="server" OnClick="AddType_Click" Text="เพิ่มข้อมูล" BackColor="#669999" />
        &nbsp;&nbsp;
        <asp:Button ID="DelType" runat="server" OnClick="DelType_Click" Text="ลบข้อมูล" BackColor="#669999" />
        &nbsp;&nbsp;
        <asp:Button ID="EditType" runat="server" OnClick="EditType_Click" Text="แก้ไขข้อมูล" BackColor="#669999" /></center>
    </p>
    <p>
        <center><asp:GridView ID="GridView1" runat="server" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None">
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
            <FooterStyle BackColor="Tan" />
            <HeaderStyle BackColor="Tan" Font-Bold="True" />
            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
            <SortedAscendingCellStyle BackColor="#FAFAE7" />
            <SortedAscendingHeaderStyle BackColor="#DAC09E" />
            <SortedDescendingCellStyle BackColor="#E1DB9C" />
            <SortedDescendingHeaderStyle BackColor="#C2A47B" />
        </asp:GridView></center>
    </p>
</asp:Content>
