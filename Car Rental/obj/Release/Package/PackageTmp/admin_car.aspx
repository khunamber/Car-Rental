<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="admin_car.aspx.cs" Inherits="Car_Rental.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <nav class="navbar navbar-dark bg-dark">
        <br /><center><a class="nav-link" style="font-family:'Athiti', sans-serif;font-size: 30px; color:#e01818">Admin           
                    </a></center>
        <br />
    </nav>
    <br />
    <br /><center>
    <asp:Button ID="Button1" runat="server" Height="55px" Text="จัดการข้อมูลรถ" Width="200px" BackColor="#669999" OnClick="Button1_Click" />
    <asp:Button ID="Button2" runat="server" Height="55px" Text="จัดการข้อมูลสถานที่" Width="200px" BackColor="#669999" OnClick="Button2_Click" />
    <asp:Button ID="Button3" runat="server" Height="55px" Text="จัดการข้อมูลลูกค้า" Width="200px" BackColor="#669999" OnClick="Button3_Click" />
    <br />
    <br />
    <br />
    <asp:Label ID="Label1" runat="server" ForeColor="#CC33FF" Text="จัดการข้อมูลรถ"></asp:Label>
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; รหัสรถ
    <asp:TextBox ID="carID" runat="server" BackColor="#66CCFF"></asp:TextBox>
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ชื่อรถ
    <asp:TextBox ID="carName" runat="server" BackColor="#66CCFF"></asp:TextBox>
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;แรงม้า&nbsp;
    <asp:TextBox ID="carPower" runat="server" BackColor="#66CCFF"></asp:TextBox>
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; รุ่น&nbsp;
    <asp:TextBox ID="carType" runat="server" BackColor="#66CCFF"></asp:TextBox>
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;สถานะ&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="status" runat="server" BackColor="#66CCFF"></asp:TextBox>
    <br />
    &nbsp;&nbsp;ราคาเช่าต่อวัน <asp:TextBox ID="price" runat="server" BackColor="#66CCFF"></asp:TextBox>
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; รูปภาพ <asp:FileUpload ID="FileUpload1" runat="server" BackColor="#66CCFF" Width="282px" />
    &nbsp;<br />
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="AddCar" runat="server" OnClick="AddCar_Click" Text="เพิ่มข้อมูล" BackColor="#669999" />
    &nbsp;&nbsp;
    <asp:Button ID="DelCar" runat="server" OnClick="DelCar_Click" Text="ลบข้อมูล" BackColor="#669999" />
    &nbsp;&nbsp;
    <asp:Button ID="EditCar" runat="server" OnClick="EditCar_Click" Text="แก้ไขข้อมูล" BackColor="#669999" />
    <br />
    <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="CarID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="CarID" HeaderText="CarID" ReadOnly="True" SortExpression="CarID" />
                <asp:BoundField DataField="CarName" HeaderText="CarName" SortExpression="CarName" />
                <asp:BoundField DataField="CarPower" HeaderText="CarPower" SortExpression="CarPower" />
                <asp:BoundField DataField="CarType" HeaderText="CarType" SortExpression="CarType" />
                <asp:BoundField DataField="stat" HeaderText="stat" SortExpression="stat" />
                <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                <asp:ImageField DataImageUrlField="images" HeaderText="Image">
                </asp:ImageField>
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ProjectDBConnectionString %>" SelectCommand="SELECT * FROM [Car]"></asp:SqlDataSource>
    <br /></center>
    </asp:Content>
