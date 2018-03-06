<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="AddBus.aspx.cs" Inherits="Admin_AddBus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">



    <table style="width: 100%; height: 507px;">
        <tr>
            <td bgcolor="#00FF99" style="height: 38px">
            </td>
            <td bgcolor="#00FF99" style="height: 38px">
                <h1 class="text-center">
                    ADD BUS DETAILS</h1>
            </td>
            <td bgcolor="#00FF99" style="height: 38px">
            </td>
        </tr>
        <tr>
            <td style="height: 369px">
            </td>
            <td style="height: 369px">
                <table align="center" bgcolor="#CCCCCC" style="width: 63%; height: 299px;">
                    <tr>
                        <td style="width: 161px">
                            Bus No.:</td>
                        <td>
                            <asp:TextBox ID="TBBusno" runat="server" Width="190px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                                ControlToValidate="TBBusno" ErrorMessage="Bus No Required" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 161px">
                            Source:</td>
                        <td>
                            <asp:TextBox ID="TBSource" runat="server" Width="190px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                ErrorMessage="Source Required" ForeColor="Red" 
                                ControlToValidate="TBSource"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 161px">
                            Destination:</td>
                        <td>
                            <asp:TextBox ID="TBDest" runat="server" Width="190px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                ErrorMessage="Destination Required" ForeColor="Red" 
                                ControlToValidate="TBDest"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 161px">
                            Departure Date:</td>
                        <td>
                            <asp:TextBox ID="TBDate" runat="server" Width="190px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                ErrorMessage="Departure Date Required" ForeColor="Red" 
                                ControlToValidate="TBDate"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 161px">
                            Departure Time:</td>
                        <td>
                            <asp:TextBox ID="TBTime" runat="server" Width="190px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                ErrorMessage="Departure Time Required" ForeColor="Red" 
                                ControlToValidate="TBTime"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 161px">
                            Shift:</td>
                        <td>
                            <asp:DropDownList ID="DDShifts" runat="server" Height="16px" Width="109px">
                                <asp:ListItem Value="-1">--Shifts--</asp:ListItem>
                                <asp:ListItem Value="1">Day</asp:ListItem>
                                <asp:ListItem Value="2">Night</asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                ErrorMessage="Shift Required" ForeColor="Red" ControlToValidate="DDShifts"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 161px">
                            Fare:</td>
                        <td>
                            <asp:TextBox ID="TBFare" runat="server" Width="190px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                                ErrorMessage="Fare Required" ForeColor="Red" ControlToValidate="TBFare"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 161px">
                            &nbsp;</td>
                        <td>
                            <asp:Button ID="BtnSubmit" runat="server" onclick="BtnSubmit_Click" 
                                Text="Submit" />
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 161px">
                            &nbsp;</td>
                        <td>
                            <asp:Label ID="Lblmessage" runat="server" ForeColor="Green"></asp:Label>
                        </td>
                    </tr>
                </table>
            </td>
            <td style="height: 369px">
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>



</asp:Content>

