<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="Car_Rental.admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <nav class="navbar navbar-dark bg-dark">
                <br /><div><img class="auto-style21" src="pic/admin.jpg" /></div>
            <br />
                </nav>
        <br />
        <br /><center>
        <asp:Button ID="Button1" runat="server" Height="55px" Text="จัดการข้อมูลรถ" Width="200px" BackColor="Black" OnClick="Button1_Click" ForeColor="White" BorderStyle="Ridge" />
        <asp:Button ID="Button2" runat="server" Height="55px" Text="จัดการข้อมูลสถานที่" Width="200px" BackColor="Black" ForeColor="White" BorderStyle="Ridge" />
        <asp:Button ID="Button3" runat="server" Height="55px" Text="จัดการข้อมูลลูกค้า" Width="200px" BackColor="Black" ForeColor="White" BorderStyle="Ridge" />
        <br />
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" ForeColor="Black" Text="! รายการเช่ารถของลูกค้าทั้งหมด !"></asp:Label>
            <br />
        <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="CarID" HeaderText="CarID" SortExpression="CarID" />
                    <asp:BoundField DataField="UserID" HeaderText="UserID" SortExpression="UserID" />
                    <asp:BoundField DataField="LocationName" HeaderText="LocationName" SortExpression="LocationName" />
                    <asp:BoundField DataField="DateforLend" HeaderText="DateforLend" SortExpression="DateforLend" />
                    <asp:BoundField DataField="TimeforLend" HeaderText="TimeforLend" SortExpression="TimeforLend" />
                    <asp:BoundField DataField="DateforReturn" HeaderText="DateforReturn" SortExpression="DateforReturn" />
                    <asp:BoundField DataField="TimeforReturn" HeaderText="TimeforReturn" SortExpression="TimeforReturn" />
                    <asp:BoundField DataField="NumofDay" HeaderText="NumofDay" SortExpression="NumofDay" />
                </Columns>
                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                <SortedAscendingCellStyle BackColor="#FDF5AC" />
                <SortedAscendingHeaderStyle BackColor="#4D0000" />
                <SortedDescendingCellStyle BackColor="#FCF6C0" />
                <SortedDescendingHeaderStyle BackColor="#820000" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ProjectDBConnectionString %>" SelectCommand="SELECT * FROM [Rental]"></asp:SqlDataSource>
        <br />
        <br /></center>
        <br />
    </div>
</asp:Content>
