<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    hhh<table style="width: 100%; height: 335px;">
        <tr>
            <td bgcolor="#00FF99" colspan="3" style="height: 61px">
                <h1 class="text-center">
                    <strong>Login</strong></h1>
            </td>
        </tr>
        <tr>
            <td style="width: 220px; height: 304px">
            </td>
            <td style="height: 304px; width: 644px" valign="top">
                <table style="width: 100%; height: 150px;">
                    <tr>
                        <td style="width: 122px">
                            Username:</td>
                        <td>
                            <asp:TextBox ID="TBUsername" runat="server" Width="190px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                ControlToValidate="TBUsername" ErrorMessage="Username Reqiured" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 122px">
                            Password:</td>
                        <td>
                            <asp:TextBox ID="TBPass" runat="server" Width="190px" TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                ControlToValidate="TBPass" ErrorMessage="Password Required" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 122px">
                            &nbsp;</td>
                        <td>
                            <asp:Button ID="BtnLogin" runat="server" Text="Login" Width="85px" 
                                onclick="BtnLogin_Click" />
                            <asp:HyperLink ID="HyperLink1" runat="server" style="margin-left=10px;" NavigateUrl="~/register.aspx">signup</asp:HyperLink>
                            <br />
                            <asp:Label ID="Lblerror" runat="server"></asp:Label>
                        </td>
                    </tr>
                </table>
            </td>
            <td style="height: 304px">
            </td>
        </tr>
    </table>
</asp:Content>

