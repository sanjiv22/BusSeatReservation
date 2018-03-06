<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table style="width: 100%; height: 745px;">
        <tr>
            <td bgcolor="#00FF99" style="height: 60px; width: 150px">
                <h1>
                    &nbsp;</h1>
            </td>
            <td bgcolor="#00FF99" style="height: 60px; width: 800px">
                <h1 class="text-center">
                    <strong>SignUp To Book Ticket</strong></h1>
            </td>
            <td bgcolor="#00FF99" style="height: 60px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="height: 193px; width: 150px">
            </td>
            <td style="height: 193px; width: 800px" valign="top">
                &nbsp;&nbsp;<table style="width:100%;">
                    <tr>
                        <td style="height: 20px; width: 119px">
                            UserName</td>
                        <td style="height: 20px; width: 194px;">
                            <asp:TextBox ID="TBUsername" runat="server" Width="190px"></asp:TextBox>
                        </td>
                        <td style="height: 20px">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                                ControlToValidate="TBUsername" ErrorMessage="UserName Required" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="height: 20px; width: 119px">
                            First Name:</td>
                        <td style="height: 20px; width: 194px;">
                            <asp:TextBox ID="TBFirstname" runat="server" Width="190px"></asp:TextBox>
                        </td>
                        <td style="height: 20px">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                ControlToValidate="TBFirstname" ErrorMessage="First Name Required" 
                                ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 119px; height: 20px">
                            Last Name:</td>
                        <td style="height: 20px; width: 194px;">
                            <asp:TextBox ID="TBLastname" runat="server" Width="190px"></asp:TextBox>
                        </td>
                        <td style="height: 20px">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                ControlToValidate="TBLastname" ErrorMessage="Last Name Required" 
                                ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 119px; height: 20px">
                            Gender:</td>
                        <td style="height: 20px; width: 194px;">
                            <asp:DropDownList ID="DDGender" runat="server" Width="190px">
                                
                                <asp:ListItem Enabled="True" Text="--Select Gender--" Value="-1">Select Gender</asp:ListItem>
                                <asp:ListItem Text="Male" Value="1"></asp:ListItem>
                                <asp:ListItem Text="Female" Value="2"></asp:ListItem>
                                <asp:ListItem Text="Other" Value="3"></asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td style="height: 20px">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                ControlToValidate="DDGender" ErrorMessage="Select a Gender" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 119px; height: 20px">
                            Address:</td>
                        <td style="height: 20px; width: 194px;">
                            <asp:TextBox ID="TBAddress" runat="server" Width="190px"></asp:TextBox>
                        </td>
                        <td style="height: 20px">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                ControlToValidate="TBAddress" ErrorMessage="Address Required" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 119px">
                            Email:</td>
                        <td style="width: 194px">
                            <asp:TextBox ID="TBEmail" runat="server" Width="190px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                ControlToValidate="TBEmail" ErrorMessage="Email Required" ForeColor="Red"></asp:RequiredFieldValidator>
                            <br />
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                ControlToValidate="TBEmail" ErrorMessage="Enter Valid Email Id" ForeColor="Red" 
                                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 119px">
                            Phone No:</td>
                        <td style="width: 194px">
                            <asp:TextBox ID="TBPhoneno" runat="server" Width="190px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                ControlToValidate="TBPhoneno" ErrorMessage="Phone Number Required" 
                                ForeColor="Red"></asp:RequiredFieldValidator>
                            <br />
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                                ControlToValidate="TBPhoneno" ErrorMessage="Enter Valid Phone Number" 
                                ForeColor="Red" ValidationExpression="^\+?\d{0,3}\-?\d{4,5}\-?\d{4,5}"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 119px">
                            Password:</td>
                        <td style="width: 194px">
                            <asp:TextBox ID="TBPass" runat="server" Width="190px" TextMode="Password"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                                ControlToValidate="TBPass" ErrorMessage="Password Required" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 119px">
                            Confirm Password:</td>
                        <td style="width: 194px">
                            <asp:TextBox ID="TBConfpass" runat="server" Width="190px" TextMode="Password"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                                ControlToValidate="TBConfpass" ErrorMessage="Please Confirm Password" 
                                ForeColor="Red"></asp:RequiredFieldValidator>
                            <br />
                            <asp:CompareValidator ID="CompareValidator1" runat="server" 
                                ControlToCompare="TBPass" ControlToValidate="TBConfpass" Display="Dynamic" 
                                ErrorMessage="Not Matched!" ForeColor="Red"></asp:CompareValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 119px">
                            &nbsp;</td>
                        <td style="width: 194px">
                            <asp:Button ID="BtnSignUp" runat="server" onclick="BtnSignUp_Click" 
                                Text="Sign Up" />
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
            <td style="height: 193px">
            </td>
        </tr>
        <tr>
            <td style="width: 150px">
                &nbsp;</td>
            <td style="width: 800px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>

</asp:Content>

