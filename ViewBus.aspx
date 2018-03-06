<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="ViewBus.aspx.cs" Inherits="Admin_ViewBus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">



    <table style="width: 100%; height: 423px;">
    <tr>
        <td bgcolor="#00FF99" colspan="3" style="height: 67px">
            <h1 class="text-center">
                <strong>Bus Details</strong></h1>
        </td>
    </tr>
    <tr>
        <td style="height: 313px; width: 159px">
        </td>
        <td style="height: 313px; width: 796px" valign="top">
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:db_bus %>" 
                SelectCommand="SELECT * FROM [Bus_info]"></asp:SqlDataSource>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" 
                CellPadding="3" DataKeyNames="Busno" DataSourceID="SqlDataSource1" 
                GridLines="Vertical" Height="295px" Width="829px">
                <AlternatingRowStyle BackColor="Gainsboro" />
                <Columns>
                    <asp:BoundField DataField="Busno" HeaderText="Bus No." ReadOnly="True" 
                        SortExpression="Busno">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Source" HeaderText="Source" SortExpression="Source">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Destination" HeaderText="Destination" 
                        SortExpression="Destination">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Time" HeaderText="Time" SortExpression="Time">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Shift" HeaderText="Shift" SortExpression="Shift">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Fare" HeaderText="Fare" SortExpression="Fare">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                </Columns>
                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#0000A9" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#000065" />
            </asp:GridView>
        </td>
        <td style="height: 313px">
        </td>
    </tr>
    <tr>
        <td style="width: 159px">
            &nbsp;</td>
        <td style="width: 796px">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
</table>



</asp:Content>

