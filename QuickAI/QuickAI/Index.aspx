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
    <form runat="server">
        <%-- Header Content ofAccount setting --%>
        <div class="headerBar" style="box-shadow: 1px 0px 5px 2px grey;">
            <%-- Header starts here --%>
            <div>
                <a class="navbar-brand" href="Index.aspx">
                    <img src="Images/1149945428.png" id="websiteLogo" />
                </a>
            </div>
            <div></div>
            <div>
                <asp:TextBox ID="viewImage" Style="display: none;" runat="server" value=""></asp:TextBox>
            </div>
            <div id="activeSessionFunction" runat="server">

                <%-- User Drop Down Button --%>
                <div class="dropdown show">
                    <a class="btn btn-secondary dropdown-toggle" href="#" role="button" id="userDropDownList" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <asp:Image runat="server" ID="userImage" src="Images/Image%20ICON.png" Style="height: 30px;" onmouseover="viewText()" onmouseout="hideText()" alt="" class="hover-text" />
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
            <div id="joinButtonFunct" runat="server">
                <asp:Button runat="server" type="button" class="btn btn-primary btn-lg btn-block header-widget" ID="Button2" Text="JOIN" OnClick="joinbutton_Click" />
            </div>
            <div>
                <%-- Header Language Selection --%>
                <div class="dropdown">
                    <asp:Button runat="server" class="btn btn-secondary btn-primary btn-lg dropdown-toggle" type="button" ID="Button1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"
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
        <div id="IndexBody">
            <div class="row">
                <div class="col-lg-12 d-flex justify-content-center">
                    <div style="padding-top: 150px; text-align: center">
                        <img src="Images/home-hero-icon%20(1).png" style="width: 200px; height: 200px;" />
                        <h1 class="large">Best AI Content Writer</h1>
                        <p style="margin: 0; color: grey; font-size: 120%">Create SEO-optimized and unique content for your blogs, ads, emails,</p>
                        <p style="color: grey; font-size: 120%">and website 10X faster & save hours of work.</p>
                        <asp:LinkButton ID="startedFreeReg" runat="server" href="Register.aspx" Text="Get Started For Free" class="btn btn-primary" Style="width: 50%; padding: 10px" />
                        <p class="small">No credit card required</p>
                    </div>
                </div>
            </div>
            <%-- How Its works --%>
            <div class="row mt-4" style="background: #f1f1f1; padding-bottom: 50px; padding-left: 100px; padding-right: 100px">
                <div class="col-lg-12" style="text-align: center">
                    <div style="padding-top: 30px; padding-bottom: 30px">
                        <p style="font-size: 24px;">How It's Work?</p>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-12">
                    <div style="text-align: center">
                        <h1>Select a template</h1>
                        <p>Choose a content creation template. Multiple templates are available for your all needs.</p>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-12">
                    <div style="text-align: center">
                        <h1>Fill the form</h1>
                        <p>Enter a detailed description of your content. Tell the AI what do you want.</p>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-12">
                    <div style="text-align: center">
                        <h1>Get your content</h1>
                        <p>Get a unique high quality content. The content is plagiarism free and you can use it anywhere.</p>
                    </div>
                </div>
            </div>

            <div class="row pt-5">
                <div class="col-lg-12">
                    <div style="text-align: center">
                        <h2>Templates</h2>
                        <p class="text-muted">Generate your required content with over 60+ content creation templates</p>
                    </div>
                </div>
            </div>
            <%-- AllTemplates Start --%>

            <div class="row" style="">
                <div class="col-md-12">
                    <div id="allTempHeadIndexPage">
                        <div class="btn-group rounded-pill" role="group" aria-label="Rounded pill example">
                            <button type="button" class="btnToggle" id="at">All Templates</button>
                            <button type="button" class="btnToggle" id="ab">Article And Blogs</button>
                            <button type="button" class="btnToggle" id="am">Ads And Marketing Tools</button>
                            <button type="button" class="btnToggle" id="gw">General Writing</button>
                            <button type="button" class="btnToggle" id="ec">ECommerce</button>
                            <button type="button" class="btnToggle" id="sm">Social Media</button>
                            <button type="button" class="btnToggle" id="ws">Website</button>
                            <button type="button" class="btnToggle" id="ot">Others</button>
                        </div>
                    </div>
                </div>
            </div>
            <%--All Templates Start--%>
            <div class="row mt-3" id="allTemp">
                <%-- articles and blogs --%>
                <div class="row" id="abp">
                    <div class="col-lg-12">
                        <div style="border-bottom: 1px solid grey;">
                            <h4>Article and Blogs</h4>
                        </div>
                    </div>

                    <div class="col-lg-4 aitempl">
                        <asp:LinkButton runat="server" OnClick="blogIdeas" class="templates-main">
                            <div class="dashboard-box ai-templates ">
                                <div class="content">
                                    <div class="ai-templates-icon">
                                        <i class="fa fa-comment arun"></i>
                                    </div>
                                    <h4 runat="server" id="conId">Blog Ideas</h4>
                                    <p runat="server" class="margin-bottom-0" id="conText">Article/blog ideas that you can use to generate more traffic, leads, and sales for your business.</p>
                                </div>
                            </div>
                        </asp:LinkButton>
                    </div>
                    <div class="col-lg-4 aitempl">
                        <asp:LinkButton runat="server" OnClick="blogIntro">
                                               <div class="dashboard-box ai-templates ">
                                                   <div class="content">
                                                       <div class="ai-templates-icon">
                                                           <i class="fa fa-align-left"></i>
                                                       </div>
                                                       <h4>Blog Intros</h4>
                                                       <p class="margin-bottom-0">Enticing article/blog introductions that capture the attention of the audience.</p>
                                                   </div>
                                               </div>
                        </asp:LinkButton>
                    </div>
                    <div class="col-lg-4 aitempl">
                        <asp:LinkButton runat="server" OnClick="blogTitle">
                                               <div class="dashboard-box ai-templates ">
                                                   <div class="content">
                                                       <div class="ai-templates-icon">
                                                           <i class="fa fa-ellipsis-h"></i>
                                                       </div>
                                                       <h4>Blog Titles</h4>
                                                       <p class="margin-bottom-0">Nobody wants to read boring blog titles, generate catchy blog titles with this tool.</p>
                                                   </div>
                                               </div>
                        </asp:LinkButton>
                    </div>


                    <div class="col-lg-4 aitempl">
                        <asp:LinkButton runat="server" OnClick="blogSection"
                            title="Upgrade your plan to use this template" data-tippy-placement="top">
                                               <div class="dashboard-box ai-templates ai-templates-pro">
                                                   <div class="content">
                                                       <div class="ai-templates-icon">
                                                           <i class="fa fa-book"></i>
                                                       </div>
                                                       <h4>Blog Section<span class="dashboard-status-button yellow"><i class="fa fa-gift"></i>Pro</span>
                                                       </h4>
                                                       <p class="margin-bottom-0">Write a few paragraphs about a subheading of your article.</p>
                                                   </div>
                                               </div>
                        </asp:LinkButton>
                    </div>
                    <div class="col-lg-4 aitempl">
                        <asp:LinkButton runat="server" OnClick="blogConclusion">
                                               <div class="dashboard-box ai-templates ">
                                                   <div class="content">
                                                       <div class="ai-templates-icon">
                                                           <i class="fa fa-check-square"></i>
                                                       </div>
                                                       <h4>Blog Conclusion</h4>
                                                       <p class="margin-bottom-0">Create powerful conclusion that will make a reader take action.</p>
                                                   </div>
                                               </div>
                        </asp:LinkButton>
                    </div>
                    <div class="col-lg-4 aitempl">
                        <asp:LinkButton runat="server" OnClick="articleWriter"
                            title="Upgrade your plan to use this template" data-tippy-placement="top" class="templates-main">
                                               <div class="dashboard-box ai-templates ai-templates-pro">
                                                   <div class="content">
                                                       <div class="ai-templates-icon">
                                                           <i class="fa fa-pencil-square"></i>
                                                       </div>
                                                       <h4>Article Writer<span class="dashboard-status-button yellow"><i class="fa fa-gift"></i>Pro</span>
                                                       </h4>
                                                       <p class="margin-bottom-0">Create a fully complete high quality article from a title and outline text.</p>
                                                   </div>
                                               </div>
                        </asp:LinkButton>
                    </div>


                    <div class="col-lg-4 aitempl">
                        <asp:LinkButton runat="server" OnClick="articleRewriter">
                                               <div class="dashboard-box ai-templates ">
                                                   <div class="content">
                                                       <div class="ai-templates-icon">
                                                           <i class="fa fa-pencil-square-o" aria-hidden="true"></i>
                                                       </div>
                                                       <h4>Article Rewriter</h4>
                                                       <p class="margin-bottom-0">Copy an article, paste it in to the program, and with just one click you'll have an entirely different article to read.</p>
                                                   </div>
                                               </div>
                        </asp:LinkButton>
                    </div>
                    <div class="col-lg-4 aitempl">
                        <asp:LinkButton runat="server" OnClick="articleOutlines">
                                               <div class="dashboard-box ai-templates ">
                                                   <div class="content">
                                                       <div class="ai-templates-icon">
                                                           <i class="fa fa-list-ul"></i>
                                                       </div>
                                                       <h4>Article Outlines</h4>
                                                       <p class="margin-bottom-0">Detailed article outlines that help you write better content on a consistent basis.</p>
                                                   </div>
                                               </div>
                        </asp:LinkButton>
                    </div>
                    <div class="col-lg-4 aitempl">
                        <asp:LinkButton runat="server" OnClick="talkingPoint">
                                               <div class="dashboard-box ai-templates ">
                                                   <div class="content">
                                                       <div class="ai-templates-icon">
                                                           <i class="fa fa-list-ol"></i>
                                                       </div>
                                                       <h4>Talking Points</h4>
                                                       <p class="margin-bottom-0">Write short, simple and informative points for the subheadings of your article</p>
                                                   </div>
                                               </div>
                        </asp:LinkButton>
                    </div>


                    <div class="col-lg-4 aitempl">
                        <asp:LinkButton runat="server" OnClick="paragraphWriter"
                            title="Upgrade your plan to use this template" data-tippy-placement="top">
                                               <div class="dashboard-box ai-templates ai-templates-pro">
                                                   <div class="content">
                                                       <div class="ai-templates-icon">
                                                           <i class="fa fa-align-justify"></i>
                                                       </div>
                                                       <h4>Paragraph Writer<span class="dashboard-status-button yellow"><i
                                                           class="fa fa-gift"></i>Pro</span>
                                                       </h4>
                                                       <p class="margin-bottom-0">Perfectly structured paragraphs that are easy to read and packed with persuasive words.</p>
                                                   </div>
                                               </div>
                        </asp:LinkButton>
                    </div>
                    <div class="col-lg-4 aitempl">
                        <asp:LinkButton runat="server" OnClick="contentRephrase">
                                               <div class="dashboard-box ai-templates ">
                                                   <div class="content">
                                                       <div class="ai-templates-icon">
                                                           <i class="fa fa-refresh"></i>
                                                       </div>
                                                       <h4>Content Rephrase</h4>
                                                       <p class="margin-bottom-0">Rephrase your content in a different voice and style to appeal to different readers.</p>
                                                   </div>
                                               </div>
                        </asp:LinkButton>
                    </div>

                </div>
                <%-- ads and marketing tools --%>
                <div class="row" id="amt">
                    <div class="col-lg-12 col-md-12">
                        <div style="border-bottom: 1px solid grey;">
                            <h4>Ads And Marketing Tools</h4>
                        </div>
                    </div>
                    <hr />
                    <div class="col-lg-4 aitempl">
                        <asp:LinkButton runat="server" OnClick="facebookAds">
                                               <div class="dashboard-box ai-templates ">
                                                   <div class="content">
                                                       <div class="ai-templates-icon">
                                                           <i class="fa fa-facebook-official"></i>
                                                       </div>
                                                       <h4>Facebook Ads</h4>
                                                       <p class="margin-bottom-0">Facebook ad copies that make your ads truly stand out.</p>
                                                   </div>
                                               </div>
                        </asp:LinkButton>
                    </div>
                    <div class="col-lg-4 aitempl">
                        <asp:LinkButton runat="server" OnClick="facebookAdsHeadLines">
                                               <div class="dashboard-box ai-templates ">
                                                   <div class="content">
                                                       <div class="ai-templates-icon">
                                                           <i class="fa fa-facebook-square"></i>
                                                       </div>
                                                       <h4>Facebook Ads Headlines</h4>
                                                       <p class="margin-bottom-0">Write catchy and convincing headlines to make your Facebook Ads stand out.</p>
                                                   </div>
                                               </div>
                        </asp:LinkButton>
                    </div>
                    <div class="col-lg-4 aitempl">
                        <asp:LinkButton runat="server" OnClick="GoogleAdTitle"
                            title="Upgrade your plan to use this template" data-tippy-placement="top">
                                               <div class="dashboard-box ai-templates ai-templates-pro">
                                                   <div class="content">
                                                       <div class="ai-templates-icon">
                                                           <i class="fa fa-google"></i>
                                                       </div>
                                                       <h4>Google Ad Titles<span class="dashboard-status-button yellow"><i class="fa fa-gift"></i>Pro</span>
                                                       </h4>
                                                       <p class="margin-bottom-0">Creating ads with unique and appealing titles that entice people to click on your ad and purchase from your site.</p>
                                                   </div>
                                               </div>
                        </asp:LinkButton>
                    </div>


                    <div class="col-lg-4 aitempl">
                        <asp:LinkButton runat="server" OnClick="GoogleAdDesc"
                            title="Upgrade your plan to use this template" data-tippy-placement="top">
                                               <div class="dashboard-box ai-templates ai-templates-pro">
                                                   <div class="content">
                                                       <div class="ai-templates-icon">
                                                           <i class="fa fa-google"></i>
                                                       </div>
                                                       <h4>Google Ad Descriptions<span class="dashboard-status-button yellow"><i class="fa fa-gift"></i>Pro</span>
                                                       </h4>
                                                       <p class="margin-bottom-0">The best-performing Google ad copy converts visitors into customers.</p>
                                                   </div>
                                               </div>
                        </asp:LinkButton>
                    </div>
                    <div class="col-lg-4 aitempl">
                        <asp:LinkButton runat="server" OnClick="LinkedInAdHeadLines">
                                               <div class="dashboard-box ai-templates ">
                                                   <div class="content">
                                                       <div class="ai-templates-icon">
                                                           <i class="fa fa-linkedin"></i>
                                                       </div>
                                                       <h4>LinkedIn Ad Headlines</h4>
                                                       <p class="margin-bottom-0">Attention-grabbing, click-inducing, and high-converting ad headlines for Linkedin.</p>
                                                   </div>
                                               </div>
                        </asp:LinkButton>
                    </div>
                    <div class="col-lg-4 aitempl">
                        <asp:LinkButton runat="server" OnClick="LinkedAdDesc">
                                               <div class="dashboard-box ai-templates ">
                                                   <div class="content">
                                                       <div class="ai-templates-icon">
                                                           <i class="fa fa-linkedin"></i>
                                                       </div>
                                                       <h4>LinkedIn Ad Descriptions</h4>
                                                       <p class="margin-bottom-0">Professional and eye-catching ad descriptions that will make your product shine.</p>
                                                   </div>
                                               </div>
                        </asp:LinkButton>
                    </div>


                    <div class="col-lg-4 aitempl">
                        <asp:LinkButton runat="server" OnClick="appsAndSms">
                                               <div class="dashboard-box ai-templates ">
                                                   <div class="content">
                                                       <div class="ai-templates-icon">
                                                           <i class="fa fa-bell"></i>
                                                       </div>
                                                       <h4>App and SMS Notifications</h4>
                                                       <p class="margin-bottom-0">Notification messages for your apps, websites, and mobile devices that keep users coming back for more.</p>
                                                   </div>
                                               </div>
                        </asp:LinkButton>
                    </div>


                </div>
                <%-- general writing --%>
                <div class="row" id="gwg">
                    <div class="col-lg-12 col-md-12">
                        <div style="border-bottom: 1px solid grey;">
                            <h4>General Writing</h4>
                        </div>
                    </div>
                    <hr />
                    <div class="col-lg-4 aitempl">
                        <asp:LinkButton runat="server" OnClick="TextExtender">
                                               <div class="dashboard-box ai-templates ">
                                                   <div class="content">
                                                       <div class="ai-templates-icon">
                                                           <i class="fa fa-text-width"></i>
                                                       </div>
                                                       <h4>Text Extender</h4>
                                                       <p class="margin-bottom-0">Extend short sentences into more descriptive and interesting ones.</p>
                                                   </div>
                                               </div>
                        </asp:LinkButton>
                    </div>
                    <div class="col-lg-4 aitempl">
                        <asp:LinkButton runat="server" OnClick="contentShorten">
                                               <div class="dashboard-box ai-templates ">
                                                   <div class="content">
                                                       <div class="ai-templates-icon">
                                                           <i class="fa fa-text-width"></i>
                                                       </div>
                                                       <h4>Content Shorten</h4>
                                                       <p class="margin-bottom-0">Short your content in a different voice and style to appeal to different readers.</p>
                                                   </div>
                                               </div>
                        </asp:LinkButton>
                    </div>
                    <div class="col-lg-4 aitempl">
                        <asp:LinkButton runat="server" OnClick="quoraAnswer"
                            title="Upgrade your plan to use this template" data-tippy-placement="top">
                                               <div class="dashboard-box ai-templates ai-templates-pro">
                                                   <div class="content">
                                                       <div class="ai-templates-icon">
                                                           <i class="fa fa-quora"></i>
                                                       </div>
                                                       <h4>Quora Answers<span class="dashboard-status-button yellow"><i
                                                           class="fa fa-gift"></i>Pro</span>
                                                       </h4>
                                                       <p class="margin-bottom-0">Answers to Quora questions that will position you as an authority.</p>
                                                   </div>
                                               </div>
                        </asp:LinkButton>
                    </div>


                    <div class="col-lg-4 aitempl">
                        <asp:LinkButton runat="server" OnClick="summarizeFor2nd">
                                               <div class="dashboard-box ai-templates ">
                                                   <div class="content">
                                                       <div class="ai-templates-icon">
                                                           <i class="fa fa-child"></i>
                                                       </div>
                                                       <h4>Summarize for a 2nd grader</h4>
                                                       <p class="margin-bottom-0">Translates difficult text into simpler concepts.</p>
                                                   </div>
                                               </div>
                        </asp:LinkButton>
                    </div>
                    <div class="col-lg-4 aitempl">
                        <asp:LinkButton runat="server" OnClick="stories"
                            title="Upgrade your plan to use this template" data-tippy-placement="top">
                                               <div class="dashboard-box ai-templates ai-templates-pro">
                                                   <div class="content">
                                                       <div class="ai-templates-icon">
                                                           <i class="fa fa-heart-o"></i>
                                                       </div>
                                                       <h4>Stories<span class="dashboard-status-button yellow"><i class="fa fa-gift"></i>Pro</span></h4>
                                                       <p class="margin-bottom-0">Engaging and persuasive stories that will capture your reader's attention and interest.</p>
                                                   </div>
                                               </div>
                        </asp:LinkButton>
                    </div>
                    <div class="col-lg-4 aitempl">
                        <asp:LinkButton runat="server" OnClick="bulletPointAnswers">
                                               <div class="dashboard-box ai-templates ">
                                                   <div class="content">
                                                       <div class="ai-templates-icon">
                                                           <i class="fa fa-list"></i>
                                                       </div>
                                                       <h4>Bullet Point Answers</h4>
                                                       <p class="margin-bottom-0">Precise and informative bullet points that provide quick and valuable answers to your customers' questions.</p>
                                                   </div>
                                               </div>
                        </asp:LinkButton>
                    </div>


                    <div class="col-lg-4 aitempl">
                        <asp:LinkButton runat="server" OnClick="definition">
                                               <div class="dashboard-box ai-templates ">
                                                   <div class="content">
                                                       <div class="ai-templates-icon">
                                                           <i class="fa fa-tasks"></i>
                                                       </div>
                                                       <h4>Definition</h4>
                                                       <p class="margin-bottom-0">A definition for a word, phrase, or acronym that's used often by your target buyers.</p>
                                                   </div>
                                               </div>
                        </asp:LinkButton>
                    </div>
                    <div class="col-lg-4 aitempl">
                        <asp:LinkButton runat="server" OnClick="answers">
                                               <div class="dashboard-box ai-templates ">
                                                   <div class="content">
                                                       <div class="ai-templates-icon">
                                                           <i class="fa fa-check-circle"></i>
                                                       </div>
                                                       <h4>Answers</h4>
                                                       <p class="margin-bottom-0">Instant, quality answers to any questions or concerns that your audience might have.</p>
                                                   </div>
                                               </div>
                        </asp:LinkButton>
                    </div>
                    <div class="col-lg-4 aitempl">
                        <asp:LinkButton runat="server" OnClick="questions">
                                               <div class="dashboard-box ai-templates ">
                                                   <div class="content">
                                                       <div class="ai-templates-icon">
                                                           <i class="fa fa-question-circle"></i>
                                                       </div>
                                                       <h4>Questions</h4>
                                                       <p class="margin-bottom-0">A tool to create engaging questions and polls that increase audience participation and engagement.</p>
                                                   </div>
                                               </div>
                        </asp:LinkButton>
                    </div>


                    <div class="col-lg-4 aitempl">
                        <asp:LinkButton runat="server" OnClick="passiveToActive">
                                               <div class="dashboard-box ai-templates ">
                                                   <div class="content">
                                                       <div class="ai-templates-icon">
                                                           <i class="fa fa-sort-alpha-desc"></i>
                                                       </div>
                                                       <h4>Passive to Active Voice</h4>
                                                       <p class="margin-bottom-0">Easy and quick solution to converting your passive voice sentences into active voice sentences.</p>
                                                   </div>
                                               </div>
                        </asp:LinkButton>
                    </div>
                    <div class="col-lg-4 aitempl">
                        <asp:LinkButton runat="server" OnClick="prosAndCons"
                            title="Upgrade your plan to use this template" data-tippy-placement="top">
                                               <div class="dashboard-box ai-templates ai-templates-pro">
                                                   <div class="content">
                                                       <div class="ai-templates-icon">
                                                           <i class="fa fa-key"></i>
                                                       </div>
                                                       <h4>Pros and Cons<span class="dashboard-status-button yellow"><i
                                                           class="fa fa-gift"></i>Pro</span>
                                                       </h4>
                                                       <p class="margin-bottom-0">List of the main benefits versus the most common problems and concerns.</p>
                                                   </div>
                                               </div>
                        </asp:LinkButton>
                    </div>
                    <div class="col-lg-4 aitempl">
                        <asp:LinkButton runat="server" OnClick="rewriteWithKeywords"
                            title="Upgrade your plan to use this template" data-tippy-placement="top">
                                               <div class="dashboard-box ai-templates ai-templates-pro">
                                                   <div class="content">
                                                       <div class="ai-templates-icon">
                                                           <i class="fa fa-refresh"></i>
                                                       </div>
                                                       <h4>Rewrite With Keywords<span class="dashboard-status-button yellow"><i class="fa fa-gift"></i>Pro</span></h4>
                                                       <p class="margin-bottom-0">Rewrite your existing content to include more keywords and boost your search engine rankings.</p>
                                                   </div>
                                               </div>
                        </asp:LinkButton>
                    </div>


                    <div class="col-lg-4 aitempl">
                        <asp:LinkButton runat="server" OnClick="emails"
                            title="Upgrade your plan to use this template" data-tippy-placement="top">
                                               <div class="dashboard-box ai-templates ai-templates-pro">
                                                   <div class="content">
                                                       <div class="ai-templates-icon">
                                                           <i class="fa fa-envelope"></i>
                                                       </div>
                                                       <h4>Emails<span class="dashboard-status-button yellow"><i class="fa fa-gift"></i>Pro</span></h4>
                                                       <p class="margin-bottom-0">Professional-looking emails that help you engage leads and customers.</p>
                                                   </div>
                                               </div>
                        </asp:LinkButton>
                    </div>
                    <div class="col-lg-4 aitempl">
                        <asp:LinkButton runat="server" OnClick="emailsv2"
                            title="Upgrade your plan to use this template" data-tippy-placement="top">
                                               <div class="dashboard-box ai-templates ai-templates-pro">
                                                   <div class="content">
                                                       <div class="ai-templates-icon">
                                                           <i class="fa fa-envelope"></i>
                                                       </div>
                                                       <h4>Emails V2<span class="dashboard-status-button yellow"><i class="fa fa-gift"></i>Pro</span></h4>
                                                       <p class="margin-bottom-0">Personalized email outreach to your target prospects that get better results.</p>
                                                   </div>
                                               </div>
                        </asp:LinkButton>
                    </div>
                    <div class="col-lg-4 aitempl">
                        <asp:LinkButton runat="server" OnClick="emailsSubjectLine">
                                               <div class="dashboard-box ai-templates ">
                                                   <div class="content">
                                                       <div class="ai-templates-icon">
                                                           <i class="fa fa-envelope-open-o"></i>
                                                       </div>
                                                       <h4>Email Subject Lines</h4>
                                                       <p class="margin-bottom-0">Powerful email subject lines that increase open rates.</p>
                                                   </div>
                                               </div>
                        </asp:LinkButton>
                    </div>


                    <div class="col-lg-4 aitempl">
                        <asp:LinkButton runat="server" OnClick="startupNameGenerator">
                                               <div class="dashboard-box ai-templates ">
                                                   <div class="content">
                                                       <div class="ai-templates-icon">
                                                           <i class="fa fa-bullhorn"></i>
                                                       </div>
                                                       <h4>Startup Name Generator</h4>
                                                       <p class="margin-bottom-0">Generate cool, creative, and catchy names for your startup in seconds.</p>
                                                   </div>
                                               </div>
                        </asp:LinkButton>
                    </div>
                    <div class="col-lg-4 aitempl">
                        <asp:LinkButton runat="server" OnClick="companyBios">
                                               <div class="dashboard-box ai-templates ">
                                                   <div class="content">
                                                       <div class="ai-templates-icon">
                                                           <i class="fa fa-file-text"></i>
                                                       </div>
                                                       <h4>Company Bios</h4>
                                                       <p class="margin-bottom-0">Short and sweet company bio that will help you connect with your target audience.</p>
                                                   </div>
                                               </div>
                        </asp:LinkButton>
                    </div>
                    <div class="col-lg-4 aitempl">
                        <asp:LinkButton runat="server" OnClick="companyMission"
                            title="Upgrade your plan to use this template" data-tippy-placement="top">
                                               <div class="dashboard-box ai-templates ai-templates-pro">
                                                   <div class="content">
                                                       <div class="ai-templates-icon">
                                                           <i class="fa fa-file-text-o"></i>
                                                       </div>
                                                       <h4>Company Mission<span class="dashboard-status-button yellow"><i class="fa fa-gift"></i>Pro</span></h4>
                                                       <p class="margin-bottom-0">A clear and concise statement of your company's goals and purpose.</p>
                                                   </div>
                                               </div>
                        </asp:LinkButton>
                    </div>


                    <div class="col-lg-4 aitempl">
                        <asp:LinkButton runat="server" OnClick="companyVision"
                            title="Upgrade your plan to use this template" data-tippy-placement="top">
                                               <div class="dashboard-box ai-templates ai-templates-pro">
                                                   <div class="content">
                                                       <div class="ai-templates-icon">
                                                           <i class="fa fa-align-left"></i>
                                                       </div>
                                                       <h4>Company Vision<span class="dashboard-status-button yellow"><i class="fa fa-gift"></i>Pro</span></h4>
                                                       <p class="margin-bottom-0">A vision that attracts the right people, clients, and employees.</p>
                                                   </div>
                                               </div>
                        </asp:LinkButton>
                    </div>

                </div>
                <%-- ecommerce --%>
                <div class="row" id="ece">
                    <div class="col-lg-12 col-md-12">
                        <div style="border-bottom: 1px solid grey;">
                            <h4>Ecommerce</h4>
                        </div>
                    </div>
                    <hr />
                    <div class="col-lg-4 aitempl">
                        <asp:LinkButton runat="server" OnClick="productNameGenerator">
                                               <div class="dashboard-box ai-templates ">
                                                   <div class="content">
                                                       <div class="ai-templates-icon">
                                                           <i class="fa fa-gift"></i>
                                                       </div>
                                                       <h4>Product Name Generator</h4>
                                                       <p class="margin-bottom-0">Create creative product names from examples words.</p>
                                                   </div>
                                               </div>
                        </asp:LinkButton>
                    </div>
                    <div class="col-lg-4 aitempl">
                        <asp:LinkButton runat="server" OnClick="productDescription">
                                               <div class="dashboard-box ai-templates ">
                                                   <div class="content">
                                                       <div class="ai-templates-icon">
                                                           <i class="fa fa-gift"></i>
                                                       </div>
                                                       <h4>Product Descriptions</h4>
                                                       <p class="margin-bottom-0">Authentic product descriptions that will compel, inspire, and influence.</p>
                                                   </div>
                                               </div>
                        </asp:LinkButton>
                    </div>
                    <div class="col-lg-4 aitempl">
                        <asp:LinkButton runat="server" OnClick="amazonProductTitles"
                            title="Upgrade your plan to use this template" data-tippy-placement="top">
                                               <div class="dashboard-box ai-templates ai-templates-pro">
                                                   <div class="content">
                                                       <div class="ai-templates-icon">
                                                           <i class="fa fa-amazon"></i>
                                                       </div>
                                                       <h4>Amazon Product Titles<span class="dashboard-status-button yellow"><i
                                                           class="fa fa-gift"></i>Pro</span>
                                                       </h4>
                                                       <p class="margin-bottom-0">Product titles that will make your product stand out in a sea of competition.</p>
                                                   </div>
                                               </div>
                        </asp:LinkButton>
                    </div>

                    <div class="col-lg-4 aitempl">
                        <asp:LinkButton runat="server" OnClick="amazonProductDesc"
                            title="Upgrade your plan to use this template" data-tippy-placement="top">
                                               <div class="dashboard-box ai-templates ai-templates-pro">
                                                   <div class="content">
                                                       <div class="ai-templates-icon">
                                                           <i class="fa fa-amazon"></i>
                                                       </div>
                                                       <h4>Amazon Product Descriptions<span class="dashboard-status-button yellow"><i
                                                           class="fa fa-gift"></i>Pro</span>
                                                       </h4>
                                                       <p class="margin-bottom-0">Descriptions for Amazon products that rank on the first page of the search results.</p>
                                                   </div>
                                               </div>
                        </asp:LinkButton>
                    </div>
                    <div class="col-lg-4 aitempl">
                        <asp:LinkButton runat="server" OnClick="amazonProductFeatures"
                            title="Upgrade your plan to use this template" data-tippy-placement="top">
                                               <div class="dashboard-box ai-templates ai-templates-pro">
                                                   <div class="content">
                                                       <div class="ai-templates-icon">
                                                           <i class="fa fa-amazon"></i>
                                                       </div>
                                                       <h4>Amazon Product Features<span class="dashboard-status-button yellow"><i
                                                           class="fa fa-gift"></i>Pro</span>
                                                       </h4>
                                                       <p class="margin-bottom-0">Advantages and features of your products that will make them irresistible to shoppers.</p>
                                                   </div>
                                               </div>
                        </asp:LinkButton>
                    </div>

                </div>
                <%-- social media --%>
                <div class="row " id="sma">
                    <div class="col-lg-12 col-md-12">
                        <div style="border-bottom: 1px solid grey;">
                            <h4>Social Media</h4>
                        </div>
                    </div>
                    <hr />
                    <div class="col-lg-4 aitempl">
                        <asp:LinkButton runat="server" OnClick="socialMediaPostPersonal">
                                               <div class="dashboard-box ai-templates ">
                                                   <div class="content">
                                                       <div class="ai-templates-icon">
                                                           <i class="fa fa-facebook"></i>
                                                       </div>
                                                       <h4>Social Media Post (Personal)</h4>
                                                       <p class="margin-bottom-0">Write a social media post for yourself to be published on any platform.</p>
                                                   </div>
                                               </div>
                        </asp:LinkButton>
                    </div>
                    <div class="col-lg-4 aitempl">
                        <asp:LinkButton runat="server" OnClick="socialMediaPostBusiness"
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
                        </asp:LinkButton>
                    </div>
                    <div class="col-lg-4 aitempl">
                        <asp:LinkButton runat="server" OnClick="instagramCaptions">
                                               <div class="dashboard-box ai-templates ">
                                                   <div class="content">
                                                       <div class="ai-templates-icon">
                                                           <i class="fa fa-instagram"></i>
                                                       </div>
                                                       <h4>Instagram Captions</h4>
                                                       <p class="margin-bottom-0">Captions that turn your images into attention-grabbing Instagram posts.</p>
                                                   </div>
                                               </div>
                        </asp:LinkButton>
                    </div>

                    <div class="col-lg-4 aitempl">
                        <asp:LinkButton runat="server" OnClick="instagramHashtags"
                            title="Upgrade your plan to use this template" data-tippy-placement="top">
                                               <div class="dashboard-box ai-templates ai-templates-pro">
                                                   <div class="content">
                                                       <div class="ai-templates-icon">
                                                           <i class="fa fa-instagram"></i>
                                                       </div>
                                                       <h4>Instagram Hashtags<span class="dashboard-status-button yellow"><i class="fa fa-gift"></i>Pro</span></h4>
                                                       <p class="margin-bottom-0">Trending and highly relevant hashtags to help you get more followers and engagement.</p>
                                                   </div>
                                               </div>
                        </asp:LinkButton>
                    </div>
                    <div class="col-lg-4 aitempl">
                        <asp:LinkButton runat="server" OnClick="twitter">
                                               <div class="dashboard-box ai-templates ">
                                                   <div class="content">
                                                       <div class="ai-templates-icon">
                                                           <i class="fa fa-twitter"></i>
                                                       </div>
                                                       <h4>Twitter Tweets</h4>
                                                       <p class="margin-bottom-0">Generate tweets using AI, that are relevant and on-trend.</p>
                                                   </div>
                                               </div>
                        </asp:LinkButton>
                    </div>
                    <div class="col-lg-4 aitempl">
                        <asp:LinkButton runat="server" OnClick="youtubeTitles">
                                               <div class="dashboard-box ai-templates ">
                                                   <div class="content">
                                                       <div class="ai-templates-icon">
                                                           <i class="fa fa-youtube-play"></i>
                                                       </div>
                                                       <h4>YouTube Titles</h4>
                                                       <p class="margin-bottom-0">Catchy titles that attract more views and increase the number of shares.</p>
                                                   </div>
                                               </div>
                        </asp:LinkButton>
                    </div>

                    <div class="col-lg-4 aitempl">
                        <asp:LinkButton runat="server" OnClick="youtubeDesc"
                            title="Upgrade your plan to use this template" data-tippy-placement="top">
                                               <div class="dashboard-box ai-templates ai-templates-pro">
                                                   <div class="content">
                                                       <div class="ai-templates-icon">
                                                           <i class="fa fa-youtube-play"></i>
                                                       </div>
                                                       <h4>YouTube Descriptions<span class="dashboard-status-button yellow"><i class="fa fa-gift"></i>Pro</span></h4>
                                                       <p class="margin-bottom-0">Catchy and persuasive YouTube descriptions that help your videos rank higher.</p>
                                                   </div>
                                               </div>
                        </asp:LinkButton>
                    </div>
                    <div class="col-lg-4 aitempl">
                        <asp:LinkButton runat="server" OnClick="youtubeOutline"
                            title="Upgrade your plan to use this template" data-tippy-placement="top">
                                               <div class="dashboard-box ai-templates ai-templates-pro">
                                                   <div class="content">
                                                       <div class="ai-templates-icon">
                                                           <i class="fa fa-youtube-play"></i>
                                                       </div>
                                                       <h4>YouTube Outlines<span class="dashboard-status-button yellow"><i class="fa fa-gift"></i>Pro</span></h4>
                                                       <p class="margin-bottom-0">Video outlines that are a breeze to create and uber-engaging.</p>
                                                   </div>
                                               </div>
                        </asp:LinkButton>
                    </div>
                    <div class="col-lg-4 aitempl">
                        <asp:LinkButton runat="server" OnClick="linkedInPost">
                                               <div class="dashboard-box ai-templates ">
                                                   <div class="content">
                                                       <div class="ai-templates-icon">
                                                           <i class="fa fa-linkedin"></i>
                                                       </div>
                                                       <h4>LinkedIn Posts</h4>
                                                       <p class="margin-bottom-0">Inspiring LinkedIn posts that will help you build trust and authority in your industry.</p>
                                                   </div>
                                               </div>
                        </asp:LinkButton>
                    </div>

                    <div class="col-lg-4 aitempl">
                        <asp:LinkButton runat="server" OnClick="TiktokVideoScript"
                            title="Upgrade your plan to use this template" data-tippy-placement="top">
                                               <div class="dashboard-box ai-templates ai-templates-pro">
                                                   <div class="content">
                                                       <div class="ai-templates-icon">
                                                           <i class="fa fa-film"></i>
                                                       </div>
                                                       <h4>TikTok Video Scripts<span class="dashboard-status-button yellow"><i
                                                           class="fa fa-gift"></i>Pro</span>
                                                       </h4>
                                                       <p class="margin-bottom-0">Video scripts that are ready to shoot and will make you go viral.</p>
                                                   </div>
                                               </div>
                        </asp:LinkButton>
                    </div>

                </div>
                <%-- website --%>
                <div class="row" id="webe">
                    <div class="col-lg-12 col-md-12">
                        <div style="border-bottom: 1px solid grey;">
                            <h4>Website</h4>
                        </div>
                    </div>
                    <hr />
                    <div class="col-lg-4 aitempl">
                        <asp:LinkButton runat="server" OnClick="smtBlog" title="Upgrade your plan to use this template" data-tippy-placement="top">
                                               <div class="dashboard-box ai-templates ai-templates-pro">
                                                   <div class="content">
                                                       <div class="ai-templates-icon">
                                                           <i class="fa fa-google"></i>
                                                       </div>
                                                       <h4>SEO Meta Tags (Blog Post)<span class="dashboard-status-button yellow"><i class="fa fa-gift"></i>Pro</span> </h4>
                                                       <p class="margin-bottom-0">A set of optimized meta title and meta description tags that will boost your search rankings for your blog.</p>
                                                   </div>
                                               </div>
                        </asp:LinkButton>
                    </div>
                    <div class="col-lg-4 aitempl">
                        <asp:LinkButton runat="server" OnClick="smtHome"
                            title="Upgrade your plan to use this template" data-tippy-placement="top">
                                               <div class="dashboard-box ai-templates ai-templates-pro">
                                                   <div class="content">
                                                       <div class="ai-templates-icon">
                                                           <i class="fa fa-google"></i>
                                                       </div>
                                                       <h4>SEO Meta Tags (Homepage)<span class="dashboard-status-button yellow"><i class="fa fa-gift"></i>Pro</span></h4>
                                                       <p class="margin-bottom-0">A set of optimized meta title and meta description tags that will boost your search rankings for your home page.</p>
                                                   </div>
                                               </div>
                        </asp:LinkButton>
                    </div>
                    <div class="col-lg-4 aitempl">
                        <asp:LinkButton runat="server" OnClick="smtProduct"
                            title="Upgrade your plan to use this template" data-tippy-placement="top">
                                               <div class="dashboard-box ai-templates ai-templates-pro">
                                                   <div class="content">
                                                       <div class="ai-templates-icon">
                                                           <i class="fa fa-google"></i>
                                                       </div>
                                                       <h4>SEO Meta Tags (Product Page)<span class="dashboard-status-button yellow"><i class="fa fa-gift"></i>Pro</span></h4>
                                                       <p class="margin-bottom-0">A set of optimized meta title and meta description tags that will boost your search rankings for your product page.</p>
                                                   </div>
                                               </div>
                        </asp:LinkButton>
                    </div>

                </div>
                <%-- others --%>
                <div class="row" id="oth">
                    <div class="col-lg-12 col-md-12">
                        <div style="border-bottom: 1px solid grey;">
                            <h4>Other</h4>
                        </div>
                    </div>
                    <hr />
                    <div class="col-lg-4 aitempl">
                        <asp:LinkButton runat="server" OnClick="toneChanger"
                            title="Upgrade your plan to use this template" data-tippy-placement="top">
                                               <div class="dashboard-box ai-templates ai-templates-pro">
                                                   <div class="content">
                                                       <div class="ai-templates-icon">
                                                           <i class="fa fa-refresh"></i>
                                                       </div>
                                                       <h4>Tone Changer<span class="dashboard-status-button yellow"><i class="fa fa-gift"></i>Pro</span></h4>
                                                       <p class="margin-bottom-0">Change the tone of your writing to match your audience and copy.</p>
                                                   </div>
                                               </div>
                        </asp:LinkButton>
                    </div>
                    <div class="col-lg-4 aitempl">
                        <asp:LinkButton runat="server" OnClick="songLyrics"
                            title="Upgrade your plan to use this template" data-tippy-placement="top">
                                               <div class="dashboard-box ai-templates ai-templates-pro">
                                                   <div class="content">
                                                       <div class="ai-templates-icon">
                                                           <i class="fa fa-music"></i>
                                                       </div>
                                                       <h4>Song Lyrics<span class="dashboard-status-button yellow"><i class="fa fa-gift"></i>Pro</span></h4>
                                                       <p class="margin-bottom-0">Unique song lyrics that will be perfect for your next hit song.</p>
                                                   </div>
                                               </div>
                        </asp:LinkButton>
                    </div>
                    <div class="col-lg-4 aitempl">
                        <asp:LinkButton runat="server" OnClick="translate">
                                               <div class="dashboard-box ai-templates ">
                                                   <div class="content">
                                                       <div class="ai-templates-icon">
                                                           <i class="fa fa-language"></i>
                                                       </div>
                                                       <h4>Translate</h4>
                                                       <p class="margin-bottom-0">Translate your content into any language you want.</p>
                                                   </div>
                                               </div>
                        </asp:LinkButton>
                    </div>

                    <div class="col-lg-4 aitempl">
                        <asp:LinkButton runat="server" OnClick="faqMet"
                            title="Upgrade your plan to use this template" data-tippy-placement="top">
                                               <div class="dashboard-box ai-templates ai-templates-pro">
                                                   <div class="content">
                                                       <div class="ai-templates-icon">
                                                           <i class="fa fa-question-circle-o"></i>
                                                       </div>
                                                       <h4>FAQs<span class="dashboard-status-button yellow"><i class="fa fa-gift"></i>Pro</span></h4>
                                                       <p class="margin-bottom-0">Generate frequently asked questions based on your product description.</p>
                                                   </div>
                                               </div>
                        </asp:LinkButton>
                    </div>
                    <div class="col-lg-4 aitempl">
                        <asp:LinkButton runat="server" OnClick="faqAnswer"
                            title="Upgrade your plan to use this template" data-tippy-placement="top">
                                               <div class="dashboard-box ai-templates ai-templates-pro">
                                                   <div class="content">
                                                       <div class="ai-templates-icon">
                                                           <i class="fa fa-question-circle-o"></i>
                                                       </div>
                                                       <h4>FAQ Answers<span class="dashboard-status-button yellow"><i class="fa fa-gift"></i>Pro</span></h4>
                                                       <p class="margin-bottom-0">Generate creative answers to questions (FAQs) about your business or website.</p>
                                                   </div>
                                               </div>
                        </asp:LinkButton>
                    </div>
                    <div class="col-lg-4 aitempl">
                        <asp:LinkButton runat="server" OnClick="testimonialReview" title="Upgrade your plan to use this template" data-tippy-placement="top">
                                               <div class="dashboard-box ai-templates ai-templates-pro">
                                                   <div class="content">
                                                       <div class="ai-templates-icon">
                                                           <i class="fa fa-star-half-o"></i>
                                                       </div>
                                                       <h4>Testimonials / Reviews<span class="dashboard-status-button yellow"><i class="fa fa-gift"></i>Pro</span></h4>
                                                       <p class="margin-bottom-0">Add social proof to your website by generating user testimonials.</p>
                                                   </div>
                                               </div>
                        </asp:LinkButton>
                    </div>

                </div>
            </div>

            <%--All Templates End--%>

            <%-- Membership Plan --%>
            <%-- Change Plan Stuff --%>
            <div id="changePlan">
                <div class="row" style="padding-top: 40px; margin-bottom: 40px">
                    <div class="col-lg-12">
                        <div style="text-align: center;">
                            <div style="margin-bottom: 40px">
                                <h3>Membership</h3>
                            </div>
                            <asp:RadioButtonList ID="timePeriod" runat="server" RepeatLayout="Flow" RepeatDirection="Horizontal">
                                <asp:ListItem Text="Monthly" runat="server" GroupName="rd" Value="1" id="monthly" Selected="True"></asp:ListItem>
                                <asp:ListItem Text="Yearly" runat="server" GroupName="rd" Value="2" id="yearly"></asp:ListItem>
                                <asp:ListItem Text="Lifetime" runat="server" GroupName="rd" Value="3" id="Lifetime"></asp:ListItem>
                            </asp:RadioButtonList>
                        </div>
                    </div>
                    <%-- Plan Scheme duration --%>
                </div>
                <div class="row" style="background: white; padding-bottom: 20px">
                    <%-- Free Trial --%>
                    <div class="col-lg-4">
                        <div style="">
                            <p class="font-weight-normal">Membership Plan</p>
                            <div id="frp" style="height: 70px; background-color: lightgrey; padding-top: 20px; padding-bottom: 20px">
                                <p class="font-weight-normal" style="text-align: center">Free</p>
                            </div>
                            <%--  --%>
                            <div class="pricing-plan-features">
                                <strong>Features of&nbsp;Free Plan</strong>
                                <ul style="padding: 0px">
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
                                <asp:Button runat="server" ID="freePlan" Style="background: none; color: blue" OnClick="upgradeMembership" Text="Upgrade" class="btn btn-primary form-control" />
                            </div>
                        </div>
                    </div>

                    <%-- Trial Plan --%>
                    <div class="col-lg-4">
                        <div style="background: white">
                            <p class="font-weight-normal">Trial Plan</p>
                            <div id="trp" style="height: 70px; background-color: lightgrey; padding-top: 20px; padding-bottom: 20px">
                                <p class="font-weight-normal" style="text-align: center">Trial</p>
                            </div>
                            <%--  --%>
                            <div class="pricing-plan-features">
                                <strong>Features of&nbsp;Trial Plan</strong>
                                <ul style="padding: 0px">
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
                                <asp:Button runat="server" Style="background: none; color: blue" ID="cPlan" Text="CurrentPlan" class="btn btn-primary form-control" />
                            </div>
                        </div>
                    </div>

                    <%-- Extended plan --%>
                    <div class="col-lg-4">
                        <div style="background: white">
                            <p class="font-weight-normal">Extended Plan</p>
                            <div id="ltp" style="height: 70px; background-color: lightgrey; padding-top: 20px; padding-bottom: 20px">
                                <asp:TextBox runat="server" value="5/Monthly" class="font-weight-normal" Style="text-align: center; border: 0px; outline: 0px; background: lightgrey;" ID="chPara"></asp:TextBox>
                                <p id="chParaText"></p>
                            </div>
                            <%--  --%>
                            <div class="pricing-plan-features">
                                <strong>Features of Extended Plan</strong>
                                <ul style="padding: 0px">
                                    <li>
                                        <strong>61</strong> AI Document Templates </li>
                                    <li>
                                        <strong>100,000</strong> Words per month </li>
                                    <li>
                                        <strong>1,000</strong> Images per month </li>
                                    <li>
                                        <strong>0</strong> Speech to Text per month <i class="icon-feather-help-circle margin-left-2"
                                            data-tippy-placement="top"
                                            title="Create audio transcription"></i></li>
                                    <li>
                                        <strong>0 MB</strong> Audio file size limit</li>
                                    <li>
                                        <span class="icon-text no"><i class="icon-feather-x-circle margin-right-2"></i></span>
                                        AI Chat <i class="icon-feather-help-circle margin-left-2" data-tippy-placement="top" title="Chat with the AI bot"></i>
                                    </li>
                                    <li>
                                        <span class="icon-text no"><i class="icon-feather-x-circle margin-right-2"></i></span>AI Code <i class="icon-feather-help-circle margin-left-2"
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

            <%-- Testimonials --%>
            <div id="testimonial" style="background: #f2f2f2; padding-top: 30px">
                <div class="row">
                    <div class="col-lg-12" style="padding-left: 100px; padding-right: 100px; padding-bottom: 95px">
                        <div style="text-align: center;">
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
                                <div class="carousel-item active">
                                    <div class="tempDiv" style="margin-left: 300px; margin-right: 300px">
                                        <img src="Images/Image%20ICON.png" style="height: 30px;" />
                                        <h3>Ashis</h3>
                                        <asp:Button ID="t1" runat="server" Text="Designer" class="btn btn-primary" />
                                        <p style="text-align: center">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vitae dolor sed urna placerat tincidunt. Aliquam eget metus auctor, congue massa in, aliquet tellus.</p>
                                    </div>
                                </div>
                                <div class="carousel-item">
                                    <div class="tempDiv" style="margin-left: 300px; margin-right: 300px">
                                        <img src="Images/Image%20ICON.png" style="height: 30px;" />
                                        <h4>Rohini</h4>
                                        <asp:Button ID="Button3" runat="server" Text="Designer" class="btn btn-primary" />
                                        <p style="text-align: center">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vitae dolor sed urna placerat tincidunt. Aliquam eget metus auctor, congue massa in, aliquet tellus.</p>
                                    </div>
                                </div>
                                <div class="carousel-item">
                                    <div class="tempDiv" style="margin-left: 300px; margin-right: 300px">
                                        <img src="Images/Image%20ICON.png" style="height: 30px;" />
                                        <h4>Akansha</h4>
                                        <asp:Button ID="Button4" runat="server" Text="Designer" class="btn btn-primary" />
                                        <p style="text-align: center">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vitae dolor sed urna placerat tincidunt. Aliquam eget metus auctor, congue massa in, aliquet tellus.</p>
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


            <%-- Recent Blogs --%>

            <div class="col-lg-12 col-md-12 col-sm-12" style="padding-left: 150px; padding-right: 150px; padding-bottom: 95px; padding-top: 40px">
                <div class="row pb-10">
                    <div class="col-lg-6">
                        <h3>Recent Blog</h3>
                    </div>

                    <div class="col-lg-6">
                        <div style="float: right">
                            <a href="blogs/1/blogsFirst.aspx" class="btn-link">ViewBlogs--></a>
                        </div>
                    </div>
                </div>
                <div class="row" >
                    <div class="col-lg-4" style="background: #f2f2f2;height: 200px;">
                        <a href="blogs/1/blogsFirst.aspx">
                            <div id="blogImage" style=" background-color: white; display: flex">
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

        </div>
        <div class="row footer" style="padding-left: 100px; padding-right: 100px; border-top: 1px solid grey; border-bottom: 1px solid grey;">
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
        <div class="row footer" style="padding-left: 100px; padding-right: 100px">
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

