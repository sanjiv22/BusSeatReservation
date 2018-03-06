<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="ViewUser.aspx.cs" Inherits="Admin_ViewUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table style="width: 100%; height: 527px;">
    <tr>
        <td bgcolor="#00FF99" colspan="3" style="height: 58px">
            <h1 class="text-center">
                <strong>User Details</strong></h1>
        </td>
    </tr>
    <tr>
        <td style="height: 371px; width: 100px">
        </td>
        <td style="height: 371px; width: 878px" valign="top">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" 
                CellPadding="3" DataKeyNames="username" DataSourceID="SqlDataSource1" 
                GridLines="Horizontal" Height="320px" Width="873px">
                <AlternatingRowStyle BackColor="#F7F7F7" />
                <Columns>
                    <asp:BoundField DataField="username" HeaderText="User Name" ReadOnly="True" 
                        SortExpression="username">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="firstname" HeaderText="First Name" 
                        SortExpression="firstname">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="lastname" HeaderText="Last Name" 
                        SortExpression="lastname">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="gender" HeaderText="Gender" SortExpression="gender">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="address" HeaderText="Address" 
                        SortExpression="address">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="phone" HeaderText="Phone" SortExpression="phone">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="utype" HeaderText="User Type" SortExpression="utype">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                </Columns>
                <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                <SortedAscendingCellStyle BackColor="#F4F4FD" />
                <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                <SortedDescendingCellStyle BackColor="#D8D8F0" />
                <SortedDescendingHeaderStyle BackColor="#3E3277" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:db_bus %>" 
                SelectCommand="SELECT * FROM [User_info]"></asp:SqlDataSource>
        </td>
        <td style="height: 371px">
        </td>
    </tr>
    <tr>
        <td style="width: 100px">
            &nbsp;</td>
        <td style="width: 878px">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
</table>

</asp:Content>

