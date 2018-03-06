<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster.master" AutoEventWireup="true" CodeFile="Book.aspx.cs" Inherits="Book" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table style="width: 100%; height: 267px;">
        <tr>
            <td bgcolor="#00FF99">
                &nbsp;</td>
            <td bgcolor="#00FF99" class="style9" style="width: 128px">
                Ticket</td>
            <td bgcolor="#00FF99">
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style9" style="width: 128px">
                User Name</td>
            <td>
                <asp:Label ID="lblusername" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style9" style="width: 128px">
                Seat 1</td>
            <td>
                <asp:Label ID="lblseat1" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style9" style="width: 128px">
                Seat 2</td>
            <td>
                <asp:Label ID="lblseat2" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style9" style="width: 128px">
                Bus No</td>
            <td>
                <asp:Label ID="lblbusno" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style9" style="width: 128px">
                Time</td>
            <td>
                <asp:Label ID="lbltime" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style9" style="width: 128px">
                Date</td>
            <td>
                <asp:Label ID="lbldate" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style9" style="width: 128px">
                Total Fare</td>
            <td>
                <asp:Label ID="lbltotalfare" runat="server"></asp:Label>
                <asp:Label ID="Label1" runat="server" Text="* 2"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style9" style="width: 128px">
                &nbsp;</td>
            <td>
                Note: Please take the screenshot this Ticket For Confirmation.</td>
        </tr>
    </table>

</asp:Content>

