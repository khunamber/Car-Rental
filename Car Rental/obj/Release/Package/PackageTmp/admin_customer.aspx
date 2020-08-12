<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="admin_customer.aspx.cs" Inherits="Car_Rental.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <nav class="navbar navbar-dark bg-dark">
        <br /><center><a class="nav-link" style="font-family:'Athiti', sans-serif;font-size: 30px; color:#e01818">Admin           
                    </a></center>
        <br />
    </nav>
    <br /><center>
    <br />&nbsp;<asp:Button ID="Button1" runat="server" Height="55px" Text="จัดการข้อมูลรถ" Width="200px" BackColor="#669999" OnClick="Button1_Click" />
    <asp:Button ID="Button2" runat="server" Height="55px" Text="จัดการข้อมูลสถานที่" Width="200px" BackColor="#669999" OnClick="Button2_Click" />
    <asp:Button ID="Button3" runat="server" Height="55px" Text="จัดการข้อมูลลูกค้า" Width="200px" BackColor="#669999" OnClick="Button3_Click" />
    <br />
    <br />
    <br />
    <asp:Label ID="Label1" runat="server" ForeColor="#FF3399" Text="ข้อมูลลูกค้า"></asp:Label>
        <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="UserID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="UserID" HeaderText="UserID" ReadOnly="True" SortExpression="UserID" />
            <asp:BoundField DataField="Passwords" HeaderText="Passwords" SortExpression="Passwords" />
            <asp:BoundField DataField="Fname" HeaderText="Fname" SortExpression="Fname" />
            <asp:BoundField DataField="Lname" HeaderText="Lname" SortExpression="Lname" />
            <asp:BoundField DataField="DrivingLicence" HeaderText="DrivingLicence" SortExpression="DrivingLicence" />
            <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
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
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ProjectDBConnectionString %>" DeleteCommand="DELETE FROM [Users] WHERE [UserID] = @UserID" InsertCommand="INSERT INTO [Users] ([UserID], [Passwords], [Fname], [Lname], [DrivingLicence], [Age], [Email], [Phone]) VALUES (@UserID, @Passwords, @Fname, @Lname, @DrivingLicence, @Age, @Email, @Phone)" SelectCommand="SELECT * FROM [Users]" UpdateCommand="UPDATE [Users] SET [Passwords] = @Passwords, [Fname] = @Fname, [Lname] = @Lname, [DrivingLicence] = @DrivingLicence, [Age] = @Age, [Email] = @Email, [Phone] = @Phone WHERE [UserID] = @UserID">
    <DeleteParameters>
        <asp:Parameter Name="UserID" Type="String" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="UserID" Type="String" />
        <asp:Parameter Name="Passwords" Type="Int32" />
        <asp:Parameter Name="Fname" Type="String" />
        <asp:Parameter Name="Lname" Type="String" />
        <asp:Parameter Name="DrivingLicence" Type="Int32" />
        <asp:Parameter Name="Age" Type="Int32" />
        <asp:Parameter Name="Email" Type="String" />
        <asp:Parameter Name="Phone" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="Passwords" Type="Int32" />
        <asp:Parameter Name="Fname" Type="String" />
        <asp:Parameter Name="Lname" Type="String" />
        <asp:Parameter Name="DrivingLicence" Type="Int32" />
        <asp:Parameter Name="Age" Type="Int32" />
        <asp:Parameter Name="Email" Type="String" />
        <asp:Parameter Name="Phone" Type="String" />
        <asp:Parameter Name="UserID" Type="String" />
    </UpdateParameters>
</asp:SqlDataSource>
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        </center>
</asp:Content>
