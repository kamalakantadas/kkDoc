<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="blogsFirst.aspx.cs" Inherits="QuickAI.blogs._1.blogsFirst" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>blogsFirst</title>
    <link href="../../IndexPage.css" rel="stylesheet" />  
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.1/moment.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />   
    <script src="../../Scripts/changeplan.js"></script>
</head>
<body>
    <form id="firstBlogNested" runat="server">
        <div class="container-fluid">
            <%-- Header of First Blogs --%>
            <div id="dHeader">
                <%-- Original Header --%>
                <nav class="row navbar navbar-expand-lg navbar-light fixed-top" id="headerBar" style="box-shadow: 2px 2px 5px grey; height: 90px; border-style: ridge; z-index: 999; background-color: white;">
                    <div class="col-lg-3 col-md-4 col-sm-4" style="width: 24.99%">
                        <a class="navbar-brand" href="../../Index.aspx" style="margin-bottom: 50px; overflow: hidden;">
                            <img src="../../Images/1149945428.png" style="position: fixed; max-width: 100%; margin-bottom: 30px; padding-left: 35px; padding-right: 35px; overflow: hidden;" />
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
                                <asp:Image runat="server" ID="userImage" src="../../Images/userIcon.jpg" Style="height: 30px" onmouseover="viewText()" onmouseout="hideText()" alt="" class="hover-text" />
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
            <%-- Body of First Blogs --%>
            <div id="blogsBody">
                <div class="container-fluid">
                    <%-- Bank Deposit --%>
                    <div id="firstBlogs" style="margin-top: 95px;">
                        <div class="row" style="margin-left: 150px; margin-right: 150px">                            
                            <div class="col-lg-12 col-md-12 col-sm-12" style="">
                                <div class="row pb-10">
                                    <div class="col-lg-6">
                                        <h3>Blogs</h3>
                                        <div class="row">First Blog by Admin</div>                                       
                                    </div>
                                    <div class="col-lg-6">
                                        <ul style="display: inline-flex; float: right">
                                            <li><a href="../../Index.aspx">Home</a></li>                                           
                                            <li><a href="../blogs.aspx">Blogs</a></li>                              
                                        </ul>
                                    </div>
                                </div>
                                <div class="row" style="padding-top:30px;">
                                    <div class="col-lg-8" style="box-shadow: 2px 2px 5px grey">
                                        <div style="padding-left:70px;padding-right:100px;background-color:#f2f2f2">
                                            <img src="../../Images/picDemo.jfif" style="height:450px;width:500px"/>
                                        </div>
                                        <div style="background-color:white;padding-top:20px">
                                            <div id="blogSection">
                                                <h3 class="active">First Blogs</h3>
                                                <div class="form-group">
                                                    <asp:Button ID="dbDate" runat="server" class="btn btn-secondary" disabled Text="20 May 2022" />
                                                    <asp:Button ID="dbFolder" runat="server" class="btn btn-secondary" disabled Text="icon" />
                                                </div>
                                                <div>
                                                    <p>Frank knew there was a correct time and place to reveal his secret and this wasn't it. The issue was that the secret might be revealed despite his best attempt to keep it from coming out. At this point, it was out of his control and completely dependant on those around him who also knew the secret. They wouldn't purposely reveal it, or at least he believed that, but they could easily inadvertently expose it. It was going to be a long hour as he nervously eyed everyone around the table hoping they would keep their mouths shut.</p>
                                                </div>
                                                <div style="padding-top: 15px; padding-bottom: 15px;">
                                                    Tags:<asp:HyperLink ID="travelForFun" runat="server" Text="Travel Fun Love" NavigateUrl="blogs.aspx?s='travel fun'"></asp:HyperLink>
                                                </div>
                                                <div>
                                                    <i class="icon-feather-share-2"></i>
                                                    Interesting?<asp:HyperLink ID="shareIt" runat="server" Text="Travel Fun Love" NavigateUrl="blogs.aspx?s='travel fun'"></asp:HyperLink>
                                                </div>
                                            </div>                                            
                                        </div>
                                    </div>
                                    <div class="col-lg-4" style="padding-left: 30px;">
                                        <div class="form-group">                                           
                                            <asp:TextBox runat="server" ID="sBoxInBlogs" class="form-control" style="width:280px;height:40px;"></asp:TextBox>                                            
                                        </div>
                                        <div class="row">
                                            <h4>Recent Blogs</h4>
                                        </div>
                                        <div class="row pb-5">
                                            <div class="col-sm-6">                                                
                                                <img src="../../Images/picDemo.jfif" style="height:100px;width:100px;padding:10px;background: #f2f2f2;"/>
                                            </div>
                                            <div class="col-sm-6">
                                                <div class="row">
                                                    First Blog
                                                </div>
                                                <div class="row">
                                                    <%-- Time Duration of the blog --%>
                                                    <div id="blogsTimeId">
                                                       3 years Ago
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row pt-5 pb-5">
                                            <h3>Catergories</h3>
                                        </div>
                                        <div class="row pt-10 pb-10">
                                            Testimonials
                                        </div>
                                        <div class="row">
                                           <%-- Sliding Start --%>
                                            <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                                                <ol class="carousel-indicators">
                                                    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                                                    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                                                    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                                                </ol>
                                                <div class="carousel-inner">
                                                    <div class="carousel-item active">
                                                        <%--<img class="d-block w-100" src="Images/Email.png" alt="First slide">--%>
                                                        <div style="height: 300px; width: 400px; box-shadow: 2px 2px 5px grey; background: bisque;">
                                                            <div style="align-content: center; padding-top: 20px">
                                                                <div class="row">
                                                                    <img src="../../Images/Image%20ICON.png" style="height: 30px; padding-left: 180px;" />
                                                                </div>
                                                                <div class="row" style="padding-left: 170px">
                                                                    Ashis
                                                                </div>
                                                                <div class="row">
                                                                    <asp:Button ID="t1" runat="server" Text="Designer" class="btn btn-primary" Style="width: 150px; margin-left: 120px;" />
                                                                </div>
                                                                <div class="text-container" style="padding-top: 20px; max-width: 500px;">
                                                                    <p style="white-space:initial">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vitae dolor sed urna placerat tincidunt. Aliquam eget metus auctor, congue massa in, aliquet tellus.</p>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="carousel-item">
                                                        <%--<img class="d-block w-100" src="Images/home-hero-icon%20(1).png" alt="Second slide">--%>
                                                        <div style="height: 300px; width: 400px; box-shadow: 2px 2px 5px grey; background: bisque;">
                                                            <div style="align-content: center; padding-top: 20px">
                                                                <div class="row">
                                                                    <img src="../../Images/Image%20ICON.png" style="height: 30px; padding-left: 180px;" />
                                                                </div>
                                                                <div class="row" style="padding-left: 170px">
                                                                    Akansha
                                                                </div>
                                                                <div class="row">
                                                                    <asp:Button ID="t2" runat="server" Text="Designer" class="btn btn-primary" Style="width: 150px; margin-left: 120px;" />
                                                                </div>
                                                                <div class="text-container" style="padding-top: 20px; max-width: 500px;">
                                                                    <p style="white-space:initial">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vitae dolor sed urna placerat tincidunt. Aliquam eget metus auctor, congue massa in, aliquet tellus.</p>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="carousel-item">
                                                        <%--<img class="d-block w-100" src="Images/userIcon.jpg" alt="Third slide">--%>
                                                        <div style="height: 300px; width: 400px; box-shadow: 2px 2px 5px grey; background: bisque;">
                                                            <div style="align-content: center; padding-top: 20px">
                                                                <div class="row">
                                                                    <img src="../../Images/Image%20ICON.png" style="height: 30px; padding-left: 180px;" />
                                                                </div>
                                                                <div class="row" style="padding-left: 170px">
                                                                    Rohini
                                                                </div>
                                                                <div class="row">
                                                                    <asp:Button ID="t3" runat="server" Text="Designer" class="btn btn-primary" Style="width: 150px; margin-left: 120px;" />
                                                                </div>
                                                                <div class="text-container" style="padding-top: 20px; max-width: 500px;">
                                                                    <p style="white-space:initial">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vitae dolor sed urna placerat tincidunt. Aliquam eget metus auctor, congue massa in, aliquet tellus.</p>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <%--<a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev" style="background: black;">
                                                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                                    <span class="sr-only">Previous</span>
                                                </a>
                                                <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next" style="background: black;">
                                                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                                    <span class="sr-only">Next</span>
                                                </a>--%>
                                            </div>
                                           <%-- Sliding End --%>
                                        </div>
                                        <div class="row pt-20" style="padding-top:20px;padding-bottom:15px">
                                            <h3>Tags</h3>
                                        </div>
                                        <div class="row" style="padding-bottom:20px;">
                                            <div class="form-group">
                                                <asp:Button runat="server" onclick="travelFand" ID="travelFan" Text="Travel fan" class="btn btn-secondary"/>
                                                <asp:Button runat="server" onclick="loved" ID="love" Text="love" class="btn btn-secondary"/>
                                            </div>
                                        </div>
                                        <div class="row">
                                            Social Profiles
                                        </div>
                                        <div class="row">
                                            <a class="btn btn-primary" style="background-color: #3b5998;" href="#!" role="button"><i class="fab fa-facebook-f"></i></a>

                                            <!-- Twitter -->
                                            <a class="btn btn-primary" style="background-color: #55acee;" href="#!" role="button"><i class="fab fa-twitter"></i></a>

                                            <!-- Google -->
                                            <a class="btn btn-primary" style="background-color: #dd4b39;" href="#!" role="button"><i class="fab fa-google"></i></a>

                                            <!-- Instagram -->
                                            <a class="btn btn-primary" style="background-color: #ac2bac;" href="#!" role="button"><i class="fab fa-instagram"></i></a>
                                        </div>
                                    </div>
                                </div>
                                <%-- Comment Section start --%>
                                <div class="row">
                                    <div class="col-lg-8" style="box-shadow: 2px 2px 5px grey;margin-top:10px;">
                                        <div>
                                            <p>Comments: <span id="commentCount" runat="server"></span></p>                                           
                                           <div id="myContainer" runat="server">

                                           </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-4"></div>
                                </div>
                                <%-- Comment Section end --%>
                                <%-- Post Comment Section start --%>
                                <div class="row">
                                    <div class="col-lg-8" style="box-shadow: 2px 2px 5px grey;margin-top:10px">
                                        <div class="row" style="padding-top:20px;padding-left:15px;padding-bottom:20px;">
                                            <h3>Post a Comment</h3>
                                        </div>
                                        <div class="row" style="padding-bottom:10px;padding-left:15px">
                                            you are commenting as: <p id="userName" runat="server"></p>
                                        </div>
                                        <div id="cmntBox" style="padding-top:10px;padding-left:10px">
                                            <%--<asp:TextBox ID="userComment" runat="server" style="height:240px;width:600px;"> </asp:TextBox>--%>
                                            <asp:TextBox ID="userComment" runat="server" TextMode="MultiLine" Rows="5" Columns="50" style="height:240px;width:600px;"></asp:TextBox>

                                        </div>
                                        <div id="form-group" style="padding-top:20px">
                                            <asp:Button ID="cmntPost" runat="server" onclick="saveComment" class="btn btn-primary" Text="Submit" style="Width:150px;margin-bottom:20px"/>
                                        </div>
                                    </div>
                                    <div class="col-lg-4"></div>
                                </div>
                                <%-- Post Comment Section end --%>
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
                                    <img src="../../Images/1149945428.png" />
                                </div>
                                <p>Aenean sodales mattis augue. Morbi euismod, felis at volutpat volutpat, quam lectus porttitor massa, tur ex a neque pulvinar pulvinar.</p>

                            </div>
                            <div class="col-md-2">
                                <div class="footer-links">
                                    <h3>My Account</h3>
                                    <ul>
                                        <li><a href="../../Login.aspx">Login</a></li>                                
                                        <li><a href="../../Register.aspx">Register</a></li>                                     
                                    </ul>
                                </div>
                            </div>
                            <div class="col-md-2">
                                <div class="footer-links">
                                    <h3>Helpful Links</h3>
                                    <ul>
                                        <li><a href="../blogs.aspx">Blog</a></li>
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
                                        <li><a href="../../Testimonials.aspx">Testimonials</a></li>                                       
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
