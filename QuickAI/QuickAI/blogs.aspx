<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="blogs.aspx.cs" Inherits="QuickAI.blogs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Blogs</title>      
    <link href="../IndexPage.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>   
    <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.1/moment.min.js"></script>
    <script src="../Scripts/changeplan.js"></script>
</head>
<body>
    <form id="blogs" runat="server">
        <div class="container-fluid">
            <div id="dHeader">             
                <%-- Original Header --%>
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
                                <asp:Image runat="server" ID="userImage" src="../Images/userIcon.jpg" Style="height: 30px" onmouseover="viewText()" onmouseout="hideText()" alt="" class="hover-text" />
                                <asp:TextBox ID="viewImage" Style="display: none; width: 100px;" runat="server" value=""></asp:TextBox>
                            </a>
                            <div class="dropdown-menu" aria-labelledby="userDropDownList">
                                <a class="dropdown-item" href="dashboard.aspx">Dashboard</a>
                                <a class="dropdown-item" href="#">Templates</a>
                                <a class="dropdown-item" href="#">AI Images</a>
                                <a class="dropdown-item" href="#">AI Chat</a>
                                <a class="dropdown-item" href="#">Speech to Text</a>
                                <a class="dropdown-item" href="#">AI Code</a>
                                <a class="dropdown-item" href="#">All Documents</a>
                                <a class="dropdown-item" href="#">Membership</a>
                                <a class="dropdown-item" href="accountSetting.aspx">Account Setting</a>
                                <a class="dropdown-item" href="#">Logout</a>
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
            <%-- Blogs body --%>
            <div id="blogsBody">
                <div class="container-fluid">
                    <%-- Bank Deposit --%>
                    <div id="bankDeposit" style="margin-top: 95px;">
                        <div class="row" style="margin-left: 150px; margin-right: 150px">                            
                            <div class="col-lg-12 col-md-12 col-sm-12" style="">
                                <div class="row pb-10">
                                    <div class="col-lg-6">
                                        <h3>Blogs</h3>
                                        <div class="row">Recent Blogs</div>
                                    </div>
                                    <div class="col-lg-6">
                                        <ul style="display: inline-flex; float: right">
                                            <li><a href="../Index.aspx">Home</a></li>
                                            <li><a href="blogs.aspx">Blogs</a></li>
                                        </ul>
                                    </div>
                                </div>
                                <%-- content --%>
                                <div class="row" style="margin-top:30px;background:#f2f2f2;padding-top:50px">
                                    <div class="col-md-8">Recent Blog</div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <asp:TextBox ID="searchBlog" runat="server" Text="Search..." class="form-control" style="height:40px;width:300px;"></asp:TextBox>
                                        </div>                                    
                                    </div>
                                </div>
                                <div class="row" style="background:#f2f2f2;">                                    
                                    <div class="col-lg-8">
                                        <a href="#" >
                                            <div id="blogImage" style="width:100%;height:200px;background-color:white;display:flex">
                                            <img src="Images/picDemo.jfif" style="height:100%"/>
                                                <div id="blogImageData">
                                                    <span id="blogSpotDate">3 years ago</span>
                                                    <h3>First Blog</h3>
                                                    <p>abcdefghijklmnopqrstuvwxyz</p>
                                                </div>
                                            </div>                                            
                                        </a>                                                                                
                                    </div>
                                    <div class="col-lg-4">
                                        <div style="padding-top:20px">
                                            Categories
                                        </div>
                                        <div style="padding-top:20px;padding-bottom:20px">
                                            Testimonials
                                        </div>
                                        <div id="testimonialsResult" style="height:300px;background-color:darkgray;padding-bottom:30px"></div>
                                        <div style="padding-top:20px;padding-bottom:20px;">
                                            Tags
                                        </div>
                                        <div class="form-control" style="background-color:darkgray;padding-bottom:20px">
                                            <asp:Button runat="server" ID="travelFun" class="btn btn-secondary" Text="travelfun"/>
                                            <asp:Button runat="server" ID="love" class="btn btn-secondary" Text="love"/>
                                        </div>
                                        <%-- Social Profile --%>
                                        <div class="row py-3 text-black full-width" style="padding-left:15px;">
                                            <div class="row" style="padding-left: 15px;">
                                                Social Profiles
                                            </div>
                                            <div class="col-md-12">
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

                                             </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <%-- Footer --%>
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
                                        <li><a href="#">Blog</a></li>
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
                                        <li><a href="#">Testimonials</a></li>
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
