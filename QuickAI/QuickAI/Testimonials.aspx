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
        <div id="tPage">
            <%--T Header Start--%>
            <div id="tHeader">
                <nav class="row navbar navbar-expand-lg navbar-light fixed-top" id="headerBar" style="box-shadow: 2px 2px 5px grey; height: 90px; border-style: ridge; z-index: 999; background-color: white;">
                    <div class="col-lg-3 col-md-4 col-sm-4" style="width: 24.99%">
                        <a class="navbar-brand" href="../Index.aspx" style="margin-bottom: 50px; overflow: hidden;">
                            <img src="../Images/1149945428.png" style="position: fixed; max-width: 100%; margin-bottom: 30px; padding-left: 35px; padding-right: 35px; overflow: hidden;" />
                        </a>
                    </div>
                    <div class="col-lg-7 col-md-2" style="width: 58.31%; overflow: hidden;">
                        <a href="#" class="sandwich-link" data-toggle="collapse" <%--data-target=".leftSideBar"--%> id="btnToggle">
                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-list" viewBox="0 0 16 16">
                                <path fill-rule="evenodd" d="M2.5 12a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5zm0-4a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5zm0-4a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5z" />
                            </svg>
                        </a>
                    </div>
                    <div class="col-lg-1 col-md-3 col-sm-4" style="width: 8.33%;">
                        <%-- User Drop Down Button --%>
                        <div class="dropdown show">
                            <a class="btn btn-secondary dropdown-toggle" href="#" role="button" id="userDropDownList" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <asp:Image runat="server" ID="userImage" src="Images/Image%20ICON.png" Style="height: 30px" onmouseover="viewText()" onmouseout="hideText()" alt="" class="hover-text" />
                                <asp:TextBox ID="viewImage" Style="display: none; width: 100px;" runat="server" value=""></asp:TextBox>
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
                    <div class="col-lg-1 col-md-3 col-sm-4" style="width: 8.33%;">
                        <%-- Header Language Selection --%>
                        <div class="dropdown">
                            <asp:Button runat="server" class="btn btn-secondary btn-primary btn-lg dropdown-toggle" type="button" ID="dropdownMenu2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"
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
                </nav>
            </div>
            <%-- tBody start --%>
            <div id="tBody">
                 <%-- Bank Deposit --%>
                <div id="testimonialsBody" runat="server">
                    <div class="row" style="margin-top:95px">
                        <div class="col-lg-12" style="padding-left:150px;padding-right:150px">
                            <div class="row" style="padding-top:10px; padding-bottom:70px">
                                <div class="col-lg-6">
                                    <h3 class="active">Testimonials</h3>
                                </div>
                                <div class="col-lg-6">
                                    <ul style="display: inline-flex; float: right">
                                        <li><a href="../Index.aspx">Home</a></li>
                                        <li><a href="Testimonials.aspx">Testimonials</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="row" style="padding-top:40px;padding-bottom:40px">
                                <div class="col-lg-4">
                                    <div style="height: 300px; box-shadow: 2px 2px 5px grey; background: bisque;">
                                        <div style="align-content: center; padding-top: 20px">
                                            <div class="row">
                                                <img src="Images/Image%20ICON.png" style="height: 30px; padding-left: 180px;" />
                                            </div>
                                            <div class="row" style="padding-left: 170px">
                                                Ashis
                                            </div>
                                            <div class="row">
                                                <asp:Button ID="t1" runat="server" Text="Designer" class="btn btn-primary" Style="width: 150px; margin-left: 120px;" />
                                            </div>
                                            <div class="text-container" style="padding-top: 20px">
                                                <p style="white-space:initial">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vitae dolor sed urna placerat tincidunt. Aliquam eget metus auctor, congue massa in, aliquet tellus.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-4">
                                    <div style="height: 300px; box-shadow: 2px 2px 5px grey; background: bisque; ">
                                        <div style="align-content: center; padding-top: 20px">
                                            <div class="row">
                                                <img src="Images/Image%20ICON.png" style="height: 30px; padding-left: 180px;" />
                                            </div>
                                            <div class="row" style="padding-left: 170px">
                                                Rohini
                                            </div>
                                            <div class="row">
                                                <asp:Button ID="t3" runat="server" Text="Designer" class="btn btn-primary" Style="width: 150px; margin-left: 120px;" />
                                            </div>
                                            <div class="text-container" style="padding-top: 20px">
                                                <p style="white-space:initial">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vitae dolor sed urna placerat tincidunt. Aliquam eget metus auctor, congue massa in, aliquet tellus.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-4">
                                    <div style="height: 300px;  box-shadow: 2px 2px 5px grey; background: bisque; ">
                                        <div style="align-content: center; padding-top: 20px">
                                            <div class="row">
                                                <img src="Images/Image%20ICON.png" style="height: 30px; padding-left: 180px;" /></div>
                                            <div class="row" style="padding-left: 170px">
                                                Akansha
                                            </div>
                                            <div class="row">
                                                <asp:Button ID="Button1" runat="server" Text="Designer" class="btn btn-primary" Style="width: 150px; margin-left: 120px;" />
                                            </div>
                                            <div class="text-container" style="padding-top: 20px">
                                                <p style="white-space:initial">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vitae dolor sed urna placerat tincidunt. Aliquam eget metus auctor, congue massa in, aliquet tellus.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <%-- TFooter --%>
            <%-- Footer Design By KK row navbar navbar-expand-lg navbar-dark bg-dark--%>
            <footerclass="footer fixed-bottom" style="bottom: 0;width: 100%;height: 60px;background-color: #f5f5f5;">
                <div class="row navbar navbar-expand-lg navbar-dark py-3 bg-dark text-light full-width">
                        <div class="row">
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
                    </div>
                <div class="row navbar py-3 text-light bg-dark full-width">
                    <div class="col-md-6">
                        <span class="footer-copyright-text">2023 Socius IGB Pvt Ltd, All right reserved</span>
                    </div>
                    <div class="col-md-6">
                       <!-- Facebook -->
                        <a class="btn btn-primary" style="background-color: #3b5998;" href="#!" role="button"
                          ><i class="fab fa-facebook-f"></i
                        ></a>

                        <!-- Twitter -->
                        <a class="btn btn-primary" style="background-color: #55acee;" href="#!" role="button"
                          ><i class="fab fa-twitter"></i
                        ></a>

                        <!-- Google -->
                        <a class="btn btn-primary" style="background-color: #dd4b39;" href="#!" role="button"
                          ><i class="fab fa-google"></i
                        ></a>

                        <!-- Instagram -->
                        <a class="btn btn-primary" style="background-color: #ac2bac;" href="#!" role="button"
                          ><i class="fab fa-instagram"></i
                        ></a>

                        <!-- Linkedin -->
                        <a class="btn btn-primary" style="background-color: #0082ca;" href="#!" role="button"
                          ><i class="fab fa-linkedin-in"></i
                        ></a>

                        <!-- Pinterest -->
                        <a class="btn btn-primary" style="background-color: #c61118;" href="#!" role="button"
                          ><i class="fab fa-pinterest"></i
                        ></a>

                        <!-- Vkontakte -->
                        <a class="btn btn-primary" style="background-color: #4c75a3;" href="#!" role="button"
                          ><i class="fab fa-vk"></i
                        ></a>

                        <!-- Stack overflow -->
                        <a class="btn btn-primary" style="background-color: #ffac44;" href="#!" role="button"
                          ><i class="fab fa-stack-overflow"></i
                        ></a>

                        <!-- Youtube -->
                        <a class="btn btn-primary" style="background-color: #ed302f;" href="#!" role="button"
                          ><i class="fab fa-youtube"></i
                        ></a>

                        <!-- Slack -->
                        <a class="btn btn-primary" style="background-color: #481449;" href="#!" role="button"
                          ><i class="fab fa-slack-hash"></i
                        ></a>

                        <!-- Github -->
                        <a class="btn btn-primary" style="background-color: #333333;" href="#!" role="button"
                          ><i class="fab fa-github"></i
                        ></a>

                        <!-- Dribbble -->
                        <a class="btn btn-primary" style="background-color: #ec4a89;" href="#!" role="button"
                          ><i class="fab fa-dribbble"></i
                        ></a>

                        <!-- Reddit -->
                        <a class="btn btn-primary" style="background-color: #ff4500;" href="#!" role="button"
                          ><i class="fab fa-reddit-alien"></i
                        ></a>

                        <!-- Whatsapp -->
                        <a class="btn btn-primary" style="background-color: #25d366;" href="#!" role="button"
                          ><i class="fab fa-whatsapp"></i
                        ></a>
                    </div> 
                </div>
            </footerclass>    
        </div>
    </form>
</body>
</html>
