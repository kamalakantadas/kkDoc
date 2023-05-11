<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="QuickAI.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Index Page</title>
    <link href="IndexPage.css" rel="stylesheet" />    
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>    
    <script src="Scripts/Index.js"></script>
</head>
<body>
     <!--Home Page Content-->
    <div class="container-fluid">
        <form runat="server">
            <div id="mainPage">
                <div id="IndexHeader">
                    <div class="container" id="emailBar" style="height:50px; display:none">
                        <div class="row">
                            <div class="col-lg-8">
                                <p class="text-left">Your Email Address is not verified. Please Verify your email address to use all the feature.</p>
                            </div>
                            <div class="col-lg-2">
                                <div class="form-group">
                                    <asp:TextBox runat="server" ID="verifyEmailBox" class="form-control"></asp:TextBox>
                                </div>                                
                            </div>
                            <div class="col-lg-2">
                                <asp:Button class="btn btn-primary" runat="server" ID="verfiyEmailBtn" Text="VerifyEmail" />
                            </div>
                        </div>
                    </div>
                   <%-- //Email verify Bar
                    //Header Page--%>
                    <nav class="row navbar navbar-expand-lg navbar-light fixed-top" id="headerBar" style="box-shadow: 2px 2px 5px grey;z-index:999;background-color:white;">
                        <div class="row" style="width:100%;height:50px;"></div>
                        <div class="row" style="width:100%;">

                        </div>
                        <div class="col-lg-2" style="width: 8.33%">
                            <a class="navbar-brand" href="Index.aspx">
                                <h1>QUICKAI</h1>
                            </a>
                        </div>
                        <div class="col-lg-7" style="width: 58.31%">
                        </div>
                        <div class="col-lg-1" style="width: 8.33%">
                            <asp:Button runat="server" type="button" class="btn btn-primary btn-lg btn-block header-widget" ID="joinbutton" Text="JOIN" OnClick="joinbutton_Click" />
                        </div>
                        <div class="col-lg-1" style="width: 8.33%">
                            <div class="dropdown">
                                <asp:Button runat="server" class="btn btn-secondary btn-primary btn-lg dropdown-toggle" type="button" ID="dropdownMenu2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"
                                    Text="Language" />
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
                        <div class="col-lg-1" style="width: 8.33%"></div>
                        <%-- <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                                <span class="navbar-toggler-icon"></span>
                         </button>
                         <div class="collapse navbar-collapse" id="navbarNav">
                             <ul class="navbar-nav">
                             </ul>
                         </div>--%>
                    </nav>
                </div>
                <div id="IndexBody" style="z-index:99">
                    <nav class="row navbar navbar-expand-lg" style="margin-top: 80px;">
                        <div class="row" style="width: 100%;">
                            <%--<div class="row-fluid">--%>
                            <div class="col-md-12" style="padding-top: 50px">
                                <center>
                                    <img src="Images/home-hero-icon%20(1).png" style="width: 280px; height: 280px;" />
                                    <h1 class="margin-bottom-10 text_gradient_animation">
                                        <strong>Best AI Content Writer</strong>
                                    </h1>
                                    <p class="lead">Create SEO-optimized and unique content for your blogs, ads, emails, and website 10X faster & save hours of work.</p>

                                    <asp:LinkButton ID="startedFreeReg" runat="server" href="Register.aspx" Text="Get Started For Free" class="btn btn-primary" Style="background-color: #184698; border-radius: 4px; box-shadow: 0 4px 12px; color: #fff" />
                                    <h6>No credit card required</h6>
                                </center>
                            </div>
                        </div>
                    </nav>
                    <nav class="row navbar navbar-expand-lg" style="padding-top: 100px"></nav>
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

                    <nav class="row navbar navbar-expand-lg" style="padding-top: 200px"></nav>
                    <div class="row">
                        <div class="col-md-12 copy">
                            <p class="text-center"></p>
                        </div>
                    </div>
                    <hr />
                    <%-- Membership Plan --%>
                     <%-- Change Plan Stuff --%>
                    <div id="changePlan">
                        <div class="row" style="margin-top: 10px">
                            <div class="col-lg-12" style="padding-left: 150px; padding-right: 150px">
                                <div class="align-content-center" style="text-align: center;">
                                    <h3>Membership</h3>
                                </div>
                                <div class="row">
                                    <div class="col-lg-6">                                        
                                    </div>
                                    <div class="col-lg-6">
                                        <ul style="display: inline-flex; float: right">
                                            <li><a href="../Index.aspx">Home</a></li>
                                            <li><a href="membership/membership.aspx">Membersip Plan</a></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="row" style="text-align: center; display: inline-flex; width: 100%">
                                    <div class="col-md-3"></div>
                                    <div class="col-md-6">
                                        <asp:RadioButtonList ID="timePeriod" runat="server" RepeatLayout="Flow" RepeatDirection="Horizontal">
                                            <asp:ListItem Text="Monthly" runat="server" GroupName="rd" Value="1" id="monthly" checked="true"></asp:ListItem>
                                            <asp:ListItem Text="Yearly" runat="server" GroupName="rd" Value="2" id="yearly"></asp:ListItem>
                                            <asp:ListItem Text="Lifetime" runat="server" GroupName="rd" Value="3" id="Lifetime"></asp:ListItem>
                                        </asp:RadioButtonList>


                                        <%-- <asp:RadioButton value="mbtn" name ="timeDuration" runat="server" Text="Monthly" />  
                               
                               <asp:RadioButton value="ybtn" name ="timeDuration" runat="server" Text="Yearly"/>  
                               
                               <asp:RadioButton value="lbtn" name ="timeDuration" runat="server" Text="Lifetime" />  --%>
                                    </div>
                                    <div class="col-md-3"></div>

                                </div>
                                <%-- Plan Scheme duration --%>
                                <div class="row" style="background-color: white; margin-top: 40px; box-shadow: 2px 2px 5px grey; padding-top: 50px">
                                    <%-- Free Trial --%>
                                    <div class="col-lg-4">
                                        <p class="font-weight-normal">Membership Plan</p>
                                        <div id="frp" style="height: 70px; width: 100%; background-color: lightgrey; padding-top: 20px; padding-bottom: 20px">
                                            <p class="font-weight-normal" style="text-align: center">Free</p>
                                        </div>
                                        <%--  --%>
                                        <div class="pricing-plan-features">
                                            <strong>Features of&nbsp;Free Plan</strong>
                                            <ul>
                                                <li>
                                                    <strong>32</strong> AI Document Templates</li>
                                                <li>
                                                    <strong>10,000</strong> Words per month</li>
                                                <li>
                                                    <strong>100</strong> Images per month </li>
                                                <li>
                                                    <strong>0</strong> Speech to Text per month
                                            <i class="icon-feather-help-circle margin-left-2"
                                                data-tippy-placement="top"
                                                title="Create audio transcription"></i>
                                                </li>
                                                <li>
                                                    <strong>0 MB</strong> Audio file size limit
                                                </li>
                                                <li>
                                                    <span class="icon-text no">
                                                        <i
                                                            class="icon-feather-x-circle margin-right-2"></i>
                                                    </span>
                                                    AI Chat                                                
                                            <i class="icon-feather-help-circle margin-left-2"
                                                data-tippy-placement="top"
                                                title="Chat with the AI bot"></i>
                                                </li>
                                                <li>
                                                    <span class="icon-text no">
                                                        <i class="icon-feather-x-circle margin-right-2"></i>
                                                    </span>
                                                    AI Code                                                
                                            <i class="icon-feather-help-circle margin-left-2"
                                                data-tippy-placement="top"
                                                title="Generate code of any programming language with the AI"></i>
                                                </li>
                                                <li>
                                                    <span class="icon-text yes"><i
                                                        class="icon-feather-check-circle margin-right-2"></i>
                                                    </span>
                                                    Hide Ads
                                                </li>
                                                <li><span class="icon-text no"><i class="icon-feather-x-circle margin-right-2"></i></span>Free Setup</li>
                                                <li><span class="icon-text no"><i class="icon-feather-x-circle margin-right-2"></i></span>Free Support</li>
                                            </ul>
                                        </div>
                                        <div class="from-group" style="height: 50px; margin-bottom: 20px">
                                            <asp:Button runat="server" ID="freePlan" OnClick="upgradeMembership" Text="Upgrade" class="btn btn-primary form-control" />
                                        </div>
                                    </div>

                                    <%-- Trial Plan --%>
                                    <div class="col-lg-4">
                                        <p class="font-weight-normal">Trial Plan</p>
                                        <div id="trp" style="height: 70px; width: 100%; background-color: lightgrey; padding-top: 20px; padding-bottom: 20px">
                                            <p class="font-weight-normal" style="text-align: center">Trial</p>
                                        </div>
                                        <%--  --%>
                                        <div class="pricing-plan-features">
                                            <strong>Features of&nbsp;Trial Plan</strong>
                                            <ul>
                                                <li>
                                                    <strong>61</strong> AI Document Templates                                        </li>
                                                <li>
                                                    <strong>50,000</strong> Words per month                                        </li>
                                                <li>
                                                    <strong>500</strong> Images per month                                            </li>
                                                <li>
                                                    <strong>0</strong> Speech to Text per month                                                <i class="icon-feather-help-circle margin-left-2"
                                                        data-tippy-placement="top"
                                                        title="Create audio transcription"></i></li>
                                                <li>
                                                    <strong>0 MB</strong> Audio file size limit                                            </li>
                                                <li>
                                                    <span class="icon-text no"><i
                                                        class="icon-feather-x-circle margin-right-2"></i></span>
                                                    AI Chat                                                <i class="icon-feather-help-circle margin-left-2"
                                                        data-tippy-placement="top"
                                                        title="Chat with the AI bot"></i>
                                                </li>
                                                <li>
                                                    <span class="icon-text no"><i
                                                        class="icon-feather-x-circle margin-right-2"></i></span>
                                                    AI Code                                                <i class="icon-feather-help-circle margin-left-2"
                                                        data-tippy-placement="top"
                                                        title="Generate code of any programming language with the AI"></i>
                                                </li>
                                                <li>
                                                    <span class="icon-text yes"><i
                                                        class="icon-feather-check-circle margin-right-2"></i></span>
                                                    Hide Ads                                        </li>
                                                <li><span class="icon-text no"><i class="icon-feather-x-circle margin-right-2"></i></span>Free Setup</li>
                                                <li><span class="icon-text no"><i class="icon-feather-x-circle margin-right-2"></i></span>Free Support</li>
                                            </ul>
                                        </div>
                                        <div class="from-group" style="height: 50px; margin-bottom: 20px">
                                            <asp:Button runat="server" ID="cPlan" Text="CurrentPlan" class="btn btn-primary form-control" />
                                        </div>
                                    </div>


                                    <%-- Extended plan --%>
                                    <div class="col-lg-4">
                                        <p class="font-weight-normal">Extended Plan</p>
                                        <div id="ltp" style="height: 70px; width: 100%; background-color: lightgrey; padding-top: 20px; padding-bottom: 20px">
                                            <asp:TextBox runat="server" class="font-weight-normal" Style="text-align: center;" ID="chPara"></asp:TextBox>
                                            <p id="chParaText"></p>
                                        </div>
                                        <%--  --%>
                                        <div class="pricing-plan-features">
                                            <strong>Features of&nbsp;Extended Plan</strong>
                                            <ul>
                                                <li>
                                                    <strong>61</strong> AI Document Templates                                        </li>
                                                <li>
                                                    <strong>100,000</strong> Words per month                                        </li>
                                                <li>
                                                    <strong>1,000</strong> Images per month                                            </li>
                                                <li>
                                                    <strong>0</strong> Speech to Text per month                                                <i class="icon-feather-help-circle margin-left-2"
                                                        data-tippy-placement="top"
                                                        title="Create audio transcription"></i></li>
                                                <li>
                                                    <strong>0 MB</strong> Audio file size limit                                            </li>
                                                <li>
                                                    <span class="icon-text no"><i
                                                        class="icon-feather-x-circle margin-right-2"></i></span>
                                                    AI Chat                                                <i class="icon-feather-help-circle margin-left-2"
                                                        data-tippy-placement="top"
                                                        title="Chat with the AI bot"></i>
                                                </li>
                                                <li>
                                                    <span class="icon-text no"><i
                                                        class="icon-feather-x-circle margin-right-2"></i></span>
                                                    AI Code                                                <i class="icon-feather-help-circle margin-left-2"
                                                        data-tippy-placement="top"
                                                        title="Generate code of any programming language with the AI"></i>
                                                </li>
                                                <li>
                                                    <span class="icon-text yes"><i
                                                        class="icon-feather-check-circle margin-right-2"></i></span>
                                                    Hide Ads                                        </li>
                                                <li><span class="icon-text yes"><i class="icon-feather-check-circle margin-right-2"></i></span>Free Setup</li>
                                                <li><span class="icon-text yes"><i class="icon-feather-check-circle margin-right-2"></i></span>Free Support</li>
                                            </ul>
                                        </div>
                                        <div class="from-group" style="height: 50px; margin-bottom: 20px">
                                            <asp:Button runat="server" ID="up" OnClick="showBillAndSendDataToBankDepositForm" Text="Upgrade" class="btn btn-primary form-control" />
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                    <hr />
                    <%-- Testimonials --%>
                    <div id="testimonial" style="margin-top:10px">
                        <div class="row">
                            <div class="col-lg-12" style="padding-left: 150px; padding-right: 150px;padding-bottom:95px">
                               <div class="align-content-center" style="text-align: center;">
                                   <h3>Testimonials</h3>
                               </div>
                               <%-- Carousel sliding start --%>
                                <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                                    <ol class="carousel-indicators">
                                        <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                                        <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                                        <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                                    </ol>
                                    <div class="carousel-inner">
                                        <div class="carousel-item active" >
                                            <%--<img class="d-block w-100" src="Images/Email.png" alt="First slide">--%>
                                            <div style="height:300px;width:400px;box-shadow: 2px 2px 5px grey;background: bisque;margin-left:300px" >
                                                <div style="align-content: center;padding-top:20px">
                                                    <div class="row">
                                                        <img src="Images/Image%20ICON.png" style="height: 30px;padding-left: 180px;" />
                                                    </div>
                                                    <div class="row" style="padding-left:170px">
                                                        Ashis
                                                    </div>
                                                    <div class="row">
                                                        <asp:Button ID="t1" runat="server" Text="Designer" class="btn btn-primary" Style="width: 150px;margin-left: 120px;" />
                                                    </div>                                                
                                                    <div class="text-container" style="padding-top:20px">
                                                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vitae dolor sed urna placerat tincidunt. Aliquam eget metus auctor, congue massa in, aliquet tellus.</p>
                                                    </div>

                                                </div>                                                
                                            </div>                                            
                                        </div>
                                        <div class="carousel-item">
                                            <%--<img class="d-block w-100" src="Images/home-hero-icon%20(1).png" alt="Second slide">--%>
                                            <div style="height:300px;width:400px;box-shadow: 2px 2px 5px grey;background: bisque;margin-left:300px">
                                                <div style="align-content: center;padding-top:20px">
                                                    <div class="row"><img src="Images/Image%20ICON.png" style="height: 30px; padding-left: 180px;" /></div>
                                                    <div class="row" style="padding-left:170px">
                                                        Akansha
                                                    </div>
                                                    <div class="row">
                                                        <asp:Button ID="t2" runat="server" Text="Designer" class="btn btn-primary" Style="width: 150px;margin-left: 120px;" />
                                                    </div>
                                                    <div class="text-container" style="padding-top:20px">
                                                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vitae dolor sed urna placerat tincidunt. Aliquam eget metus auctor, congue massa in, aliquet tellus.</p>
                                                    </div>
                                                </div>                                                
                                            </div>                                           
                                        </div>
                                        <div class="carousel-item">
                                            <%--<img class="d-block w-100" src="Images/userIcon.jpg" alt="Third slide">--%>
                                            <div style="height:300px;width:400px;box-shadow: 2px 2px 5px grey;background: bisque;margin-left:300px">
                                                <div style="align-content: center;padding-top:20px">
                                                    <div class="row">
                                                        <img src="Images/Image%20ICON.png" style="height: 30px;padding-left: 180px;" />
                                                    </div>
                                                    <div class="row" style="padding-left:170px">
                                                        Rohini
                                                    </div>
                                                    <div class="row">
                                                        <asp:Button ID="t3" runat="server" Text="Designer" class="btn btn-primary" Style="width: 150px;margin-left: 120px;" />
                                                    </div>
                                                    <div class="text-container" style="padding-top:20px">
                                                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vitae dolor sed urna placerat tincidunt. Aliquam eget metus auctor, congue massa in, aliquet tellus.</p>
                                                    </div>
                                                </div>                                                
                                            </div>                                            
                                        </div>
                                    </div>
                                    <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev" style="background: black;">
                                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                        <span class="sr-only">Previous</span>
                                    </a>
                                    <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next" style="background: black;">
                                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                        <span class="sr-only">Next</span>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                <%-- Carousel sliding end --%>


                    
                    <%-- Carousel --%>

                    <%-- Recent Blogs --%>
                    <hr />                    
                    <div class="col-lg-12 col-md-12 col-sm-12" style="padding-left: 150px; padding-right: 150px;padding-bottom:95px">
                        <div class="row pb-10">
                            <div class="col-lg-6">                                
                                <div class="row" style="padding-left:50px">Recent Blogs</div>
                            </div>
                            <div class="col-lg-6">
                                <div style="float:right">
                                    <a href="blogs.aspx" class="btn-link">viewblogs</a>
                                </div>
                            </div>
                        </div>
                        <%-- content --%>
                        <div class="row" style="margin-top: 30px; padding-top: 50px">
                            <div class="col-md-8">Recent Blog</div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <asp:TextBox ID="searchBlog" runat="server" Text="Search..." class="form-control" Style="height: 40px; width: 300px;"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row" style="background: #f2f2f2;">
                            <div class="col-lg-8">
                                <a href="#">
                                    <div id="blogImage" style="width: 100%; height: 200px; background-color: white; display: flex">
                                        <img src="Images/picDemo.jfif" style="height: 100%" />
                                        <div id="blogImageData">
                                            <span id="blogSpotDate">3 years ago</span>
                                            <h3>First Blog</h3>
                                            <p>abcdefghijklmnopqrstuvwxyz</p>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>

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
                                        <li><a href="#">Feedback</a></li>
                                        <li><a href="#">Contact</a></li>
                                        <li><a href="blogs.aspx">Blog</a></li> 
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
            </div>
        </form>        
    </div>    
</body>
</html>
  <%--  <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                        <ol class="carousel-indicators">
                            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                        </ol>
                        <div class="carousel-inner">
                            <div class="carousel-item active">
                                <img class="d-block w-100" src="Images/Email.png" alt="First slide">
                            </div>
                            <div class="carousel-item">
                                <img class="d-block w-100" src="Images/home-hero-icon%20(1).png" alt="Second slide">
                            </div>
                            <div class="carousel-item">
                                <img class="d-block w-100" src="Images/userIcon.jpg" alt="Third slide">
                            </div>
                        </div>
                        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                            <span class="sr-only">Previous</span>
                        </a>
                        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
                            <span class="sr-only">Next</span>
                        </a>
                    </div>--%>