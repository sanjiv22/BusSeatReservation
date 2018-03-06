<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Bus Ticket Booking</title>
    <link rel="shortcort icon" href="images/bus.ico" />
    <!-- Bootstrap -->
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

    
     <link href="css/index_style.css" rel="stylesheet" type="text/css" />
   
      <style type="text/css">
        .style1
        {
            text-align: center;
        }
        .style2
        {
            height: 70px;
        }
        .style4
        {
            width: 832px;
        }
        .style6
        {
            width: 832px;
            height: 387px;
        }
        .style8
        {
            width: 88px;
        }
        .style9
        {
            width: 200px;
        }
        .style10
        {
            width: 489px;
            height: 387px;
        }
        .style11
        {
            width: 489px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <header>
    
		<img src="images/busicon.png">

		<nav>
			<ul>
				<li><a onclick="initScroll(); return false;" href="index.aspx">Home</a></li>
				<li><a onclick="initScroll('Services'); return false;" href="#Services">Services</a></li>
				<li><a onclick="initScroll('About'); return false;" href="#About">About</a></li>
				<li><a onclick="initScroll('Blog'); return false;" href="#Blog">Blog</a></li>
				<li><a onclick="initScroll('Contact'); return false;" href="#Contact">Contact</a></li>
				<li><a onclick="initScroll('Feedback'); return false;" href="#Feedback">Feedback</a></li>

				<li><a href="login.aspx">Login</a></li>

               <%-- <li>  <button class="btn btn-primary btn-sm" data-target="#loginModal" data-toggle="modal">Login</button>  </li>--%>
			</ul>
		</nav>
       
	</header>

    <!------ popup -->
   <%-- <div class="container">
    <div class="row">
    <div class="col-xs-12"> 
    <div class="modal fade" tabindex="-1" id="loginModal" data-keyboard="false" data-backdrop="static">
    <div class="modal-dialog modal-sm">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">
                    &times;
                </button>
                <h4 class="modal-title">Login</h4>
            </div>
            <div class="modal-body">
                <form>
                    <div class="form-group">
                        <label for="inputUserName">Username</label>
                        <input class="form-control" placeholder="Login Username"
                                type="text" id="inputUserName" />
                    </div>
                    <div class="form-group">
                        <label for="inputPassword">Password</label>
                        <input class="form-control" placeholder="Login Password"
                                type="password" id="inputPassword" />
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="submit" class="btn btn-primary">Login</button>
                <button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>
</div>
</div>
</div>
--%>

    <!-- popup end -->


	<a id="top" onclick="toTop(); return false;" href="#">Goto Top</a>
	<div id="Services" class="header-top">
		<h1>Services</h1><hr/>
		<p>-----------</p>
	</div><!-- endof services -->
	<div id="About" class="header-top">
		<h1>About</h1><hr/>
		<p>Butwal has been established as one of the business and industrial city among the major cities in Nepal. As businesses centre of Western Nepal and headquarter of Lumbini zone, it has been popularly known as traditional and historical city. In the view of transportation service it has been playing a very vital role. The road which has been constructed with the establishment of this city is the proof for the development of Butwal. Two important highways in this city located have made Butwal proudly known as city of transportation.</p>
<p>There are about 45 business and professional associations and West Nepal Bus Entrepreneurs Association is one of the founder members among them. It has been established in 2026 with the approval of District Administration Office. At present it has been conducting transportation service throughout nation with its own unique identity among various associations in nation. Along with 2200 staffs it has not only being working for the rights of its staff but also has been working to enhance their potentiality and capability. In addition to this it has been conducting training and seminar for minimization of road accidents. At present, it has been providing transportation service in each and every corner of city where there is road facility.</p>

<p>It has been established during 2026 by our senior bus entrepreneur with very few vehicles. At that time it has been only 50 years that buses started running in Butwal. During the time when we used to reach Nautanuwa, India by walking through bushy way, this association was established with the aim to terminate the unhealthy competition among the association. All the bus entrepreneurs and all the people in society are well known that this association has been accepting the national changes and also working to bring new change according to need of time and generation.</p>

<p>After 43 years of its establishment, with the large investment of about billion rupees it has been paying million of taxes to the government. Government of Nepal has banned the use of busses more than 20 years old but has not given any aid but association itself has banned the busses older than 1991 model and provided aid itself from the amount collected by the hard labor of bus entrepreneur. Due to this, passengers are provided relief from old and uncomfortable vehicles.</p>
<p>This association is not only limited within entrepreneurs .It has contributed lot for the improvement of social, financial, educational and tourism sectors and its known to all. Besides providing financial support to different institutions it has supported construction of cabin in Lumbini Zonal Hospital, construction of view tower in Hillpark, construction of passenger waiting station in Bhairahawa, construction of various physical facilities in Lumbini Banijya campus and Butwal Multiple College and also supported construction of Bhanu Park and these are only the few examples.</p>
<p>Beside this association has helped a lot for the vehicle in accident and entrepreneurs in different difficulties. Association has been conducting regular training for reducing the accidents and improving the efficiency of the driver and conductor. It has also been doing cross checking towards the faults of drivers. Bus entrepreneur have not only conducted business for themselves bus also have worked to reduce the unemployment problem. Directly and indirectly about six thousand people have been employed and 20 thousand family members are dependent on them.</p>
	</div>
		<div id="Blog" class="header-top">
			<h1>Blog</h1><hr/>
			<p>---------</p>
		</div><!-- endof blog -->
		<div id="Contact" class="header-top">
			<h1>Contact</h1><hr/>
<h4>Address: Butwal , Rupandehi ,Lumbini</h4><br/>
<h5>Butwal Head Office: 071-546973/9867524588</h5><br/>
<h5>Email: info@westNepal.com</h5><br/>
			
		</div><!-- endof contact-->
		<div id="Feedback" class="header-top">
			
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

		</div><!-- endof feedback -->
	<!-- </div> -->
	<  <!--- Footer  -->

    <hr />

    <footer>
        <div class="container">
           
            <p>&copy; 2017 BookTicket.com &middot; <a href="index.aspx">Home</a> &middot; <a href="#">About</a> &middot; <a href="#">Contact</a></p>
        </div>
    </footer>

    <!--- Footer -->
<script type="text/javascript" src="bootstrap/js/smooth.js"></script>
    </form>

   <script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script type="text/javascript" src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
</body>
</html>
