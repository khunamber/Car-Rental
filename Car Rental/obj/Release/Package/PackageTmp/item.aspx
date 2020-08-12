<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="item.aspx.cs" Inherits="Car_Rental.item" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
            height: 23px;
        }
        .auto-style11 {
            height: 23px;
            }
        .auto-style17 {
        height: 1049px;
    }
        .auto-style18 {
            width: 808px;
        }
        .auto-style19 {
            margin-bottom: 0px;
        }
    .auto-style20 {
        height: 856px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div><div>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; เช่ารถ&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; รายการรถเช่า เขตกรุงเทพมหานคร</div>
            <br />
            <br />
            <br />
        <br />
        <table style="width:100%;">
            <tr>
                <td class="auto-style18" rowspan="8">
                    <div class="auto-style17">
                        <br />
                        
                        <br />
                        รหัสรถเช่า&nbsp;&nbsp;&nbsp;&nbsp; <asp:DropDownList ID="txtcarID" runat="server" Height="26px" Width="129px" BackColor="#66CCFF" DataSourceID="SqlDataSource1" DataTextField="CarID" DataValueField="CarID">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ProjectDBConnectionString %>" SelectCommand="SELECT [CarID] FROM [Car]"></asp:SqlDataSource>
                        <br />
                        <br />ชื่อผู้ใช้&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="txtUser" runat="server" BackColor="#66CCFF"></asp:TextBox>
                        <br />
                        <br />
                        สาขาที่เช่ารถ&nbsp;
                        <asp:DropDownList ID="txtLo" runat="server" Height="22px" Width="130px" BackColor="#66CCFF" DataSourceID="SqlDataSource2" DataTextField="LocationName" DataValueField="LocationName">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ProjectDBConnectionString %>" SelectCommand="SELECT [LocationName] FROM [Locations]"></asp:SqlDataSource>
                        <br />
                        <br />
                        วันที่รับรถ&nbsp;&nbsp;
                        <asp:TextBox ID="txtDateL" runat="server" BackColor="#66CCFF" TextMode="Date"></asp:TextBox>
                        <br />
                        <br />
                        เวลารับรถ&nbsp;
                        <asp:TextBox ID="txtTimeL" runat="server" BackColor="#66CCFF" TextMode="Time"></asp:TextBox>
                        <br />
                        <br />
                        วันที่คืนรถ&nbsp;
                        <asp:TextBox ID="txtDateR" runat="server" BackColor="#66CCFF" TextMode="Date"></asp:TextBox>
                        <br />
                        <br />
                        เวลาคืนรถ&nbsp;
                        <asp:TextBox ID="txtTimeR" runat="server" BackColor="#66CCFF" TextMode="Time"></asp:TextBox>
                        <br />
                        <br />
                        จำนวนวันที่ต้องการเช่ารถ&nbsp;
                        <asp:TextBox ID="txtDay" runat="server" BackColor="#66CCFF" CssClass="auto-style19" TextMode="Number"></asp:TextBox>
                        <br />
                        <br />
                        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="คำนวณราคา" />
                        <br />
                        <br />
                        <asp:Label ID="Label2" runat="server" ForeColor="Red" Text="ยอดชำระ"></asp:Label>
                        <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
                        <asp:Label ID="Label3" runat="server" ForeColor="Red" Text="บาท"></asp:Label>
                        <br />
                        <br />
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="เช่ารถ" />
                        <br />
                    </div>
                </td>
                <td class="auto-style11">
                    &nbsp;</td>
                <td class="auto-style6" style="background-color: #CCFFFF">
                        <div class="auto-style20">
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="CarID" DataSourceID="SqlDataSource3" ForeColor="#333333" GridLines="None">
                                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
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
                                <EditRowStyle BackColor="#999999" />
                                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ProjectDBConnectionString %>" SelectCommand="SELECT * FROM [Car]"></asp:SqlDataSource>
                </div>
                </td>
            </tr>
        </table>
        <br />
         </>
    </div>
</asp:Content>