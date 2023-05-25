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
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
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
                            <%-- when session is active it will show --%>
                            <div id="activeSessionFunction" runat="server">
                                <a class="btn btn-secondary dropdown-toggle"  href="#" role="button" id="userDropDownList" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <asp:Image runat="server" ID="userImage" src="Images/Image%20ICON.png" Style="height: 30px;" onmouseover="viewText()" onmouseout="hideText()" alt="" class="hover-text" />
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
                            <div id="joinButtonFunct" runat="server">
                                <asp:Button runat="server" type="button" class="btn btn-primary btn-lg btn-block header-widget" ID="joinbutton" Text="JOIN" OnClick="joinbutton_Click" />
                            </div>
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
                    <%-- Templates start--%>
                    <%--All Templates Start--%>
                    <%--<div style="padding-top: 15px; padding-bottom: 25px">
                        <input type="text" class="with-border border-pilled" style="width: 800px; height: 45px" />
                    </div>--%>
                    <div class="row pt-5">
                        <div class="col-lg-5"></div>
                        <div class="col-lg-2">
                             <h2>Templates</h2>
                        </div>
                        <div class="col-lg-5"></div>                       
                    </div>
                    <div class="row pt-2 pb-2">
                        <div classs="col-lg-5"></div>
                        <div classs="col-lg-2">
                            <p class="text-muted" style="margin-left:380px"> Generate your required content with over 60+ content creation templates</p>
                            <%--<h6> Generate your required content with over 60+ content creation templates</h6>--%>
                        </div>
                        <div classs="col-lg-5"></div>
                        
                    </div>
                    <%-- V Arun Kumar css Code --%>
                    <div class="row">
                        <div class="col-md-12">
                            <div style="width:100%;">
                                <div style="border-radius:100px;background-color:deepskyblue;padding:15px;margin-left:10%;margin-right:10%">
                                    <div class="btn-group rounded-pill " role="group" aria-label="Rounded pill example"">
                                        <button type="button" class="btnToggle" id="at">All Templates</button>
                                        <button type="button" class="btnToggle" id="ab">Article And Blogs</button>
                                        <button type="button" class="btnToggle" id="am">Ads And Marketing Tools</button>
                                        <button type="button" class="btnToggle" id="gw">General Writing</button>
                                        <button type="button"  class="btnToggle" id="ec">ECommerce</button>
                                        <button type="button" class="btnToggle"  id="sm">Social Media</button>
                                        <button type="button" class="btnToggle" id="ws">Website</button>
                                        <button type="button"  class="btnToggle" id="ot">Others</button>
                                    </div>
                                </div>    
                            </div>
                        </div>
                        
                    </div>
                   
                    <div class="row" id="allTemp" style="padding-left: 50px; padding-right: 50px; padding-bottom: 50px">

                        <%-- articles and blogs --%>
                        <div class="row" id="abp">
                            <div class="row" style="padding-top: 20px; padding-bottom: 20px">
                                <h4>Article and Blogs</h4>
                                <hr />
                            </div>
                            <div class="row">
                                <div class="col-lg-4 border border-warning rounded-pill aitempl">
                                    <a href="http://hype.sociusus.com/ai-templates/blog-ideas">
                                        <div class="dashboard-box ai-templates ">
                                            <div class="content">
                                                <div class="ai-templates-icon">
                                                    <i class="fa fa-comment"></i>
                                                </div>
                                                <h4>Blog Ideas                                                                                                    </h4>
                                                <p class="margin-bottom-0">Article/blog ideas that you can use to generate more traffic, leads, and sales for your business.</p>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                                <div class="col-lg-4 border border-warning rounded-pill aitempl">
                                    <a href="http://hype.sociusus.com/ai-templates/blog-intros">
                                        <div class="dashboard-box ai-templates ">
                                            <div class="content">
                                                <div class="ai-templates-icon">
                                                    <i class="fa fa-align-left"></i>
                                                </div>
                                                <h4>Blog Intros                                                                                                    </h4>
                                                <p class="margin-bottom-0">Enticing article/blog introductions that capture the attention of the audience.</p>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                                <div class="col-lg-4 border border-warning rounded-pill aitempl">
                                    <a href="http://hype.sociusus.com/ai-templates/blog-titles">
                                        <div class="dashboard-box ai-templates ">
                                            <div class="content">
                                                <div class="ai-templates-icon">
                                                    <i class="fa fa-ellipsis-h"></i>
                                                </div>
                                                <h4>Blog Titles                                                                                                    </h4>
                                                <p class="margin-bottom-0">Nobody wants to read boring blog titles, generate catchy blog titles with this tool.</p>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-4 border border-warning rounded-pill aitempl">
                                    <a href="http://hype.sociusus.com/ai-templates/blog-section"
                                        title="Upgrade your plan to use this template" data-tippy-placement="top">
                                        <div class="dashboard-box ai-templates ai-templates-pro">
                                            <div class="content">
                                                <div class="ai-templates-icon">
                                                    <i class="fa fa-book"></i>
                                                </div>
                                                <h4>Blog Section                                                                                                            <span class="dashboard-status-button yellow"><i
                                                    class="fa fa-gift"></i>Pro</span>
                                                </h4>
                                                <p class="margin-bottom-0">Write a few paragraphs about a subheading of your article.</p>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                                <div class="col-lg-4 border border-warning rounded-pill aitempl">
                                    <a href="http://hype.sociusus.com/ai-templates/blog-conclusion">
                                        <div class="dashboard-box ai-templates ">
                                            <div class="content">
                                                <div class="ai-templates-icon">
                                                    <i class="fa fa-check-square"></i>
                                                </div>
                                                <h4>Blog Conclusion                                                                                                    </h4>
                                                <p class="margin-bottom-0">Create powerful conclusion that will make a reader take action.</p>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                                <div class="col-lg-4 border border-warning rounded-pill aitempl">
                                    <a href="http://hype.sociusus.com/ai-templates/article-writer"
                                        title="Upgrade your plan to use this template" data-tippy-placement="top">
                                        <div class="dashboard-box ai-templates ai-templates-pro">
                                            <div class="content">
                                                <div class="ai-templates-icon">
                                                    <i class="fa fa-pencil-square"></i>
                                                </div>
                                                <h4>Article Writer                                                                                                            <span class="dashboard-status-button yellow"><i
                                                    class="fa fa-gift"></i>Pro</span>
                                                </h4>
                                                <p class="margin-bottom-0">Create a fully complete high quality article from a title and outline text.</p>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-4 border border-warning rounded-pill aitempl">
                                    <a href="http://hype.sociusus.com/ai-templates/article-rewriter">
                                        <div class="dashboard-box ai-templates ">
                                            <div class="content">
                                                <div class="ai-templates-icon">
                                                    <i class="fa fa-pencil-square-o"></i>
                                                </div>
                                                <h4>Article Rewriter                                                                                                    </h4>
                                                <p class="margin-bottom-0">Copy an article, paste it in to the program, and with just one click you'll have an entirely different article to read.</p>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                                <div class="col-lg-4 border border-warning rounded-pill aitempl">
                                    <a href="http://hype.sociusus.com/ai-templates/article-outlines">
                                        <div class="dashboard-box ai-templates ">
                                            <div class="content">
                                                <div class="ai-templates-icon">
                                                    <i class="fa fa-list-ul"></i>
                                                </div>
                                                <h4>Article Outlines                                                                                                    </h4>
                                                <p class="margin-bottom-0">Detailed article outlines that help you write better content on a consistent basis.</p>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                                <div class="col-lg-4 border border-warning rounded-pill aitempl">
                                    <a href="http://hype.sociusus.com/ai-templates/talking-points">
                                        <div class="dashboard-box ai-templates ">
                                            <div class="content">
                                                <div class="ai-templates-icon">
                                                    <i class="fa fa-list-ol"></i>
                                                </div>
                                                <h4>Talking Points                                                                                                    </h4>
                                                <p class="margin-bottom-0">Write short, simple and informative points for the subheadings of your article</p>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-4 border border-warning rounded-pill aitempl">
                                    <a href="http://hype.sociusus.com/ai-templates/paragraph-writer"
                                        title="Upgrade your plan to use this template" data-tippy-placement="top">
                                        <div class="dashboard-box ai-templates ai-templates-pro">
                                            <div class="content">
                                                <div class="ai-templates-icon">
                                                    <i class="fa fa-align-justify"></i>
                                                </div>
                                                <h4>Paragraph Writer                                                                                                            <span class="dashboard-status-button yellow"><i
                                                    class="fa fa-gift"></i>Pro</span>
                                                </h4>
                                                <p class="margin-bottom-0">Perfectly structured paragraphs that are easy to read and packed with persuasive words.</p>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                                <div class="col-lg-4 border border-warning rounded-pill aitempl">
                                    <a href="http://hype.sociusus.com/ai-templates/content-rephrase">
                                        <div class="dashboard-box ai-templates ">
                                            <div class="content">
                                                <div class="ai-templates-icon">
                                                    <i class="fa fa-refresh"></i>
                                                </div>
                                                <h4>Content Rephrase                                                                                                    </h4>
                                                <p class="margin-bottom-0">Rephrase your content in a different voice and style to appeal to different readers.</p>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                                <div class="col-lg-4 border border-warning rounded-pill aitempl">
                                </div>
                            </div>
                        </div>
                        <%-- ads and marketing tools --%>
                        <div class="row" id="amt">
                            <div class="row" style="padding-top: 20px; padding-bottom: 20px">
                                <h4>Ads And Marketing Tools</h4>
                            </div>
                            <div class="row">
                                <div class="col-lg-4 border border-warning rounded-pill aitempl">
                                    <a href="http://hype.sociusus.com/ai-templates/facebook-ads">
                                        <div class="dashboard-box ai-templates ">
                                            <div class="content">
                                                <div class="ai-templates-icon">
                                                    <i class="fa fa-facebook-official"></i>
                                                </div>
                                                <h4>Facebook Ads                                                                                                    </h4>
                                                <p class="margin-bottom-0">Facebook ad copies that make your ads truly stand out.</p>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                                <div class="col-lg-4 border border-warning rounded-pill aitempl">
                                    <a href="http://hype.sociusus.com/ai-templates/facebook-ads-headlines">
                                        <div class="dashboard-box ai-templates ">
                                            <div class="content">
                                                <div class="ai-templates-icon">
                                                    <i class="fa fa-facebook-square"></i>
                                                </div>
                                                <h4>Facebook Ads Headlines                                                                                                    </h4>
                                                <p class="margin-bottom-0">Write catchy and convincing headlines to make your Facebook Ads stand out.</p>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                                <div class="col-lg-4 border border-warning rounded-pill aitempl">
                                    <a href="http://hype.sociusus.com/ai-templates/google-ad-titles"
                                        title="Upgrade your plan to use this template" data-tippy-placement="top">
                                        <div class="dashboard-box ai-templates ai-templates-pro">
                                            <div class="content">
                                                <div class="ai-templates-icon">
                                                    <i class="fa fa-google"></i>
                                                </div>
                                                <h4>Google Ad Titles                                                                                                            <span class="dashboard-status-button yellow"><i
                                                    class="fa fa-gift"></i>Pro</span>
                                                </h4>
                                                <p class="margin-bottom-0">Creating ads with unique and appealing titles that entice people to click on your ad and purchase from your site.</p>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-4 border border-warning rounded-pill aitempl">
                                    <a href="http://hype.sociusus.com/ai-templates/google-ad-descriptions"
                                        title="Upgrade your plan to use this template" data-tippy-placement="top">
                                        <div class="dashboard-box ai-templates ai-templates-pro">
                                            <div class="content">
                                                <div class="ai-templates-icon">
                                                    <i class="fa fa-google"></i>
                                                </div>
                                                <h4>Google Ad Descriptions                                                                                                            <span class="dashboard-status-button yellow"><i
                                                    class="fa fa-gift"></i>Pro</span>
                                                </h4>
                                                <p class="margin-bottom-0">The best-performing Google ad copy converts visitors into customers.</p>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                                <div class="col-lg-4 border border-warning rounded-pill aitempl">
                                    <a href="http://hype.sociusus.com/ai-templates/linkedin-ad-headlines">
                                        <div class="dashboard-box ai-templates ">
                                            <div class="content">
                                                <div class="ai-templates-icon">
                                                    <i class="fa fa-linkedin"></i>
                                                </div>
                                                <h4>LinkedIn Ad Headlines                                                                                                    </h4>
                                                <p class="margin-bottom-0">Attention-grabbing, click-inducing, and high-converting ad headlines for Linkedin.</p>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                                <div class="col-lg-4 border border-warning rounded-pill aitempl">
                                    <a href="http://hype.sociusus.com/ai-templates/linkedin-ad-descriptions">
                                        <div class="dashboard-box ai-templates ">
                                            <div class="content">
                                                <div class="ai-templates-icon">
                                                    <i class="fa fa-linkedin"></i>
                                                </div>
                                                <h4>LinkedIn Ad Descriptions                                                                                                    </h4>
                                                <p class="margin-bottom-0">Professional and eye-catching ad descriptions that will make your product shine.</p>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-4 border border-warning rounded-pill aitempl">
                                    <a href="http://hype.sociusus.com/ai-templates/app-and-sms-notifications">
                                        <div class="dashboard-box ai-templates ">
                                            <div class="content">
                                                <div class="ai-templates-icon">
                                                    <i class="fa fa-bell"></i>
                                                </div>
                                                <h4>App and SMS Notifications                                                                                                    </h4>
                                                <p class="margin-bottom-0">Notification messages for your apps, websites, and mobile devices that keep users coming back for more.</p>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                                <div class="col-lg-4 border border-warning rounded-pill aitempl">
                                </div>
                                <div class="col-lg-4 border border-warning rounded-pill aitempl"></div>
                            </div>
                        </div>
                        <%-- general writing --%>
                        <div class="row" id="gwg">
                            <div class="row" style="padding-top: 20px; padding-bottom: 20px">
                                <h4>General Writing</h4>
                            </div>
                            <div class="row">
                                <div class="col-lg-4 border border-warning rounded-pill aitempl">
                                    <a href="http://hype.sociusus.com/ai-templates/text-extender">
                                        <div class="dashboard-box ai-templates ">
                                            <div class="content">
                                                <div class="ai-templates-icon">
                                                    <i class="fa fa-text-width"></i>
                                                </div>
                                                <h4>Text Extender                                                                                                    </h4>
                                                <p class="margin-bottom-0">Extend short sentences into more descriptive and interesting ones.</p>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                                <div class="col-lg-4 border border-warning rounded-pill aitempl">
                                    <a href="http://hype.sociusus.com/ai-templates/content-shorten">
                                        <div class="dashboard-box ai-templates ">
                                            <div class="content">
                                                <div class="ai-templates-icon">
                                                    <i class="fa fa-text-width"></i>
                                                </div>
                                                <h4>Content Shorten                                                                                                    </h4>
                                                <p class="margin-bottom-0">Short your content in a different voice and style to appeal to different readers.</p>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                                <div class="col-lg-4 border border-warning rounded-pill aitempl">
                                    <a href="http://hype.sociusus.com/ai-templates/quora-answers"
                                        title="Upgrade your plan to use this template" data-tippy-placement="top">
                                        <div class="dashboard-box ai-templates ai-templates-pro">
                                            <div class="content">
                                                <div class="ai-templates-icon">
                                                    <i class="fa fa-quora"></i>
                                                </div>
                                                <h4>Quora Answers                                                                                                            <span class="dashboard-status-button yellow"><i
                                                    class="fa fa-gift"></i>Pro</span>
                                                </h4>
                                                <p class="margin-bottom-0">Answers to Quora questions that will position you as an authority.</p>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-4 border border-warning rounded-pill aitempl">
                                    <a href="http://hype.sociusus.com/ai-templates/summarize-for-2nd-grader">
                                        <div class="dashboard-box ai-templates ">
                                            <div class="content">
                                                <div class="ai-templates-icon">
                                                    <i class="fa fa-child"></i>
                                                </div>
                                                <h4>Summarize for a 2nd grader                                                                                                    </h4>
                                                <p class="margin-bottom-0">Translates difficult text into simpler concepts.</p>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                                <div class="col-lg-4 border border-warning rounded-pill aitempl">
                                    <a href="http://hype.sociusus.com/ai-templates/stories"
                                        title="Upgrade your plan to use this template" data-tippy-placement="top">
                                        <div class="dashboard-box ai-templates ai-templates-pro">
                                            <div class="content">
                                                <div class="ai-templates-icon">
                                                    <i class="fa fa-heart-o"></i>
                                                </div>
                                                <h4>Stories                                                                                                            <span class="dashboard-status-button yellow"><i
                                                    class="fa fa-gift"></i>Pro</span>
                                                </h4>
                                                <p class="margin-bottom-0">Engaging and persuasive stories that will capture your reader's attention and interest.</p>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                                <div class="col-lg-4 border border-warning rounded-pill aitempl">
                                    <a href="http://hype.sociusus.com/ai-templates/bullet-point-answers">
                                        <div class="dashboard-box ai-templates ">
                                            <div class="content">
                                                <div class="ai-templates-icon">
                                                    <i class="fa fa-list"></i>
                                                </div>
                                                <h4>Bullet Point Answers                                                                                                    </h4>
                                                <p class="margin-bottom-0">Precise and informative bullet points that provide quick and valuable answers to your customers' questions.</p>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-4 border border-warning rounded-pill aitempl">
                                    <a href="http://hype.sociusus.com/ai-templates/definition">
                                        <div class="dashboard-box ai-templates ">
                                            <div class="content">
                                                <div class="ai-templates-icon">
                                                    <i class="fa fa-tasks"></i>
                                                </div>
                                                <h4>Definition                                                                                                    </h4>
                                                <p class="margin-bottom-0">A definition for a word, phrase, or acronym that's used often by your target buyers.</p>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                                <div class="col-lg-4 border border-warning rounded-pill aitempl">
                                    <a href="http://hype.sociusus.com/ai-templates/answers">
                                        <div class="dashboard-box ai-templates ">
                                            <div class="content">
                                                <div class="ai-templates-icon">
                                                    <i class="fa fa-check-circle"></i>
                                                </div>
                                                <h4>Answers                                                                                                    </h4>
                                                <p class="margin-bottom-0">Instant, quality answers to any questions or concerns that your audience might have.</p>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                                <div class="col-lg-4 border border-warning rounded-pill aitempl">
                                    <a href="http://hype.sociusus.com/ai-templates/questions">
                                        <div class="dashboard-box ai-templates ">
                                            <div class="content">
                                                <div class="ai-templates-icon">
                                                    <i class="fa fa-question-circle"></i>
                                                </div>
                                                <h4>Questions                                                                                                    </h4>
                                                <p class="margin-bottom-0">A tool to create engaging questions and polls that increase audience participation and engagement.</p>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-4 border border-warning rounded-pill aitempl">
                                    <a href="http://hype.sociusus.com/ai-templates/passive-active-voice">
                                        <div class="dashboard-box ai-templates ">
                                            <div class="content">
                                                <div class="ai-templates-icon">
                                                    <i class="fa fa-sort-alpha-desc"></i>
                                                </div>
                                                <h4>Passive to Active Voice                                                                                                    </h4>
                                                <p class="margin-bottom-0">Easy and quick solution to converting your passive voice sentences into active voice sentences.</p>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                                <div class="col-lg-4 border border-warning rounded-pill aitempl">
                                    <a href="http://hype.sociusus.com/ai-templates/pros-cons"
                                        title="Upgrade your plan to use this template" data-tippy-placement="top">
                                        <div class="dashboard-box ai-templates ai-templates-pro">
                                            <div class="content">
                                                <div class="ai-templates-icon">
                                                    <i class="fa fa-key"></i>
                                                </div>
                                                <h4>Pros and Cons                                                                                                            <span class="dashboard-status-button yellow"><i
                                                    class="fa fa-gift"></i>Pro</span>
                                                </h4>
                                                <p class="margin-bottom-0">List of the main benefits versus the most common problems and concerns.</p>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                                <div class="col-lg-4 border border-warning rounded-pill aitempl">
                                    <a href="http://hype.sociusus.com/ai-templates/rewrite-with-keywords"
                                        title="Upgrade your plan to use this template" data-tippy-placement="top">
                                        <div class="dashboard-box ai-templates ai-templates-pro">
                                            <div class="content">
                                                <div class="ai-templates-icon">
                                                    <i class="fa fa-refresh"></i>
                                                </div>
                                                <h4>Rewrite With Keywords                                                                                                            <span class="dashboard-status-button yellow"><i
                                                    class="fa fa-gift"></i>Pro</span>
                                                </h4>
                                                <p class="margin-bottom-0">Rewrite your existing content to include more keywords and boost your search engine rankings.</p>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-4 border border-warning rounded-pill aitempl">
                                    <a href="http://hype.sociusus.com/ai-templates/emails"
                                        title="Upgrade your plan to use this template" data-tippy-placement="top">
                                        <div class="dashboard-box ai-templates ai-templates-pro">
                                            <div class="content">
                                                <div class="ai-templates-icon">
                                                    <i class="fa fa-envelope"></i>
                                                </div>
                                                <h4>Emails                                                                                                            <span class="dashboard-status-button yellow"><i
                                                    class="fa fa-gift"></i>Pro</span>
                                                </h4>
                                                <p class="margin-bottom-0">Professional-looking emails that help you engage leads and customers.</p>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                                <div class="col-lg-4 border border-warning rounded-pill aitempl">
                                    <a href="http://hype.sociusus.com/ai-templates/emails-v2"
                                        title="Upgrade your plan to use this template" data-tippy-placement="top">
                                        <div class="dashboard-box ai-templates ai-templates-pro">
                                            <div class="content">
                                                <div class="ai-templates-icon">
                                                    <i class="fa fa-envelope"></i>
                                                </div>
                                                <h4>Emails V2                                                                                                            <span class="dashboard-status-button yellow"><i
                                                    class="fa fa-gift"></i>Pro</span>
                                                </h4>
                                                <p class="margin-bottom-0">Personalized email outreach to your target prospects that get better results.</p>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                                <div class="col-lg-4 border border-warning rounded-pill aitempl">
                                    <a href="http://hype.sociusus.com/ai-templates/email-subject-lines">
                                        <div class="dashboard-box ai-templates ">
                                            <div class="content">
                                                <div class="ai-templates-icon">
                                                    <i class="fa fa-envelope-open-o"></i>
                                                </div>
                                                <h4>Email Subject Lines                                                                                                    </h4>
                                                <p class="margin-bottom-0">Powerful email subject lines that increase open rates.</p>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-4 border border-warning rounded-pill aitempl">
                                    <a href="http://hype.sociusus.com/ai-templates/startup-name-generator">
                                        <div class="dashboard-box ai-templates ">
                                            <div class="content">
                                                <div class="ai-templates-icon">
                                                    <i class="fa fa-bullhorn"></i>
                                                </div>
                                                <h4>Startup Name Generator                                                                                                    </h4>
                                                <p class="margin-bottom-0">Generate cool, creative, and catchy names for your startup in seconds.</p>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                                <div class="col-lg-4 border border-warning rounded-pill aitempl">
                                    <a href="http://hype.sociusus.com/ai-templates/company-bios">
                                        <div class="dashboard-box ai-templates ">
                                            <div class="content">
                                                <div class="ai-templates-icon">
                                                    <i class="fa fa-file-text"></i>
                                                </div>
                                                <h4>Company Bios                                                                                                    </h4>
                                                <p class="margin-bottom-0">Short and sweet company bio that will help you connect with your target audience.</p>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                                <div class="col-lg-4 border border-warning rounded-pill aitempl">
                                    <a href="http://hype.sociusus.com/ai-templates/company-mission"
                                        title="Upgrade your plan to use this template" data-tippy-placement="top">
                                        <div class="dashboard-box ai-templates ai-templates-pro">
                                            <div class="content">
                                                <div class="ai-templates-icon">
                                                    <i class="fa fa-file-text-o"></i>
                                                </div>
                                                <h4>Company Mission                                                                                                            <span class="dashboard-status-button yellow"><i
                                                    class="fa fa-gift"></i>Pro</span>
                                                </h4>
                                                <p class="margin-bottom-0">A clear and concise statement of your company's goals and purpose.</p>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-4 border border-warning rounded-pill aitempl">
                                    <a href="http://hype.sociusus.com/ai-templates/company-vision"
                                        title="Upgrade your plan to use this template" data-tippy-placement="top">
                                        <div class="dashboard-box ai-templates ai-templates-pro">
                                            <div class="content">
                                                <div class="ai-templates-icon">
                                                    <i class="fa fa-align-left"></i>
                                                </div>
                                                <h4>Company Vision                                                                                                            <span class="dashboard-status-button yellow"><i
                                                    class="fa fa-gift"></i>Pro</span>
                                                </h4>
                                                <p class="margin-bottom-0">A vision that attracts the right people, clients, and employees.</p>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                                <div class="col-lg-4 border border-warning rounded-pill aitempl">
                                </div>
                                <div class="col-lg-4 border border-warning rounded-pill aitempl"></div>
                            </div>
                        </div>
                        <%-- ecommerce --%>
                        <div class="row" id="ece" style="padding-top: 20px; padding-bottom: 20px">
                            <div class="row">
                                <div class="row">
                                    <h4>Ecommerce</h4>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-4 border border-warning rounded-pill aitempl">
                                    <a href="http://hype.sociusus.com/ai-templates/product-name-generator">
                                        <div class="dashboard-box ai-templates ">
                                            <div class="content">
                                                <div class="ai-templates-icon">
                                                    <i class="fa fa-gift"></i>
                                                </div>
                                                <h4>Product Name Generator                                                                                                    </h4>
                                                <p class="margin-bottom-0">Create creative product names from examples words.</p>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                                <div class="col-lg-4 border border-warning rounded-pill aitempl">
                                    <a href="http://hype.sociusus.com/ai-templates/product-descriptions">
                                        <div class="dashboard-box ai-templates ">
                                            <div class="content">
                                                <div class="ai-templates-icon">
                                                    <i class="fa fa-gift"></i>
                                                </div>
                                                <h4>Product Descriptions                                                                                                    </h4>
                                                <p class="margin-bottom-0">Authentic product descriptions that will compel, inspire, and influence.</p>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                                <div class="col-lg-4 border border-warning rounded-pill aitempl">
                                    <a href="http://hype.sociusus.com/ai-templates/amazon-product-titles"
                                        title="Upgrade your plan to use this template" data-tippy-placement="top">
                                        <div class="dashboard-box ai-templates ai-templates-pro">
                                            <div class="content">
                                                <div class="ai-templates-icon">
                                                    <i class="fa fa-amazon"></i>
                                                </div>
                                                <h4>Amazon Product Titles                                                                                                            <span class="dashboard-status-button yellow"><i
                                                    class="fa fa-gift"></i>Pro</span>
                                                </h4>
                                                <p class="margin-bottom-0">Product titles that will make your product stand out in a sea of competition.</p>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-4 border border-warning rounded-pill aitempl">
                                    <a href="http://hype.sociusus.com/ai-templates/amazon-product-descriptions"
                                        title="Upgrade your plan to use this template" data-tippy-placement="top">
                                        <div class="dashboard-box ai-templates ai-templates-pro">
                                            <div class="content">
                                                <div class="ai-templates-icon">
                                                    <i class="fa fa-amazon"></i>
                                                </div>
                                                <h4>Amazon Product Descriptions                                                                                                            <span class="dashboard-status-button yellow"><i
                                                    class="fa fa-gift"></i>Pro</span>
                                                </h4>
                                                <p class="margin-bottom-0">Descriptions for Amazon products that rank on the first page of the search results.</p>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                                <div class="col-lg-4 border border-warning rounded-pill aitempl">
                                    <a href="http://hype.sociusus.com/ai-templates/amazon-product-features"
                                        title="Upgrade your plan to use this template" data-tippy-placement="top">
                                        <div class="dashboard-box ai-templates ai-templates-pro">
                                            <div class="content">
                                                <div class="ai-templates-icon">
                                                    <i class="fa fa-amazon"></i>
                                                </div>
                                                <h4>Amazon Product Features                                                                                                            <span class="dashboard-status-button yellow"><i
                                                    class="fa fa-gift"></i>Pro</span>
                                                </h4>
                                                <p class="margin-bottom-0">Advantages and features of your products that will make them irresistible to shoppers.</p>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                                <div class="col-lg-4 border border-warning rounded-pill aitempl">
                                    <a href="http://hype.sociusus.com/ai-templates/social-post-personal">
                                        <div class="dashboard-box ai-templates ">
                                            <div class="content">
                                                <div class="ai-templates-icon">
                                                    <i class="fa fa-facebook"></i>
                                                </div>
                                                <h4>Social Media Post (Personal)                                                                                                    </h4>
                                                <p class="margin-bottom-0">Write a social media post for yourself to be published on any platform.</p>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                            </div>
                        </div>
                        <%-- social media --%>
                        <div class="row" id="sma" style="padding-top: 20px; padding-bottom: 20px">
                            <div class="row">
                                <h3>Social Media</h3>
                            </div>
                            <div class="row">
                                <div class="col-lg-4 border border-warning rounded-pill aitempl">
                                    <a href="http://hype.sociusus.com/ai-templates/social-post-personal">
                                        <div class="dashboard-box ai-templates ">
                                            <div class="content">
                                                <div class="ai-templates-icon">
                                                    <i class="fa fa-facebook"></i>
                                                </div>
                                                <h4>Social Media Post (Personal)                                                                                                    </h4>
                                                <p class="margin-bottom-0">Write a social media post for yourself to be published on any platform.</p>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                                <div class="col-lg-4 border border-warning rounded-pill aitempl">
                                    <a href="http://hype.sociusus.com/ai-templates/social-post-business"
                                        title="Upgrade your plan to use this template" data-tippy-placement="top">
                                        <div class="dashboard-box ai-templates ai-templates-pro">
                                            <div class="content">
                                                <div class="ai-templates-icon">
                                                    <i class="fa fa-facebook"></i>
                                                </div>
                                                <h4>Social Media Post (Business)                                                                                                            <span class="dashboard-status-button yellow"><i
                                                    class="fa fa-gift"></i>Pro</span>
                                                </h4>
                                                <p class="margin-bottom-0">Write a post for your business to be published on any social media platform.</p>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                                <div class="col-lg-4 border border-warning rounded-pill aitempl">
                                    <a href="http://hype.sociusus.com/ai-templates/instagram-captions">
                                        <div class="dashboard-box ai-templates ">
                                            <div class="content">
                                                <div class="ai-templates-icon">
                                                    <i class="fa fa-instagram"></i>
                                                </div>
                                                <h4>Instagram Captions                                                                                                    </h4>
                                                <p class="margin-bottom-0">Captions that turn your images into attention-grabbing Instagram posts.</p>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-4 border border-warning rounded-pill aitempl">
                                    <a href="http://hype.sociusus.com/ai-templates/instagram-hashtags"
                                        title="Upgrade your plan to use this template" data-tippy-placement="top">
                                        <div class="dashboard-box ai-templates ai-templates-pro">
                                            <div class="content">
                                                <div class="ai-templates-icon">
                                                    <i class="fa fa-instagram"></i>
                                                </div>
                                                <h4>Instagram Hashtags                                                                                                            <span class="dashboard-status-button yellow"><i
                                                    class="fa fa-gift"></i>Pro</span>
                                                </h4>
                                                <p class="margin-bottom-0">Trending and highly relevant hashtags to help you get more followers and engagement.</p>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                                <div class="col-lg-4 border border-warning rounded-pill aitempl">
                                    <a href="http://hype.sociusus.com/ai-templates/twitter-tweets">
                                        <div class="dashboard-box ai-templates ">
                                            <div class="content">
                                                <div class="ai-templates-icon">
                                                    <i class="fa fa-twitter"></i>
                                                </div>
                                                <h4>Twitter Tweets                                                                                                    </h4>
                                                <p class="margin-bottom-0">Generate tweets using AI, that are relevant and on-trend.</p>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                                <div class="col-lg-4 border border-warning rounded-pill aitempl">
                                    <a href="http://hype.sociusus.com/ai-templates/youtube-titles">
                                        <div class="dashboard-box ai-templates ">
                                            <div class="content">
                                                <div class="ai-templates-icon">
                                                    <i class="fa fa-youtube-play"></i>
                                                </div>
                                                <h4>YouTube Titles                                                                                                    </h4>
                                                <p class="margin-bottom-0">Catchy titles that attract more views and increase the number of shares.</p>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-4 border border-warning rounded-pill aitempl">
                                    <a href="http://hype.sociusus.com/ai-templates/youtube-descriptions"
                                        title="Upgrade your plan to use this template" data-tippy-placement="top">
                                        <div class="dashboard-box ai-templates ai-templates-pro">
                                            <div class="content">
                                                <div class="ai-templates-icon">
                                                    <i class="fa fa-youtube-play"></i>
                                                </div>
                                                <h4>YouTube Descriptions                                                                                                            <span class="dashboard-status-button yellow"><i
                                                    class="fa fa-gift"></i>Pro</span>
                                                </h4>
                                                <p class="margin-bottom-0">Catchy and persuasive YouTube descriptions that help your videos rank higher.</p>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                                <div class="col-lg-4 border border-warning rounded-pill aitempl">
                                    <a href="http://hype.sociusus.com/ai-templates/youtube-outlines"
                                        title="Upgrade your plan to use this template" data-tippy-placement="top">
                                        <div class="dashboard-box ai-templates ai-templates-pro">
                                            <div class="content">
                                                <div class="ai-templates-icon">
                                                    <i class="fa fa-youtube-play"></i>
                                                </div>
                                                <h4>YouTube Outlines                                                                                                            <span class="dashboard-status-button yellow"><i
                                                    class="fa fa-gift"></i>Pro</span>
                                                </h4>
                                                <p class="margin-bottom-0">Video outlines that are a breeze to create and uber-engaging.</p>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                                <div class="col-lg-4 border border-warning rounded-pill aitempl">
                                    <a href="http://hype.sociusus.com/ai-templates/linkedin-posts">
                                        <div class="dashboard-box ai-templates ">
                                            <div class="content">
                                                <div class="ai-templates-icon">
                                                    <i class="fa fa-linkedin"></i>
                                                </div>
                                                <h4>LinkedIn Posts                                                                                                    </h4>
                                                <p class="margin-bottom-0">Inspiring LinkedIn posts that will help you build trust and authority in your industry.</p>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-4 border border-warning rounded-pill aitempl">
                                    <a href="http://hype.sociusus.com/ai-templates/tiktok-video-scripts"
                                        title="Upgrade your plan to use this template" data-tippy-placement="top">
                                        <div class="dashboard-box ai-templates ai-templates-pro">
                                            <div class="content">
                                                <div class="ai-templates-icon">
                                                    <i class="fa fa-film"></i>
                                                </div>
                                                <h4>TikTok Video Scripts                                                                                                            <span class="dashboard-status-button yellow"><i
                                                    class="fa fa-gift"></i>Pro</span>
                                                </h4>
                                                <p class="margin-bottom-0">Video scripts that are ready to shoot and will make you go viral.</p>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                                <div class="col-lg-4 border border-warning rounded-pill aitempl">
                                </div>
                                <div class="col-lg-4 border border-warning rounded-pill aitempl">
                                </div>
                            </div>
                        </div>
                        <%-- website --%>
                        <div class="row" id="webe" style="padding-top: 20px; padding-bottom: 20px">
                            <div class="row">
                                <h4>Website</h4>
                            </div>
                            <div class="row">
                                <div class="col-lg-4 border border-warning rounded-pill aitempl">
                                    <a href="http://hype.sociusus.com/ai-templates/meta-tags-blog"
                                        title="Upgrade your plan to use this template" data-tippy-placement="top">
                                        <div class="dashboard-box ai-templates ai-templates-pro">
                                            <div class="content">
                                                <div class="ai-templates-icon">
                                                    <i class="fa fa-google"></i>
                                                </div>
                                                <h4>SEO Meta Tags (Blog Post)                                                                                                            <span class="dashboard-status-button yellow"><i
                                                    class="fa fa-gift"></i>Pro</span>
                                                </h4>
                                                <p class="margin-bottom-0">A set of optimized meta title and meta description tags that will boost your search rankings for your blog.</p>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                                <div class="col-lg-4 border border-warning rounded-pill aitempl">
                                    <a href="http://hype.sociusus.com/ai-templates/meta-tags-homepage"
                                        title="Upgrade your plan to use this template" data-tippy-placement="top">
                                        <div class="dashboard-box ai-templates ai-templates-pro">
                                            <div class="content">
                                                <div class="ai-templates-icon">
                                                    <i class="fa fa-google"></i>
                                                </div>
                                                <h4>SEO Meta Tags (Homepage)                                                                                                            <span class="dashboard-status-button yellow"><i
                                                    class="fa fa-gift"></i>Pro</span>
                                                </h4>
                                                <p class="margin-bottom-0">A set of optimized meta title and meta description tags that will boost your search rankings for your home page.</p>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                                <div class="col-lg-4 border border-warning rounded-pill aitempl">
                                    <a href="http://hype.sociusus.com/ai-templates/meta-tags-product"
                                        title="Upgrade your plan to use this template" data-tippy-placement="top">
                                        <div class="dashboard-box ai-templates ai-templates-pro">
                                            <div class="content">
                                                <div class="ai-templates-icon">
                                                    <i class="fa fa-google"></i>
                                                </div>
                                                <h4>SEO Meta Tags (Product Page)                                                                                                            <span class="dashboard-status-button yellow"><i
                                                    class="fa fa-gift"></i>Pro</span>
                                                </h4>
                                                <p class="margin-bottom-0">A set of optimized meta title and meta description tags that will boost your search rankings for your product page.</p>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                            </div>
                        </div>
                        <%-- others --%>
                        <div class="row" id="oth" style="padding-top: 20px; padding-bottom: 20px">
                            <div class="row">
                                <h4>Other</h4>
                            </div>
                            <div class="row">
                                <div class="col-lg-4 border border-warning rounded-pill aitempl">
                                    <a href="http://hype.sociusus.com/ai-templates/tone-changer"
                                        title="Upgrade your plan to use this template" data-tippy-placement="top">
                                        <div class="dashboard-box ai-templates ai-templates-pro">
                                            <div class="content">
                                                <div class="ai-templates-icon">
                                                    <i class="fa fa-refresh"></i>
                                                </div>
                                                <h4>Tone Changer                                                                                                            <span class="dashboard-status-button yellow"><i
                                                    class="fa fa-gift"></i>Pro</span>
                                                </h4>
                                                <p class="margin-bottom-0">Change the tone of your writing to match your audience and copy.</p>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                                <div class="col-lg-4 border border-warning rounded-pill aitempl">
                                    <a href="http://hype.sociusus.com/ai-templates/song-lyrics"
                                        title="Upgrade your plan to use this template" data-tippy-placement="top">
                                        <div class="dashboard-box ai-templates ai-templates-pro">
                                            <div class="content">
                                                <div class="ai-templates-icon">
                                                    <i class="fa fa-music"></i>
                                                </div>
                                                <h4>Song Lyrics                                                                                                            <span class="dashboard-status-button yellow"><i
                                                    class="fa fa-gift"></i>Pro</span>
                                                </h4>
                                                <p class="margin-bottom-0">Unique song lyrics that will be perfect for your next hit song.</p>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                                <div class="col-lg-4 border border-warning rounded-pill aitempl">
                                    <a href="http://hype.sociusus.com/ai-templates/translate">
                                        <div class="dashboard-box ai-templates ">
                                            <div class="content">
                                                <div class="ai-templates-icon">
                                                    <i class="fa fa-language"></i>
                                                </div>
                                                <h4>Translate                                                                                                    </h4>
                                                <p class="margin-bottom-0">Translate your content into any language you want.</p>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-4 border border-warning rounded-pill aitempl">
                                    <a href="http://hype.sociusus.com/ai-templates/faqs"
                                        title="Upgrade your plan to use this template" data-tippy-placement="top">
                                        <div class="dashboard-box ai-templates ai-templates-pro">
                                            <div class="content">
                                                <div class="ai-templates-icon">
                                                    <i class="fa fa-question-circle-o"></i>
                                                </div>
                                                <h4>FAQs                                                                                                            <span class="dashboard-status-button yellow"><i
                                                    class="fa fa-gift"></i>Pro</span>
                                                </h4>
                                                <p class="margin-bottom-0">Generate frequently asked questions based on your product description.</p>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                                <div class="col-lg-4 border border-warning rounded-pill aitempl">
                                    <a href="http://hype.sociusus.com/ai-templates/faq-answers"
                                        title="Upgrade your plan to use this template" data-tippy-placement="top">
                                        <div class="dashboard-box ai-templates ai-templates-pro">
                                            <div class="content">
                                                <div class="ai-templates-icon">
                                                    <i class="fa fa-question-circle-o"></i>
                                                </div>
                                                <h4>FAQ Answers                                                                                                            <span class="dashboard-status-button yellow"><i
                                                    class="fa fa-gift"></i>Pro</span>
                                                </h4>
                                                <p class="margin-bottom-0">Generate creative answers to questions (FAQs) about your business or website.</p>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                                <div class="col-lg-4 border border-warning rounded-pill aitempl">                                    
                                    <a href="ai-templates/testimonial-reviews.aspx" title="Upgrade your plan to use this template" data-tippy-placement="top">
                                        <div class="dashboard-box ai-templates ai-templates-pro">
                                            <div class="content">
                                                <div class="ai-templates-icon">
                                                    <i class="fa fa-star-half-o"></i>
                                                </div>
                                                <h4>Testimonials / Reviews                                                                                                            <span class="dashboard-status-button yellow"><i
                                                    class="fa fa-gift"></i>Pro</span>
                                                </h4>
                                                <p class="margin-bottom-0">Add social proof to your website by generating user testimonials.</p>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <%--All Templates End--%>
                    <%-- Templates end--%>
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
                                            <li><a href="Index.aspx">Home</a></li>
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
                                            <asp:TextBox runat="server" class="font-weight-normal" style="text-align: center;border: 0px;outline: 0px;background: lightgrey;" ID="chPara"></asp:TextBox>
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
                                <div class="row" style="padding-left:50px">
                                    <div>
                                        <h3>Recent Blog</h3>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div style="float:right">
                                    <a href="blogs/1/blogsFirst.aspx" class="btn-link">viewblogs</a>
                                </div>
                            </div>
                        </div>
                        <%-- content --%>
                        <div class="row" style="margin-top: 30px; padding-top: 50px">
                            <div class="col-md-8">
                                <div>
                                    <p>Recent Blog</p>
                                </div>
                                

                            </div>
                            <div class="col-md-4">
                               <%-- <div class="form-group">
                                    <asp:TextBox ID="searchBlog" runat="server" Text="Search..." class="form-control" Style="height: 40px; width: 300px;"></asp:TextBox>
                                </div>--%>
                            </div>
                        </div>
                        <div class="row" style="background: #f2f2f2;">
                            <div class="col-lg-8">
                                <a href="blogs/1/blogsFirst.aspx">
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
                            <div class="col-lg-4" style="background:white">

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
                                        <li><a href="blogs/blogs.aspx">Blog</a></li>
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
