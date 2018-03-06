<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster.master" AutoEventWireup="true"
    CodeFile="bookticket.aspx.cs" Inherits="bookticket" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table style="width: 100%; height: 698px;">
        <tr>
            <td style="height: 82px;" colspan="4">
                <h1 class="text-center" style="background-color: Lime;">
                    <strong>Book Bus Ticket</strong></h1>
            </td>
        </tr>
        <tr>
            <td style="width: 90px; height: 185px;">
            </td>
            <td style="height: 185px;" colspan="2">
                <table style="width: 100%; margin-top: 0px; height: 170px;">
                    <tr>
                        <td style="height: 22px; width: 117px" width="80px">
                            From:
                        </td>
                        <td class="modal-sm" style="width: 109px; height: 22px" width="190px">
                            <asp:TextBox ID="TBBusFrom" runat="server" Width="180px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 117px" width="80px">
                            To:
                        </td>
                        <td class="modal-sm" style="width: 109px" width="190px">
                            <asp:TextBox ID="TBBusTo" runat="server" Width="180px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 117px" width="80px">
                            Travel Date:
                        </td>
                        <td class="modal-sm" style="width: 109px" width="190px">
                            <asp:TextBox ID="TBBusDate" runat="server" Width="180px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 117px" width="80px">
                            Shifts
                        </td>
                        <td class="modal-sm" style="width: 109px" width="190px">
                            <asp:DropDownList ID="DDShifts" runat="server" Height="16px" Width="99px">
                                <asp:ListItem Text="--Shifts--" Value="-1"></asp:ListItem>
                                <asp:ListItem Text="Day" Value="1"></asp:ListItem>
                                <asp:ListItem Text="Night" Value="2"></asp:ListItem>
                                <asp:ListItem Text="Both" Value="3"></asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 117px" width="80px">
                            &nbsp;
                        </td>
                        <td class="modal-sm" style="width: 109px" width="190px">
                            <asp:Button ID="BtnCheckBus" runat="server" OnClick="BtnCheckBus_Click" Text="Check" />
                        </td>
                    </tr>
                </table>
            </td>
            <td style="height: 185px" valign="top">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td style="width: 93px; height: 191px;">
                &nbsp;
            </td>
            <td style="width: 93px; height: 191px;" valign="top">
                <asp:Label ID="Label1" runat="server"></asp:Label>
                <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#999999"
                    BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" Width="473px">
                    <AlternatingRowStyle BackColor="#DCDCDC" />
                    <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                    <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                    <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#0000A9" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#000065" />
                    <Columns>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:LinkButton ID="GVselect" runat="server" CommandArgument='<%#Eval("Busno")%>'
                                    Text="Select" OnCommand="viewseat_click"></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </td>
            <td class="modal-sm" colspan="2" valign="top" style="height: 191px">
                <asp:GridView ID="GridView2" runat="server" CellPadding="4" ForeColor="#333333" 
                    GridLines="None" Width="545px" style="margin-left:10px;" Height="147px">
                    <AlternatingRowStyle BackColor="White" />
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
                    <Columns>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:LinkButton ID="GVselect" runat="server" CommandArgument='<%#Eval("Busno")%>'
                                    Text="Select" OnCommand="bookseat_click"></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
                <br />
            </td>
        </tr>
        <tr>
            <td style="width: 93px">
                &nbsp;</td>
            <td style="width: 93px" valign="top">
                <br />
            </td>
            <td class="modal-sm" colspan="2" valign="top">
                <br />
                <asp:Label ID="Label2" runat="server" 
                    Text="Note: You can only book two seat at a time"></asp:Label>
                <br />
                <br />
                <br />
                <table style="width:100%;">
                    <tr>
                        <td class="style8" style="width: 64px">
                            Seat1</td>
                        <td>
                            <asp:TextBox ID="TBSeat1" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style8" style="width: 64px">
                            Seat2</td>
                        <td>
                            <asp:TextBox ID="TBSeat2" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style8" style="width: 64px">
                            Bus No</td>
                        <td>
                            <asp:TextBox ID="TBBusno1" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style8" style="width: 64px">
                            &nbsp;</td>
                        <td>
                            <asp:Button ID="BtnBokTkt" runat="server" onclick="BtnBokTkt_Click" 
                                Text="Book Ticket" />
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>
