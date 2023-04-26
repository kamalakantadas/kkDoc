<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="QuickAI.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>My Responsive Page</title>
    <link href="IndexPage.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>    
</head>
<body>
     <!--Home Page Content-->
    <div class="container-fluid">
        <form runat="server">
            <div id="mainPage">                
                <nav class="row navbar navbar-expand-lg navbar-dark bg-dark fixed-top">                    
                    <div class="col-lg-2" style="width:8.33%">
                        <a class="navbar-brand" href="#">
                            <h1>QUICKAI</h1>
                        </a>
                    </div>
                    <div class="col-lg-7" style="width:58.31%">

                    </div>
                    <div class="col-lg-1" style="width:8.33%">
                        <asp:Button runat="server" type="button" class="btn btn-primary btn-lg btn-block header-widget" id="joinbutton" Text="JOIN" OnClick="joinbutton_Click" />
                    </div>
                    <div class="col-lg-1" style="width:8.33%">
                        <div class="col-lg-1">
                            <div class="dropdown">
                                <asp:Button runat="server" class="btn btn-secondary btn-primary btn-lg dropdown-toggle" type="button" id="dropdownMenu2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"
                                    Text="Language"/>                            
                                <div class="dropdown-menu" aria-labelledby="Lang">
                                    <asp:Button runat="server" class="dropdown-item" type="button" Text="English"/>
                                    <asp:Button runat="server" class="dropdown-item" type="button" Text="Hindi"/>
                                    <asp:Button runat="server" class="dropdown-item" type="button" Text="Odia"/>
                                    <asp:Button runat="server" class="dropdown-item" type="button" Text="Tamil"/>
                                    <asp:Button runat="server" class="dropdown-item" type="button" Text="Tamil"/>
                                    <asp:Button runat="server" class="dropdown-item" type="button" Text="Tamil"/>
                                    <asp:Button runat="server" class="dropdown-item" type="button" Text="Tamil"/>
                                    <asp:Button runat="server" class="dropdown-item" type="button" Text="Tamil"/>
                                    <asp:Button runat="server" class="dropdown-item" type="button" Text="Tamil"/>
                                    <asp:Button runat="server" class="dropdown-item" type="button" Text="Tamil"/>
                                    <asp:Button runat="server" class="dropdown-item" type="button" Text="Tamil"/>
                                    <asp:Button runat="server" class="dropdown-item" type="button" Text="Tamil"/>
                                    <asp:Button runat="server" class="dropdown-item" type="button" Text="Tamil"/>
                                    <asp:Button runat="server" class="dropdown-item" type="button" Text="Tamil"/>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-1" style="width:8.33%"></div>
                    <%-- <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                                <span class="navbar-toggler-icon"></span>
                         </button>
                         <div class="collapse navbar-collapse" id="navbarNav">
                             <ul class="navbar-nav">
                             </ul>
                         </div>--%>
                </nav>
                <div class="full-page" style="width: 100%;height: 100%;">
                     <nav class="row navbar navbar-expand-lg" style="margin-top:80px;">
                    <div class="row" style="width:100%;">
                        
                        <div class="col-md-12" style="padding-top:100px">
                            <center>
                                <img src="Images/home-hero-icon%20(1).png" style="width:180px;height:180px" />
                                <h1 class="margin-bottom-10 text_gradient_animation">
                                    <strong>Best AI Content Writer</strong>
                                </h1>                               
                                <p class="lead">Create SEO-optimized and unique content for your blogs, ads, emails, and website 10X faster & save hours of work.</p>
                               
                                <asp:LinkButton ID="startedFreeReg" runat="server" href="Register.aspx" Text="Get Started For Free" class="btn btn-primary" style="background-color:#184698;border-radius: 4px;box-shadow:0 4px 12px;color: #fff" />                                 
                                <h6> No credit card required</h6>
                            </center>              
                        </div>
                                                   
                    </div>
                </nav>
                </div>   
                <nav class="row navbar navbar-expand-lg" style="padding-top:100px"></nav>
                <nav class="row navbar navbar-expand-lg">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-4 col-md-6 col-sm-12">                            
                            <h1>Select a template</h1>
                            <p>Choose a content creation template. Multiple templates are available for your all needs.</p>
                        </div>
                        <div class="col-lg-4 col-md-6 col-sm-12">
                            <h1>Fill the form</h1>
                            <p>Enter a detailed description of your content. Tell the AI what do you want.</p>                            
                        </div>
                        <div class="col-lg-4 col-md-6 col-sm-12">
                            <h1>Get your content</h1>
                            <p>Get a unique high quality content. The content is plagiarism free and you can use it anywhere.</p>
                        </div>
                    </div>
                </div>
            </nav>
               
                <nav class="row navbar navbar-expand-lg" style="padding-top:200px"></nav>
                <div class="row">
                <div class="col-md-12 copy">
                    <p class="text-center">  </p>
                </div>
            </div>
                <%-- Footer Design By KK row navbar navbar-expand-lg navbar-dark bg-dark--%>
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
                                    <li><a href="Login.aspx">Login</a></li><li><a href="Register.aspx">Register</a></li>                        </ul>
                            </div>
                        </div>
                        <div class="col-md-2">
                            <div class="footer-links">
                                <h3>Helpful Links</h3>
                                <ul>
                                    <li><a href="#">Blog</a></li>                            <li><a href="#">Feedback</a></li>
                                    <li><a href="#">Contact</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-md-2">
                            <div class="footer-links">
                                <h3>Information</h3>
                                <ul>
                                    <li><a href="#">FAQ</a></li>
                                    <li><a href="#">Testimonials</a></li>                        </ul>
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
            </div>
        </form>        
    </div>    
</body>
</html>
