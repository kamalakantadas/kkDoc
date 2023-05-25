<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ai-templates.aspx.cs" Inherits="QuickAI.ai_templates.Ai_templates" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Ai-templates</title>
    <link href="../IndexPage.css" rel="stylesheet" />    
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.1/moment.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />   
    <script src="../Scripts/templates.js"></script>   
</head>
<body>
    <form id="aitemplatesForm" runat="server" method="post">
       <div id="aiTemplates">
           <%-- Header Contentt Writen by kamalakantadas27@gmail.com --%>
           <div id="aiTempHeader">
              <%-- Hide EmailverficationBar --%>
                <%--<div class="container" id="emailBar" style="height:50px;">
                   <div class="row" style="padding-top:5px;">
                       <div class="col-lg-8">
                           <p class="text-left">Your Email Address is not verified. Please Verify your email address to use all the feature.</p>
                       </div>
                       <div class="col-lg-2">
                           <div class="form-group">
                               <asp:TextBox runat="server" ID="verifyEmailBox" class="form-control"></asp:TextBox>
                           </div>
                       </div>
                       <div class="col-lg-2">
                           <asp:Button class="btn btn-primary" onClick="verifyEmail" runat="server" ID="verfiyEmailBtn" Text="VerifyEmail" />
                       </div>
                   </div>
               </div>--%>
               <%-- Original Header --%>
               <nav class="row navbar navbar-expand-lg navbar-light fixed-top" id="headerBar" style="box-shadow: 2px 2px 5px grey;height:90px;border-style: ridge;z-index:999;background-color:white;">                    
                    <div class="col-lg-3 col-md-4 col-sm-4" style="width:24.99%"  >                                
                        <a class="navbar-brand" href="../Index.aspx" style="margin-bottom: 50px;overflow: hidden;">                    
                            <img src="../Images/1149945428.png" style="position:fixed; max-width:100%;margin-bottom:30px;padding-left:35px;padding-right:35px;overflow: hidden;"/>
                        </a>                        
                    </div>
                    <div class="col-lg-7 col-md-2" style="width:58.31%;overflow: hidden;">
                        <a href="#" class="sandwich-link" data-toggle="collapse" <%--data-target=".leftSideBar"--%> id="btnToggle">
                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-list" viewBox="0 0 16 16">
                              <path fill-rule="evenodd" d="M2.5 12a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5zm0-4a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5zm0-4a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5z"/>
                            </svg>
                        </a>
                    </div>
                    <div class="col-lg-1 col-md-3 col-sm-4" style="width:8.33%;">
                        <%-- User Drop Down Button --%>
                        <div class="dropdown show">
                          <a class="btn btn-secondary dropdown-toggle" href="#" role="button" id="userDropDownList" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">                              
                              <asp:Image runat="server" ID="userImage" src="../Images/userIcon.jpg" style="height:30px" onmouseover="viewText()" onmouseout="hideText()" alt="" class="hover-text"/>
                              <asp:TextBox ID="viewImage" style="display:none;width:100px;" runat="server" value=""></asp:TextBox>
                          </a>
                          <div class="dropdown-menu" aria-labelledby="userDropDownList">
                              <a class="dropdown-item" href="../dashboard.aspx">Dashboard</a>
                              <a class="dropdown-item" href="Ai-templates.aspx">Templates</a>
                              <a class="dropdown-item" href="../ai-images.aspx">AI Images</a>
                              <a class="dropdown-item" href="../ai-chat.aspx">AI Chat</a>
                              <a class="dropdown-item" href="../speechToText.aspx">Speech to Text</a>
                              <a class="dropdown-item" href="../ai-code.aspx">AI Code</a>
                              <a class="dropdown-item" href="../all-documents.aspx">All Documents</a>
                              <a class="dropdown-item" href="../membership/membership.aspx">Membership</a>
                              <a class="dropdown-item" href="../accountSetting.aspx">Account Setting</a>
                              <asp:LinkButton runat="server" OnClick="logout"><i class="icon-material-outline-power-settings-new"></i><div>Logout</div></asp:LinkButton>
                          </div>
                        </div>                 
                    </div>
                    <div class="col-lg-1 col-md-3 col-sm-4" style="width:8.33%;">
                        <%-- Header Language Selection --%>
                        <div class="dropdown">
                                <asp:Button runat="server" class="btn btn-secondary btn-primary btn-lg dropdown-toggle" type="button" id="dropdownMenu2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"
                                    Text="en"/>                        
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
                </nav>
           </div>
           <div id="aiTempBody">
               <div class="container-fluid">
                   <div class="row" style="display: inline-flex; width: 100%;margin-top:95px">
                       <!-- Left Side Lists -->
                       <div class="col-lg-3 scrollable" id="sidebar" style="width: 25%; background-color: #f2f2f2;">
                           <%-- My Account --%>
                           <ul class="">
                               <li>
                                   <a href="../dashboard.aspx">
                                       <i class="icon-feather-grid"></i>
                                       <div>Dashboard</div>
                                       
                                   </a>
                               </li>

                               <li>
                                   <div class="dropdown">
                                       <button class="btn btn-secondary dropdown-toggle" type="button" id="MyDocDrop" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                           <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 384 512" style="height: 15px; width: 15px;">
                                               <!--! Font Awesome Pro 6.4.0 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license (Commercial License) Copyright 2023 Fonticons, Inc. -->
                                               <path d="M0 64C0 28.7 28.7 0 64 0H224V128c0 17.7 14.3 32 32 32H384V448c0 35.3-28.7 64-64 64H64c-35.3 0-64-28.7-64-64V64zm384 64H256V0L384 128z" />
                                           </svg>
                                           My Documents

                                       </button>
                                       <div class="dropdown-menu" aria-labelledby="MyDocDrop">
                                           <a class="dropdown-item" href="../all-documents.aspx">All Documents</a>
                                           <a class="dropdown-item" href="../all-Images.aspx">All AI Images</a>
                                       </div>
                                   </div>
                                   <%-- <a href="#" id="myDocBtn"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 384 512"><!--! Font Awesome Pro 6.4.0 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license (Commercial License) Copyright 2023 Fonticons, Inc. --><path d="M0 64C0 28.7 28.7 0 64 0H224V128c0 17.7 14.3 32 32 32H384V448c0 35.3-28.7 64-64 64H64c-35.3 0-64-28.7-64-64V64zm384 64H256V0L384 128z"/></svg> 
                                           My Documents</a>
                                        <ul id="myDocShow">
                                           <li class=""><a href="http://hype.sociusus.com/all-documents">All Documents</a></li>
                                           <li class=""><a href="http://hype.sociusus.com/all-images">All AI Images</a></li>
                                        </ul>--%>                                  
                               </li>
                           </ul>
                           <%-- Organize and Manage --%>
                           <ul>
                               <li>Organize and Manage</li>
                               <li>
                                   <a href="Ai-templates.aspx">
                                       <i class="icon-feather-layers"></i>
                                       <div>Templates</div>                                      
                                   </a>
                               </li>
                               <li>
                                   <a href="../all-Images.aspx">
                                       <i class="icon-feather-image"></i>
                                       <div>Ai Images</div>
                                      
                                   </a>
                               </li>
                               <li>
                                   <a href="../ai-chat.aspx">
                                       <i class="icon-feather-message-circle"></i>
                                       <div>Ai Chat</div>
                                   </a>
                               </li>
                               <li>
                                   <a href="../speechToText.aspx">
                                       <i class="icon-feather-headphones"></i>
                                       <div>Speech to Text</div>
                                   </a>
                               </li>
                               <li>
                                   <a href="../ai-code.aspx">
                                       <i class="icon-feather-code"></i>
                                       <div>Ai Code</div>
                                   </a>
                               </li>
                           </ul>
                           <%-- Account --%>
                           <ul style="padding-bottom: 50px">
                               <li>Account</li>
                               <li class="">
                                   <div class="dropdown show" style="">
                                       <a class="btn btn-secondary dropdown-toggle" href="#" role="button" style="height: 40px;" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Affiliate Program
                                       </a>

                                       <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                                           <a class="dropdown-item" href="../affiliate-program.aspx">Affiliate Program</a>
                                           <a class="dropdown-item" href="../withdrawals.aspx">Withdrawals</a>
                                       </div>
                                   </div>
                               </li>
                               <li>
                                   <a href="membership/membership.aspx">
                                       <i class="icon-feather-gift"></i>
                                       <div>Membership</div>
                                   </a>

                               </li>
                               <li>
                                   <a href="Transaction.aspx">
                                       <i class="icon-feather-file-text"></i>
                                       <div>Transactions</div>
                                   </a>

                               </li>
                               <li>
                                   <a href="accountSetting.aspx">
                                       <i class="icon-feather-log-out"></i>
                                       <div>Account Setting</div>
                                   </a>

                               </li>
                               <li>
                                   <asp:LinkButton runat="server" OnClick="logout">
                                       <i class="icon-material-outline-power-settings-new"></i>
                                       <div>Logout</div>
                                   </asp:LinkButton>

                               </li>
                           </ul>
                       </div>

                       <%-- Right Side --%>
                       <div class="col-lg-9 scrollable" id="content" style="width: 75%; background: #f2f2f2; z-index: 99; padding-top: 50px;">
                           <%-- Right content 1st row only content --%>
                           <div class="row">
                               <%-- Left Side of Right side --%>
                               <div class="col-md-7">
                                   <h3>Templates Used</h3>
                               </div>
                               <%-- Right Side of Right side --%>
                               <div class="col-md-5">
                                   <div id="SubPage">
                                       <ul style="display: inline-flex;">
                                           <li><a href="index.aspx">Home</a></li>
                                           <li><a href="#">Templates</a></li>
                                       </ul>
                                   </div>
                               </div>
                           </div>
                           <%--All Templates Start--%>
                           <%--<div style="padding-top:15px;padding-bottom:25px">
                               <input type="text" class="with-border border-pilled" style="width:100%; height:45px;border-radius: 20px;"/>
                           </div>--%>
                           <div class="row mt-1 mb-2 ml-1" style="width:100%;height:45px;border-radius:25px;background:white">
                               <input id="selectTempID" type="text" style="margin-left:20px;border:none;outline:none;width:90%"/>
                           </div>
                           <div class="row">
                                <div class="col-md-12">
                                    <div style="width:100%;">
                                        <div style="border-radius:100px;background-color:deepskyblue;padding:15px;">
                                            <div class="btn-group rounded-pill" role="group" aria-label="Rounded pill example"">
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
                           <div class="row" id="allTemp" style="padding-left:50px;padding-right:50px;padding-bottom:50px">                              
                               <%-- articles and blogs --%>
                               <div class="row" id="abp">
                                   <div class="row" style="padding-top:20px;padding-bottom:20px">
                                       <h4>Article and Blogs</h4>                                        <hr />
                                   </div>
                                   <div class="row">
                                       <div class="col-lg-4 border border-warning rounded-pill aitempl">
                                           <asp:LinkButton runat="server" OnClick="blogIdeas">
                                               <div class="dashboard-box ai-templates ">
                                                   <div class="content">
                                                       <div class="ai-templates-icon">
                                                           <i class="fa fa-comment"></i>
                                                       </div>
                                                       <h4 runat="server" id="conId">Blog Ideas</h4>
                                                       <p runat="server" class="margin-bottom-0" id="conText">Article/blog ideas that you can use to generate more traffic, leads, and sales for your business.</p>
                                                   </div>
                                               </div>
                                           </asp:LinkButton>
                                       </div>
                                       <div class="col-lg-4 border border-warning rounded-pill aitempl">
                                           <asp:LinkButton runat="server" OnClick="blogIntro">
                                               <div class="dashboard-box ai-templates ">
                                                   <div class="content">
                                                       <div class="ai-templates-icon">
                                                           <i class="fa fa-align-left"></i>
                                                       </div>
                                                       <h4>Blog Intros                                                                                                    </h4>
                                                       <p class="margin-bottom-0">Enticing article/blog introductions that capture the attention of the audience.</p>
                                                   </div>
                                               </div>
                                           </asp:LinkButton>
                                       </div>
                                       <div class="col-lg-4 border border-warning rounded-pill aitempl">
                                           <asp:LinkButton runat="server" OnClick="blogTitle">
                                               <div class="dashboard-box ai-templates ">
                                                   <div class="content">
                                                       <div class="ai-templates-icon">
                                                           <i class="fa fa-ellipsis-h"></i>
                                                       </div>
                                                       <h4>Blog Titles                                                                                                    </h4>
                                                       <p class="margin-bottom-0">Nobody wants to read boring blog titles, generate catchy blog titles with this tool.</p>
                                                   </div>
                                               </div>
                                           </asp:LinkButton>
                                       </div>
                                   </div>
                                   <div class="row">
                                       <div class="col-lg-4 border border-warning rounded-pill aitempl">
                                            <asp:LinkButton runat="server" OnClick="blogSection"
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
                                           </asp:LinkButton>
                                       </div>
                                       <div class="col-lg-4 border border-warning rounded-pill aitempl">
                                            <asp:LinkButton runat="server" OnClick="blogConclusion">
                                               <div class="dashboard-box ai-templates ">
                                                   <div class="content">
                                                       <div class="ai-templates-icon">
                                                           <i class="fa fa-check-square"></i>
                                                       </div>
                                                       <h4>Blog Conclusion                                                                                                    </h4>
                                                       <p class="margin-bottom-0">Create powerful conclusion that will make a reader take action.</p>
                                                   </div>
                                               </div>
                                           </asp:LinkButton>
                                       </div>
                                       <div class="col-lg-4 border border-warning rounded-pill aitempl">
                                            <asp:LinkButton runat="server" OnClick="articleWriter"
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
                                           </asp:LinkButton>
                                       </div>
                                   </div>
                                   <div class="row">
                                       <div class="col-lg-4 border border-warning rounded-pill aitempl">
                                            <asp:LinkButton runat="server" OnClick="articleRewriter">
                                               <div class="dashboard-box ai-templates ">
                                                   <div class="content">
                                                       <div class="ai-templates-icon">
                                                           <i class="fa fa-pencil-square-o"></i>
                                                       </div>
                                                       <h4>Article Rewriter                                                                                                    </h4>
                                                       <p class="margin-bottom-0">Copy an article, paste it in to the program, and with just one click you'll have an entirely different article to read.</p>
                                                   </div>
                                               </div>
                                           </asp:LinkButton>
                                       </div>
                                       <div class="col-lg-4 border border-warning rounded-pill aitempl">
                                            <asp:LinkButton runat="server" OnClick="articleOutlines">
                                               <div class="dashboard-box ai-templates ">
                                                   <div class="content">
                                                       <div class="ai-templates-icon">
                                                           <i class="fa fa-list-ul"></i>
                                                       </div>
                                                       <h4>Article Outlines                                                                                                    </h4>
                                                       <p class="margin-bottom-0">Detailed article outlines that help you write better content on a consistent basis.</p>
                                                   </div>
                                               </div>
                                           </asp:LinkButton>
                                       </div>
                                       <div class="col-lg-4 border border-warning rounded-pill aitempl">
                                            <asp:LinkButton runat="server" OnClick="talkingPoint">
                                               <div class="dashboard-box ai-templates ">
                                                   <div class="content">
                                                       <div class="ai-templates-icon">
                                                           <i class="fa fa-list-ol"></i>
                                                       </div>
                                                       <h4>Talking Points                                                                                                    </h4>
                                                       <p class="margin-bottom-0">Write short, simple and informative points for the subheadings of your article</p>
                                                   </div>
                                               </div>
                                           </asp:LinkButton>
                                       </div>
                                   </div>
                                   <div class="row">
                                       <div class="col-lg-4 border border-warning rounded-pill aitempl">
                                           <asp:LinkButton runat="server" OnClick="paragraphWriter"
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
                                           </asp:LinkButton>
                                       </div>
                                       <div class="col-lg-4 border border-warning rounded-pill aitempl">
                                           <asp:LinkButton runat="server" OnClick="contentRephrase">
                                               <div class="dashboard-box ai-templates ">
                                                   <div class="content">
                                                       <div class="ai-templates-icon">
                                                           <i class="fa fa-refresh"></i>
                                                       </div>
                                                       <h4>Content Rephrase                                                                                                    </h4>
                                                       <p class="margin-bottom-0">Rephrase your content in a different voice and style to appeal to different readers.</p>
                                                   </div>
                                               </div>
                                           </asp:LinkButton>
                                       </div>
                                       <div class="col-lg-4 border border-warning rounded-pill aitempl">

                                       </div>
                                   </div>                                 
                               </div>
                               <%-- ads and marketing tools --%>
                               <div class="row" id="amt">
                                   <div class="row" style="padding-top:20px;padding-bottom:20px">
                                       <h4>Ads And Marketing Tools</h4>
                                   </div>
                                   <div class="row">
                                       <div class="col-lg-4 border border-warning rounded-pill aitempl">
                                           <asp:LinkButton runat="server" OnClick="facebookAds">
                                               <div class="dashboard-box ai-templates ">
                                                   <div class="content">
                                                       <div class="ai-templates-icon">
                                                           <i class="fa fa-facebook-official"></i>
                                                       </div>
                                                       <h4>Facebook Ads                                                                                                    </h4>
                                                       <p class="margin-bottom-0">Facebook ad copies that make your ads truly stand out.</p>
                                                   </div>
                                               </div>
                                           </asp:LinkButton>
                                       </div>
                                       <div class="col-lg-4 border border-warning rounded-pill aitempl">
                                           <asp:LinkButton runat="server" OnClick="facebookAdsHeadLines">
                                               <div class="dashboard-box ai-templates ">
                                                   <div class="content">
                                                       <div class="ai-templates-icon">
                                                           <i class="fa fa-facebook-square"></i>
                                                       </div>
                                                       <h4>Facebook Ads Headlines                                                                                                    </h4>
                                                       <p class="margin-bottom-0">Write catchy and convincing headlines to make your Facebook Ads stand out.</p>
                                                   </div>
                                               </div>
                                           </asp:LinkButton>
                                       </div>
                                       <div class="col-lg-4 border border-warning rounded-pill aitempl">
                                            <asp:LinkButton runat="server" OnClick="GoogleAdTitle"
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
                                           </asp:LinkButton>
                                       </div>
                                   </div>
                                   <div class="row">
                                       <div class="col-lg-4 border border-warning rounded-pill aitempl">
                                           <asp:LinkButton runat="server" OnClick="GoogleAdDesc"
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
                                           </asp:LinkButton>
                                       </div>
                                       <div class="col-lg-4 border border-warning rounded-pill aitempl">
                                           <asp:LinkButton runat="server" OnClick="LinkedInAdHeadLines">
                                               <div class="dashboard-box ai-templates ">
                                                   <div class="content">
                                                       <div class="ai-templates-icon">
                                                           <i class="fa fa-linkedin"></i>
                                                       </div>
                                                       <h4>LinkedIn Ad Headlines                                                                                                    </h4>
                                                       <p class="margin-bottom-0">Attention-grabbing, click-inducing, and high-converting ad headlines for Linkedin.</p>
                                                   </div>
                                               </div>
                                           </asp:LinkButton>
                                       </div>
                                       <div class="col-lg-4 border border-warning rounded-pill aitempl">
                                           <asp:LinkButton runat="server" OnClick="LinkedAdDesc">
                                               <div class="dashboard-box ai-templates ">
                                                   <div class="content">
                                                       <div class="ai-templates-icon">
                                                           <i class="fa fa-linkedin"></i>
                                                       </div>
                                                       <h4>LinkedIn Ad Descriptions                                                                                                    </h4>
                                                       <p class="margin-bottom-0">Professional and eye-catching ad descriptions that will make your product shine.</p>
                                                   </div>
                                               </div>
                                           </asp:LinkButton>
                                       </div>
                                   </div>
                                   <div class="row">
                                       <div class="col-lg-4 border border-warning rounded-pill aitempl">
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
                                       <div class="col-lg-4 border border-warning rounded-pill aitempl">

                                       </div>
                                       <div class="col-lg-4 border border-warning rounded-pill aitempl"></div>
                                   </div>
                               </div>
                               <%-- general writing --%>
                               <div class="row" id="gwg" >
                                   <div class="row" style="padding-top:20px;padding-bottom:20px">
                                       <h4>General Writing</h4>
                                   </div>
                                   <div class="row">
                                       <div class="col-lg-4 border border-warning rounded-pill aitempl">
                                          <asp:LinkButton runat="server" OnClick="TextExtender">
                                               <div class="dashboard-box ai-templates ">
                                                   <div class="content">
                                                       <div class="ai-templates-icon">
                                                           <i class="fa fa-text-width"></i>
                                                       </div>
                                                       <h4>Text Extender                                                                                                    </h4>
                                                       <p class="margin-bottom-0">Extend short sentences into more descriptive and interesting ones.</p>
                                                   </div>
                                               </div>
                                           </asp:LinkButton>
                                       </div>
                                       <div class="col-lg-4 border border-warning rounded-pill aitempl">
                                           <asp:LinkButton runat="server" OnClick="contentShorten">
                                               <div class="dashboard-box ai-templates ">
                                                   <div class="content">
                                                       <div class="ai-templates-icon">
                                                           <i class="fa fa-text-width"></i>
                                                       </div>
                                                       <h4>Content Shorten                                                                                                    </h4>
                                                       <p class="margin-bottom-0">Short your content in a different voice and style to appeal to different readers.</p>
                                                   </div>
                                               </div>
                                           </asp:LinkButton>
                                       </div>
                                       <div class="col-lg-4 border border-warning rounded-pill aitempl">
                                             <asp:LinkButton runat="server" OnClick="quoraAnswer"
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
                                           </asp:LinkButton>
                                       </div>
                                   </div>
                                   <div class="row">
                                       <div class="col-lg-4 border border-warning rounded-pill aitempl">
                                           <asp:LinkButton runat="server" OnClick="summarizeFor2nd">
                                               <div class="dashboard-box ai-templates ">
                                                   <div class="content">
                                                       <div class="ai-templates-icon">
                                                           <i class="fa fa-child"></i>
                                                       </div>
                                                       <h4>Summarize for a 2nd grader                                                                                                    </h4>
                                                       <p class="margin-bottom-0">Translates difficult text into simpler concepts.</p>
                                                   </div>
                                               </div>
                                           </asp:LinkButton>
                                       </div>
                                       <div class="col-lg-4 border border-warning rounded-pill aitempl">
                                           <asp:LinkButton runat="server" OnClick="stories"
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
                                           </asp:LinkButton>
                                       </div>
                                       <div class="col-lg-4 border border-warning rounded-pill aitempl">
                                             <asp:LinkButton runat="server" OnClick="bulletPointAnswers">
                                               <div class="dashboard-box ai-templates ">
                                                   <div class="content">
                                                       <div class="ai-templates-icon">
                                                           <i class="fa fa-list"></i>
                                                       </div>
                                                       <h4>Bullet Point Answers                                                                                                    </h4>
                                                       <p class="margin-bottom-0">Precise and informative bullet points that provide quick and valuable answers to your customers' questions.</p>
                                                   </div>
                                               </div>
                                           </asp:LinkButton>
                                       </div>
                                   </div>
                                   <div class="row">
                                       <div class="col-lg-4 border border-warning rounded-pill aitempl">
                                             <asp:LinkButton runat="server" OnClick="definition">
                                               <div class="dashboard-box ai-templates ">
                                                   <div class="content">
                                                       <div class="ai-templates-icon">
                                                           <i class="fa fa-tasks"></i>
                                                       </div>
                                                       <h4>Definition                                                                                                    </h4>
                                                       <p class="margin-bottom-0">A definition for a word, phrase, or acronym that's used often by your target buyers.</p>
                                                   </div>
                                               </div>
                                           </asp:LinkButton>
                                       </div>
                                       <div class="col-lg-4 border border-warning rounded-pill aitempl">
                                            <asp:LinkButton runat="server" OnClick="answers">
                                               <div class="dashboard-box ai-templates ">
                                                   <div class="content">
                                                       <div class="ai-templates-icon">
                                                           <i class="fa fa-check-circle"></i>
                                                       </div>
                                                       <h4>Answers                                                                                                    </h4>
                                                       <p class="margin-bottom-0">Instant, quality answers to any questions or concerns that your audience might have.</p>
                                                   </div>
                                               </div>
                                           </asp:LinkButton>
                                       </div>
                                       <div class="col-lg-4 border border-warning rounded-pill aitempl">
                                          <asp:LinkButton runat="server" OnClick="questions">
                                               <div class="dashboard-box ai-templates ">
                                                   <div class="content">
                                                       <div class="ai-templates-icon">
                                                           <i class="fa fa-question-circle"></i>
                                                       </div>
                                                       <h4>Questions                                                                                                    </h4>
                                                       <p class="margin-bottom-0">A tool to create engaging questions and polls that increase audience participation and engagement.</p>
                                                   </div>
                                               </div>
                                           </asp:LinkButton>
                                       </div>
                                   </div>
                                   <div class="row">
                                       <div class="col-lg-4 border border-warning rounded-pill aitempl">
                                           <asp:LinkButton runat="server" OnClick="passiveToActive">
                                               <div class="dashboard-box ai-templates ">
                                                   <div class="content">
                                                       <div class="ai-templates-icon">
                                                           <i class="fa fa-sort-alpha-desc"></i>
                                                       </div>
                                                       <h4>Passive to Active Voice                                                                                                    </h4>
                                                       <p class="margin-bottom-0">Easy and quick solution to converting your passive voice sentences into active voice sentences.</p>
                                                   </div>
                                               </div>
                                           </asp:LinkButton>
                                       </div>
                                       <div class="col-lg-4 border border-warning rounded-pill aitempl">
                                           <asp:LinkButton runat="server" OnClick="prosAndCons"
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
                                           </asp:LinkButton>
                                       </div>
                                       <div class="col-lg-4 border border-warning rounded-pill aitempl">
                                           <asp:LinkButton runat="server" OnClick="rewriteWithKeywords"
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
                                           </asp:LinkButton>
                                       </div>
                                   </div>
                                   <div class="row">
                                       <div class="col-lg-4 border border-warning rounded-pill aitempl">
                                            <asp:LinkButton runat="server" OnClick="emails"
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
                                           </asp:LinkButton>
                                       </div>
                                       <div class="col-lg-4 border border-warning rounded-pill aitempl">
                                            <asp:LinkButton runat="server" OnClick="emailsv2"
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
                                           </asp:LinkButton>
                                       </div>
                                       <div class="col-lg-4 border border-warning rounded-pill aitempl">
                                            <asp:LinkButton runat="server" OnClick="emailsSubjectLine">
                                               <div class="dashboard-box ai-templates ">
                                                   <div class="content">
                                                       <div class="ai-templates-icon">
                                                           <i class="fa fa-envelope-open-o"></i>
                                                       </div>
                                                       <h4>Email Subject Lines                                                                                                    </h4>
                                                       <p class="margin-bottom-0">Powerful email subject lines that increase open rates.</p>
                                                   </div>
                                               </div>
                                           </asp:LinkButton>
                                       </div>
                                   </div>
                                   <div class="row">
                                       <div class="col-lg-4 border border-warning rounded-pill aitempl">
                                           <asp:LinkButton runat="server" OnClick="startupNameGenerator">
                                               <div class="dashboard-box ai-templates ">
                                                   <div class="content">
                                                       <div class="ai-templates-icon">
                                                           <i class="fa fa-bullhorn"></i>
                                                       </div>
                                                       <h4>Startup Name Generator                                                                                                    </h4>
                                                       <p class="margin-bottom-0">Generate cool, creative, and catchy names for your startup in seconds.</p>
                                                   </div>
                                               </div>
                                           </asp:LinkButton>
                                       </div>
                                       <div class="col-lg-4 border border-warning rounded-pill aitempl">
                                           <asp:LinkButton runat="server" OnClick="companyBios">
                                               <div class="dashboard-box ai-templates ">
                                                   <div class="content">
                                                       <div class="ai-templates-icon">
                                                           <i class="fa fa-file-text"></i>
                                                       </div>
                                                       <h4>Company Bios                                                                                                    </h4>
                                                       <p class="margin-bottom-0">Short and sweet company bio that will help you connect with your target audience.</p>
                                                   </div>
                                               </div>
                                           </asp:LinkButton>
                                       </div>
                                       <div class="col-lg-4 border border-warning rounded-pill aitempl">
                                           <asp:LinkButton runat="server" OnClick="companyMission"
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
                                           </asp:LinkButton>
                                       </div>
                                   </div>
                                   <div class="row">
                                       <div class="col-lg-4 border border-warning rounded-pill aitempl">
                                          <asp:LinkButton runat="server" OnClick="companyVision"
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
                                           </asp:LinkButton>
                                       </div>
                                      <%-- <div class="col-lg-4 border border-warning rounded-pill aitempl">

                                       </div>
                                       <div class="col-lg-4 border border-warning rounded-pill aitempl"></div>--%>
                                   </div>          
                               </div>
                               <%-- ecommerce --%>
                               <div class="row" id="ece" style="padding-top:20px;padding-bottom:20px">
                                   <div class="row">
                                       <div class="row">
                                           <h4>Ecommerce</h4>
                                       </div>
                                   </div>                                   
                                   <div class="row">
                                       <div class="col-lg-4 border border-warning rounded-pill aitempl">
                                         <asp:LinkButton runat="server" OnClick="productNameGenerator">
                                               <div class="dashboard-box ai-templates ">
                                                   <div class="content">
                                                       <div class="ai-templates-icon">
                                                           <i class="fa fa-gift"></i>
                                                       </div>
                                                       <h4>Product Name Generator                                                                                                    </h4>
                                                       <p class="margin-bottom-0">Create creative product names from examples words.</p>
                                                   </div>
                                               </div>
                                           </asp:LinkButton>
                                       </div>
                                       <div class="col-lg-4 border border-warning rounded-pill aitempl">
                                          <asp:LinkButton runat="server" OnClick="productDescription">
                                               <div class="dashboard-box ai-templates ">
                                                   <div class="content">
                                                       <div class="ai-templates-icon">
                                                           <i class="fa fa-gift"></i>
                                                       </div>
                                                       <h4>Product Descriptions                                                                                                    </h4>
                                                       <p class="margin-bottom-0">Authentic product descriptions that will compel, inspire, and influence.</p>
                                                   </div>
                                               </div>
                                           </asp:LinkButton>
                                       </div>
                                       <div class="col-lg-4 border border-warning rounded-pill aitempl">
                                          <asp:LinkButton runat="server" OnClick="amazonProductTitles"
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
                                           </asp:LinkButton>
                                       </div>
                                   </div>
                                   <div class="row">
                                       <div class="col-lg-4 border border-warning rounded-pill aitempl">
                                          <asp:LinkButton runat="server" OnClick="amazonProductDesc"
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
                                           </asp:LinkButton>
                                       </div>
                                       <div class="col-lg-4 border border-warning rounded-pill aitempl">
                                           <asp:LinkButton runat="server" OnClick="amazonProductFeatures"
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
                                           </asp:LinkButton>
                                       </div>
                                       <div class="col-lg-4 border border-warning rounded-pill aitempl">
                                           <%--<a href="http://hype.sociusus.com/ai-templates/social-post-personal">
                                               <div class="dashboard-box ai-templates ">
                                                   <div class="content">
                                                       <div class="ai-templates-icon">
                                                           <i class="fa fa-facebook"></i>
                                                       </div>
                                                       <h4>Social Media Post (Personal)                                                                                                    </h4>
                                                       <p class="margin-bottom-0">Write a social media post for yourself to be published on any platform.</p>
                                                   </div>
                                               </div>
                                           </a>--%>
                                       </div>
                                   </div>  
                               </div>
                               <%-- social media --%>
                               <div class="row" id="sma" style="padding-top:20px;padding-bottom:20px">
                                   <div class="row">
                                       <h3>Social Media</h3>
                                   </div>
                                    <div class="row">
                                       <div class="col-lg-4 border border-warning rounded-pill aitempl">
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
                                       <div class="col-lg-4 border border-warning rounded-pill aitempl">
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
                                       <div class="col-lg-4 border border-warning rounded-pill aitempl">
                                           <asp:LinkButton runat="server" OnClick="instagramCaptions">
                                               <div class="dashboard-box ai-templates ">
                                                   <div class="content">
                                                       <div class="ai-templates-icon">
                                                           <i class="fa fa-instagram"></i>
                                                       </div>
                                                       <h4>Instagram Captions                                                                                                    </h4>
                                                       <p class="margin-bottom-0">Captions that turn your images into attention-grabbing Instagram posts.</p>
                                                   </div>
                                               </div>
                                           </asp:LinkButton>
                                       </div>
                                   </div>
                                   <div class="row">
                                       <div class="col-lg-4 border border-warning rounded-pill aitempl">
                                          <asp:LinkButton runat="server" OnClick="instagramHashtags"
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
                                           </asp:LinkButton>
                                       </div>
                                       <div class="col-lg-4 border border-warning rounded-pill aitempl">
                                           <asp:LinkButton runat="server" OnClick="twitter">
                                               <div class="dashboard-box ai-templates ">
                                                   <div class="content">
                                                       <div class="ai-templates-icon">
                                                           <i class="fa fa-twitter"></i>
                                                       </div>
                                                       <h4>Twitter Tweets                                                                                                    </h4>
                                                       <p class="margin-bottom-0">Generate tweets using AI, that are relevant and on-trend.</p>
                                                   </div>
                                               </div>
                                          </asp:LinkButton>
                                       </div>
                                       <div class="col-lg-4 border border-warning rounded-pill aitempl">
                                           <asp:LinkButton runat="server" OnClick="youtubeTitles">
                                               <div class="dashboard-box ai-templates ">
                                                   <div class="content">
                                                       <div class="ai-templates-icon">
                                                           <i class="fa fa-youtube-play"></i>
                                                       </div>
                                                       <h4>YouTube Titles                                                                                                    </h4>
                                                       <p class="margin-bottom-0">Catchy titles that attract more views and increase the number of shares.</p>
                                                   </div>
                                               </div>
                                           </asp:LinkButton>
                                       </div>
                                   </div>  
                                    <div class="row">
                                       <div class="col-lg-4 border border-warning rounded-pill aitempl">
                                           <asp:LinkButton runat="server" OnClick="youtubeDesc"
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
                                           </asp:LinkButton>
                                       </div>
                                       <div class="col-lg-4 border border-warning rounded-pill aitempl">
                                           <asp:LinkButton runat="server" OnClick="youtubeOutline"
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
                                           </asp:LinkButton>
                                       </div>
                                       <div class="col-lg-4 border border-warning rounded-pill aitempl">
                                           <asp:LinkButton runat="server" OnClick="linkedInPost">
                                               <div class="dashboard-box ai-templates ">
                                                   <div class="content">
                                                       <div class="ai-templates-icon">
                                                           <i class="fa fa-linkedin"></i>
                                                       </div>
                                                       <h4>LinkedIn Posts                                                                                                    </h4>
                                                       <p class="margin-bottom-0">Inspiring LinkedIn posts that will help you build trust and authority in your industry.</p>
                                                   </div>
                                               </div>
                                           </asp:LinkButton>
                                       </div>
                                   </div>
                                   <div class="row">
                                       <div class="col-lg-4 border border-warning rounded-pill aitempl">
                                           <asp:LinkButton runat="server" OnClick="TiktokVideoScript"
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
                                           </asp:LinkButton>
                                       </div>
                                       <div class="col-lg-4 border border-warning rounded-pill aitempl">
                                           
                                       </div>
                                       <div class="col-lg-4 border border-warning rounded-pill aitempl">
                                           
                                       </div>
                                   </div>  
                               </div>
                               <%-- website --%>
                               <div class="row" id="webe" style="padding-top:20px;padding-bottom:20px">
                                   <div class="row">
                                       <h4>Website</h4>
                                   </div>
                                   <div class="row">
                                       <div class="col-lg-4 border border-warning rounded-pill aitempl">
                                           <asp:LinkButton runat="server" OnClick="smtBlog"
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
                                           </asp:LinkButton>
                                       </div>
                                       <div class="col-lg-4 border border-warning rounded-pill aitempl">
                                           <asp:LinkButton runat="server" OnClick="smtHome"
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
                                           </asp:LinkButton>
                                       </div>
                                       <div class="col-lg-4 border border-warning rounded-pill aitempl">
                                            <asp:LinkButton runat="server" OnClick="smtProduct"
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
                                           </asp:LinkButton>
                                       </div>
                                   </div>
                               </div>
                               <%-- others --%>
                               <div class="row" id="oth" style="padding-top:20px;padding-bottom:20px">
                                   <div class="row">
                                       <h4>Other</h4>
                                   </div>
                                   <div class="row">
                                       <div class="col-lg-4 border border-warning rounded-pill aitempl">
                                           <asp:LinkButton runat="server" OnClick="toneChanger"
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
                                           </asp:LinkButton>
                                       </div>
                                       <div class="col-lg-4 border border-warning rounded-pill aitempl">
                                           <asp:LinkButton runat="server" OnClick="songLyrics"
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
                                           </asp:LinkButton>
                                       </div>
                                       <div class="col-lg-4 border border-warning rounded-pill aitempl">
                                           <asp:LinkButton runat="server" OnClick="translate">
                                               <div class="dashboard-box ai-templates ">
                                                   <div class="content">
                                                       <div class="ai-templates-icon">
                                                           <i class="fa fa-language"></i>
                                                       </div>
                                                       <h4>Translate                                                                                                    </h4>
                                                       <p class="margin-bottom-0">Translate your content into any language you want.</p>
                                                   </div>
                                               </div>
                                           </asp:LinkButton>
                                       </div>
                                   </div>
                                   <div class="row">
                                       <div class="col-lg-4 border border-warning rounded-pill aitempl">
                                            <asp:LinkButton runat="server" OnClick="faqMet"
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
                                           </asp:LinkButton>
                                       </div>
                                       <div class="col-lg-4 border border-warning rounded-pill aitempl">
                                            <asp:LinkButton runat="server" OnClick="faqAnswer"
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
                                           </asp:LinkButton>
                                       </div>
                                       <div class="col-lg-4 border border-warning rounded-pill aitempl">
                                           <asp:LinkButton runat="server" OnClick="testimonialReview" title="Upgrade your plan to use this template" data-tippy-placement="top">
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
                                           </asp:LinkButton>
                                       </div>
                                   </div>
                               </div>
                           </div>                                                 
                           <%--All Templates End--%>
                           <%-- Ai-Templates Footer --%>
                           <%-- Footer Design By Kamalakantadas row navbar navbar-expand-lg navbar-dark bg-dark--%>
                           <div class="row-fluid" style="padding-bottom:100px;border-top: 1px solid #ccc;">
                               <footerclass="footer" style="position: sticky; bottom: 0;margin-bottom:0px;text-align:center;width: 100%;height: 80px;background:#f2f2f2;">
                                   <div class="row navbar py-3 full-width">
                                       <div class="col-md-6">
                                           <span class="footer-copyright-text">@ 2023 Socius IGB Pvt Ltd, All right reserved</span>
                                       </div>
                                       <div class="col-md-6">
                                           <!-- Facebook -->
                                           <a class="btn" style="" href="#!" role="button"></a>
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


                                           <!-- Github -->
                                           <a class="btn btn-primary" style="background-color: #333333;" href="#!" role="button"><i class="fab fa-github"></i></a>

                                       </div>
                                   </div>
                               </footerclass> 
                           </div>     
                       </div>
                   </div>
               </div>
           </div>
       </div>           
    </form>
</body>
</html>
