<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Testimonials.aspx.cs" Inherits="QuickAI.Testimonials" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Testimonials</title>      
    <link href="../IndexPage.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>   
    <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.1/moment.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
    <script src="../Scripts/changeplan.js"></script>
</head>
<body>
    <form id="Testimonials" runat="server">
        <div class="headerBar">
            <%-- Header starts here --%>
            <div>
                <a class="navbar-brand" href="Index.aspx">
                    <img src="Images/1149945428.png" id="websiteLogo" />
                </a>
            </div>
            <div>
                <%--<a href="#" class="sandwich-link" data-toggle="collapse" id="btnToggle">
                    <i class="fa fa-bars" aria-hidden="true"></i>
                </a>--%>
            </div>
            <div>
                <asp:TextBox ID="viewImage" Style="display: none;" runat="server" value=""></asp:TextBox>
            </div>
            <div>
                <%-- User Drop Down Button --%>
                <div class="dropdown show">
                    <a class="btn btn-secondary dropdown-toggle" href="#" role="button" id="userDropDownList" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <asp:Image runat="server" ID="Image1" src="Images/Image%20ICON.png" Style="height: 30px;" onmouseover="viewText()" onmouseout="hideText()" alt="" class="hover-text" />
                    </a>
                    <div class="dropdown-menu" aria-labelledby="userDropDownList">
                        <a class="dropdown-item" href="dashboard.aspx">Dashboard</a>
                        <a class="dropdown-item" href="ai-templates/Ai-templates.aspx">Templates</a>
                        <a class="dropdown-item" href="ai-images.aspx">AI Images</a>
                        <a class="dropdown-item" href="ai-chat.aspx">AI Chat</a>
                        <a class="dropdown-item" href="speechToText.aspx">Speech to Text</a>
                        <a class="dropdown-item" href="ai-code.aspx">AI Code</a>
                        <a class="dropdown-item" href="all-documents.aspx">All Documents</a>
                        <a class="dropdown-item" href="membership/membership.aspx">Membership</a>
                        <a class="dropdown-item" href="accountSetting.aspx">Account Setting</a>
                        <asp:LinkButton class="dropdown-item" OnClick="logout" runat="server">Logout</asp:LinkButton>
                    </div>
                </div>
            </div>
            <div>
                <%-- Header Language Selection --%>
                <div class="dropdown">
                    <asp:Button runat="server" class="btn btn-secondary btn-primary btn-lg dropdown-toggle" type="button" ID="Button2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"
                        Text="en" />
                    <div class="dropdown-menu" aria-labelledby="Lang">
                        <asp:Button runat="server" class="dropdown-item" type="button" Text="English" />
                        <asp:Button runat="server" class="dropdown-item" type="button" Text="Hindi" />
                        <asp:Button runat="server" class="dropdown-item" type="button" Text="Odia" />
                        <asp:Button runat="server" class="dropdown-item" type="button" Text="Tamil" />
                        <asp:Button runat="server" class="dropdown-item" type="button" Text="Tamil" />
                        <asp:Button runat="server" class="dropdown-item" type="button" Text="Tamil" />
                        <asp:Button runat="server" class="dropdown-item" type="button" Text="Tamil" />
                        <asp:Button runat="server" class="dropdown-item" type="button" Text="Tamil" />
                        <asp:Button runat="server" class="dropdown-item" type="button" Text="Tamil" />
                        <asp:Button runat="server" class="dropdown-item" type="button" Text="Tamil" />
                        <asp:Button runat="server" class="dropdown-item" type="button" Text="Tamil" />
                        <asp:Button runat="server" class="dropdown-item" type="button" Text="Tamil" />
                        <asp:Button runat="server" class="dropdown-item" type="button" Text="Tamil" />
                        <asp:Button runat="server" class="dropdown-item" type="button" Text="Tamil" />
                    </div>
                </div>
            </div>
            <%-- Header End Here --%>
        </div>
        <%-- tBody start --%>
        <div id="tBody">
            <div class="row firstRowTestimonial" style="background:#f2f2f2;">
                <div class="col-lg-6 col-md-12">
                    <div style="padding-left:125px">
                        <h4>Testimonials</h4>
                    </div>                    
                </div>
                <div class="col-lg-6 col-md-12">
                    <div id="rightSideContent" style="float: right;padding-right:125px;">
                        <a href="../Index.aspx">Home</a>
                        <a href="Testimonials.aspx">Testimonials</a>
                    </div>
                </div>
            </div>
            
            <div class="row secondRowTestimonial">
                <div class="col-lg-4 col-md-12">
                    <div class="tempDiv">
                        <img src="Images/Image%20ICON.png" style="height: 30px;" />
                        <h3>Ashis</h3>
                        <asp:Button ID="t1" runat="server" Text="Designer" class="btn btn-primary" />
                        <p style="white-space: initial">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vitae dolor sed urna placerat tincidunt. Aliquam eget metus auctor, congue massa in, aliquet tellus.</p>
                    </div>
                </div>
                <div class="col-lg-4 col-md-12">
                    <div class="tempDiv">
                        <img src="Images/Image%20ICON.png" style="height: 30px;" />
                        <h4>Rohini</h4>
                        <asp:Button ID="t3" runat="server" Text="Designer" class="btn btn-primary" />
                        <p style="white-space: initial">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vitae dolor sed urna placerat tincidunt. Aliquam eget metus auctor, congue massa in, aliquet tellus.</p>
                    </div>
                </div>
                <div class="col-lg-4 col-md-12">
                    <div class="tempDiv">
                        <img src="Images/Image%20ICON.png" style="height: 30px;"/>
                        <h4>Akansha</h4>
                        <asp:Button ID="Button1" runat="server" Text="Designer" class="btn btn-primary" />
                        <p style="white-space: initial">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vitae dolor sed urna placerat tincidunt. Aliquam eget metus auctor, congue massa in, aliquet tellus.</p>
                    </div>
                </div>
            </div>           
        </div>
        <%-- TFooter --%>
        <%-- Footer Design By --%>
        <div class="row footer">
            <div class="col-md-6">
                <div class="footer-logo">
                    <img src="Images/1149945428.png" />
                </div>
                <p>Aenean sodales mattis augue. Morbi euismod, felis at volutpat volutpat, quam lectus porttitor massa, tur ex a neque pulvinar pulvinar.</p>

            </div>
            <div class="col-md-2">
                <div class="footer-links">
                    <h3>My Account</h3>
                    <ul>
                        <li><a href="Login.aspx">Login</a></li>
                        <li><a href="Register.aspx">Register</a></li>
                    </ul>
                </div>
            </div>
            <div class="col-md-2">
                <div class="footer-links">
                    <h3>Helpful Links</h3>
                    <ul>
                        <li><a href="blogs/blogs.aspx">Blog</a></li>
                        <li><a href="#">Feedback</a></li>
                        <li><a href="#">Contact</a></li>
                    </ul>
                </div>
            </div>
            <div class="col-md-2">
                <div class="footer-links">
                    <h3>Information</h3>
                    <ul>
                        <li><a href="#">FAQ</a></li>
                        <li><a href="Testimonials.aspx">Testimonials</a></li>

                    </ul>
                </div>
            </div>
        </div>
        <div class="row footer">
            <div class="col-md-6">
                <span class="footer-copyright-text">2023 Socius IGB Pvt Ltd, All right reserved</span>
            </div>
            <div class="col-md-6">
                <!-- Facebook -->
                <a class="btn btn-primary" style="background-color: #3b5998;" href="#!" role="button"><i class="fab fa-facebook-f"></i></a>

                <!-- Twitter -->
                <a class="btn btn-primary" style="background-color: #55acee;" href="#!" role="button"><i class="fab fa-twitter"></i></a>

                <!-- Google -->
                <a class="btn btn-primary" style="background-color: #dd4b39;" href="#!" role="button"><i class="fab fa-google"></i></a>

                <!-- Instagram -->
                <a class="btn btn-primary" style="background-color: #ac2bac;" href="#!" role="button"><i class="fab fa-instagram"></i></a>

                <!-- Linkedin -->
                <a class="btn btn-primary" style="background-color: #0082ca;" href="#!" role="button"><i class="fab fa-linkedin-in"></i></a>

                <!-- Pinterest -->
                <a class="btn btn-primary" style="background-color: #c61118;" href="#!" role="button"><i class="fab fa-pinterest"></i></a>

                <!-- Vkontakte -->
                <a class="btn btn-primary" style="background-color: #4c75a3;" href="#!" role="button"><i class="fab fa-vk"></i></a>

                <!-- Stack overflow -->
                <a class="btn btn-primary" style="background-color: #ffac44;" href="#!" role="button"><i class="fab fa-stack-overflow"></i></a>

                <!-- Youtube -->
                <a class="btn btn-primary" style="background-color: #ed302f;" href="#!" role="button"><i class="fab fa-youtube"></i></a>

                <!-- Slack -->
                <a class="btn btn-primary" style="background-color: #481449;" href="#!" role="button"><i class="fab fa-slack-hash"></i></a>

                <!-- Github -->
                <a class="btn btn-primary" style="background-color: #333333;" href="#!" role="button"><i class="fab fa-github"></i></a>

                <!-- Dribbble -->
                <a class="btn btn-primary" style="background-color: #ec4a89;" href="#!" role="button"><i class="fab fa-dribbble"></i></a>

                <!-- Reddit -->
                <a class="btn btn-primary" style="background-color: #ff4500;" href="#!" role="button"><i class="fab fa-reddit-alien"></i></a>

                <!-- Whatsapp -->
                <a class="btn btn-primary" style="background-color: #25d366;" href="#!" role="button"><i class="fab fa-whatsapp"></i></a>
            </div>
        </div>      
    </form>
</body>
</html>
