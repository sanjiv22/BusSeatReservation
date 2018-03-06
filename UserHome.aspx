<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster.master" AutoEventWireup="true" CodeFile="UserHome.aspx.cs" Inherits="UserHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	
    <div>
        <h1>Services</h1><br/>
        <asp:Label ID="Label1" runat="server"></asp:Label>
    
    </div>
    <div>
            <h1>About</h1><br/>
		<p>Butwal has been established as one of the business and industrial city among the major cities in Nepal. As businesses centre of Western Nepal and headquarter of Lumbini zone, it has been popularly known as traditional and historical city. In the view of transportation service it has been playing a very vital role. The road which has been constructed with the establishment of this city is the proof for the development of Butwal. Two important highways in this city located have made Butwal proudly known as city of transportation.</p>
<p>There are about 45 business and professional associations and West Nepal Bus Entrepreneurs Association is one of the founder members among them. It has been established in 2026 with the approval of District Administration Office. At present it has been conducting transportation service throughout nation with its own unique identity among various associations in nation. Along with 2200 staffs it has not only being working for the rights of its staff but also has been working to enhance their potentiality and capability. In addition to this it has been conducting training and seminar for minimization of road accidents. At present, it has been providing transportation service in each and every corner of city where there is road facility.</p>

<p>It has been established during 2026 by our senior bus entrepreneur with very few vehicles. At that time it has been only 50 years that buses started running in Butwal. During the time when we used to reach Nautanuwa, India by walking through bushy way, this association was established with the aim to terminate the unhealthy competition among the association. All the bus entrepreneurs and all the people in society are well known that this association has been accepting the national changes and also working to bring new change according to need of time and generation.</p>

<p>After 43 years of its establishment, with the large investment of about billion rupees it has been paying million of taxes to the government. Government of Nepal has banned the use of busses more than 20 years old but has not given any aid but association itself has banned the busses older than 1991 model and provided aid itself from the amount collected by the hard labor of bus entrepreneur. Due to this, passengers are provided relief from old and uncomfortable vehicles.</p>
<p>This association is not only limited within entrepreneurs .It has contributed lot for the improvement of social, financial, educational and tourism sectors and its known to all. Besides providing financial support to different institutions it has supported construction of cabin in Lumbini Zonal Hospital, construction of view tower in Hillpark, construction of passenger waiting station in Bhairahawa, construction of various physical facilities in Lumbini Banijya campus and Butwal Multiple College and also supported construction of Bhanu Park and these are only the few examples.</p>
<p>Beside this association has helped a lot for the vehicle in accident and entrepreneurs in different difficulties. Association has been conducting regular training for reducing the accidents and improving the efficiency of the driver and conductor. It has also been doing cross checking towards the faults of drivers. Bus entrepreneur have not only conducted business for themselves bus also have worked to reduce the unemployment problem. Directly and indirectly about six thousand people have been employed and 20 thousand family members are dependent on them.</p>
	</div>
       
    <div>
        <h1>Blog</h1><br/>
    </div>

    <div>
        <h1>Contact</h1><br/>
<h4>Address: Butwal , Rupandehi ,Lumbini</h4><br/>
<h5>Butwal Head Office: 071-546973/9867524588</h5><br/>
<h5>Email: info@westNepal.com</h5><br/>
        </div>

        <div>
        <table style="width: 100%; height: 507px;">
            <tr>
                <td class="style2" colspan="2">
                    &nbsp;
                    &nbsp;
                    <h1 class="style1">
                        <strong>Give Us Your Feedback</strong></h1>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td class="style10" valign="top">
                    </td>
                <td class="style6" valign="top">
                    &nbsp;
                    <table align="center" style="width: 44%; height: 283px;">
                        <tr>
                            <td class="style8">
                                Name:</td>
                            <td class="style9">
                                <asp:TextBox ID="TBName" runat="server" Width="190px"></asp:TextBox>
                                <br />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                    ControlToValidate="TBName" ErrorMessage="Name Required" ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="style8">
                                Email:</td>
                            <td class="style9">
                                <asp:TextBox ID="TbEmail" runat="server" Width="190px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                    ControlToValidate="TbEmail" ErrorMessage="Emal Required" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<br />
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                    ControlToValidate="TbEmail" ErrorMessage="Please Input Valid Email " 
                                    ForeColor="Red" 
                                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="style8" valign="middle">
                                Message</td>
                            <td class="style9">
                                <asp:TextBox ID="TbMessage" runat="server" Height="74px" Width="190px"></asp:TextBox>
                                <br />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                    ControlToValidate="TbMessage" ErrorMessage="Message Required" ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="style8">
                                &nbsp;</td>
                            <td class="style9">
                                <asp:Button ID="BtnSubmit" runat="server" onclick="BtnSubmit_Click" 
                                    Text="Submit" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style8">
                                &nbsp;</td>
                            <td class="style9">
                                <asp:Label ID="Lblmessage" runat="server" ForeColor="Green"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td class="style11">
                    &nbsp;</td>
                <td class="style4">
                    &nbsp;
                </td>
            </tr>
        </table>
        </div>
</asp:Content>

