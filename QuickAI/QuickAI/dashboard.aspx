<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dashboard.aspx.cs" Inherits="QuickAI.dashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Dashboard</title>
    <link href="IndexPage.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" />
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
    <script src="Scripts/Dashboard.js"></script>
</head>
<body>
   <form id="dashboardForm" runat="server" method="post">
       <div id="DashBoard">
           <%-- Header Contentt Writen by kamalakantadas27@gmail.com --%>
           <div id="dHeader">               
               <%-- Original Header --%>
          <%--     <div class="row fixed-top"  style="box-shadow: 2px 2px 5px grey;background:white;">--%>
               <div class="row fixed-top"  style="box-shadow: 2px 2px 5px grey;background:white;">
                   <div class="row">
                       <%-- Email Bar start--%>
                       <div class="row" id="emailBar" style="min-height: 50px;width:100%; box-shadow:1px 1px 1px">                           
                           <div class="container" >
                               <div class="row" style="padding-top: 5px;">
                                  <div class="col-8">
                                       <p class="text-left">Your Email Address is not verified. Please Verify your email address to use all the feature.</p>
                                   </div>
                                   <div class="col-2">
                                       <div class="form-group">
                                           <asp:TextBox runat="server" ID="verifyEmailBox" class="form-control"></asp:TextBox>
                                       </div>
                                   </div>
                                   <div class="col-2">
                                       <asp:Button class="btn btn-primary" OnClick="verifyEmail" runat="server" ID="verfiyEmailBtn" Text="VerifyEmail" />
                                   </div>                                   
                               </div>
                           </div>                           
                       </div>
                       <%-- Email Bar end--%>

                       <%-- Headear Bar --%>
                       <div class="row" id="headerBar" style="width:100%;height:72px;">
                           <%-- Header starts here --%>
                           <div class="col-lg-3 col-md-4 col-sm-3" style="width: 24.99%">
                               <a class="navbar-brand" href="Index.aspx">
                                   <img src="Images/1149945428.png" style="padding-left: 100px;" />
                               </a>
                           </div>
                           <div class="col-lg-7 col-md-2 col-sm-1" style="width: 58.31%; overflow: hidden;">
                               <a href="#" class="sandwich-link" data-toggle="collapse" <%--data-target=".leftSideBar"--%> id="btnToggle">
                                   <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-list" style="margin-top:30px" viewBox="0 0 16 16">
                                       <path fill-rule="evenodd" d="M2.5 12a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5zm0-4a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5zm0-4a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5z" />
                                   </svg>
                               </a>
                           </div>
                           <div class="col-lg-1 col-md-3 col-sm-4" style="width: 8.33%;">
                               <%-- User Drop Down Button --%>
                               <div class="dropdown show">                                  
                                   <a class="btn btn-secondary dropdown-toggle" style="margin-top:10px" href="#" role="button" id="userDropDownList" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
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
                           </div>
                           <div class="col-lg-1 col-md-3 col-sm-4 " style="width: 8.33%;">
                               <%-- Header Language Selection --%>
                               <div class="dropdown">
                                   <asp:Button runat="server" style="margin-top:10px;" class="btn btn-secondary btn-primary btn-lg dropdown-toggle" type="button" ID="dropdownMenu2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"
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
                   </div> 
                </div>
           </div>
           <%-- Body designed by Kamalakantadas --%>
           <div id="dashboardBody" style="margin-top:125px">
               <div class="container-fluid">
                   <div class="row " style="display:inline-flex;width:100%">
                       <!-- Left Side Lists -->
                       <div class="col-lg-3 scrollable" id="sidebar" style="width: 25%; background-color: #f2f2f2;">
                           <%-- My Account --%>
                           <ul class="">
                               <li>
                                   <asp:LinkButton runat="server" OnClick="Page_Load">
                                       <i class="icon-feather-grid"></i>
                                       <div>Dashboard</div>
                                   </asp:LinkButton>
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
                                           <a class="dropdown-item" href="all-documents.aspx">All Documents</a>
                                           <a class="dropdown-item" href="all-Images.aspx">All AI Images</a>
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
                                   <a href="ai-templates/Ai-templates.aspx">
                                       <i class="icon-feather-layers"></i>
                                       <div>Templates</div>
                                   </a>
                               </li>
                               <li>
                                   <a href="ai-images.aspx">
                                       <i class="icon-feather-image"></i>
                                       <div>Ai Images</div>
                                   </a>
                               </li>
                               <li>
                                   <a href="ai-chat.aspx">
                                       <i class="icon-feather-message-circle"></i>
                                       <div>Ai Chat</div>                                    
                                   </a>
                               </li>
                               <li>
                                   <a href="speechToText.aspx">
                                       <i class="icon-feather-headphones"></i>
                                       <div>Speech to Text</div>                                       
                                   </a>
                               </li>
                               <li>
                                   <a href="ai-code.aspx">
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
                                           <a class="dropdown-item" href="affiliate-program.aspx">Affiliate Program</a>
                                           <a class="dropdown-item" href="withdrawals.aspx">Withdrawals</a>
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
                               <li><a href="accountSetting.aspx"><i class="icon-feather-log-out"></i>
                                       <div>Account Setting</div>
                                   </a>
                               </li>
                               <li>
                                   <%--<a href="#">
                                       <i class="icon-material-outline-power-settings-new"></i>
                                       <div>Logout</div>
                                   </a>--%>
                                    <asp:LinkButton class="dropdown-item" OnClick="logout" runat="server">Logout</asp:LinkButton>

                               </li>
                           </ul>
                       </div>
                       <%-- Right Side --%>
                       <div class="col-lg-9 scrollable" id="content"  style="/*width:75%;*/background:#f2f2f2;z-index:99;padding-left:50px;padding-top:50px;">
                           <div id="rightSide">
                               <%-- Right content 1st row only content --%>
                               <div class="row" >
                                   <%-- Left Side of Right side --%>
                                   <div class="col-md-2 col-lg-2 col-sm-4">
                                       <h3>Dashboard</h3>
                                   </div>
                                   <div class="col-md-6">
                                   </div>
                                   <%-- Right Side of Right side --%>
                                   <div class="col-md-4 col-lg-3 col-sm-8">
                                       <div id="SubPage">
                                           <ul style="display: inline-flex;">
                                               <li><a href="index.aspx">Home</a></li>
                                               <li><a href="#">Dashboard</a></li>
                                           </ul>
                                       </div>
                                   </div>
                               </div>
                               <%-- 3 boxes Right content 2nd row --%>
                               <div class="row">
                                   <%-- Words Used --%>
                                   <div class="col-lg-4 col-md-4 col-sm-4" style="width: 33%;">
                                       <div id="wordsUsed" style="height: 150px; background-color: white; margin-bottom: 30px; margin-right: 30px">
                                           <div class="row">
                                               <div class="col-lg-8 col-md-8 col-sm-8">
                                                   <div id="wu" style="padding-left: 40px; padding-top: 40px; width: 50%;">
                                                       <h5>Words Used</h5>
                                                       <h5>0/10,000</h5>
                                                   </div>
                                               </div>
                                               <div class="col-lg-4 col-md-4 col-sm-4" style="background-position: center; width: 50%;">
                                                   <svg xmlns="http://www.w3.org/2000/svg" style="height: 140px; width: 40px; fill: rgb(184, 27, 127);" viewBox="0 0 576 512">
                                                       <!--! Font Awesome Pro 6.4.0 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license (Commercial License) Copyright 2023 Fonticons, Inc. -->
                                                       <path d="M384 160c-17.7 0-32-14.3-32-32s14.3-32 32-32H544c17.7 0 32 14.3 32 32V288c0 17.7-14.3 32-32 32s-32-14.3-32-32V205.3L342.6 374.6c-12.5 12.5-32.8 12.5-45.3 0L192 269.3 54.6 406.6c-12.5 12.5-32.8 12.5-45.3 0s-12.5-32.8 0-45.3l160-160c12.5-12.5 32.8-12.5 45.3 0L320 306.7 466.7 160H384z" />
                                                   </svg>

                                               </div>
                                           </div>
                                       </div>
                                   </div>
                                   <%-- Images Used --%>
                                   <div class="col-lg-4 col-md-4 col-sm-4" style="width: 33%;">
                                       <div id="imagesUsed" style="height: 150px; background-color: white; margin-bottom: 30px; margin-right: 30px;">
                                           <div class="row">
                                               <div class="col-lg-6 col-md-6 col-sm-6" style="width: 50%;">
                                                   <div id="iu" style="padding-left: 40px; padding-top: 40px;">
                                                       <h5>Images Used</h5>
                                                       <h5>0/100</h5>
                                                   </div>
                                               </div>
                                               <div class="col-lg-6 col-md-6 col-sm-6" style="color: rgb(54, 189, 120); text-align: center; width: 50%">
                                                   <svg xmlns="http://www.w3.org/2000/svg" style="margin-top: 20px;" width="100px" height="100px" fill="currentColor" class="bi bi-bar-chart-line" viewBox="0 0 16 16">
                                                       <path d="M11 2a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1v12h.5a.5.5 0 0 1 0 1H.5a.5.5 0 0 1 0-1H1v-3a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1v3h1V7a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1v7h1V2zm1 12h2V2h-2v12zm-3 0V7H7v7h2zm-5 0v-3H2v3h2z" />
                                                   </svg>
                                               </div>
                                           </div>
                                       </div>
                                   </div>
                                   <%-- Speech Text --%>
                                   <div class="col-lg-4 col-md-4 col-sm-4" style="width: 33%;">
                                       <div id="speechText" style="height: 150px; background-color: white; margin-bottom: 30px; margin-right: 30px">
                                           <div class="row">
                                               <div class="col-lg-6 col-md-6 col-sm-6" style="width: 50%">
                                                   <div id="st" style="padding-left: 40px; padding-top: 40px;">
                                                       <h5>Speech Text</h5>
                                                       <h5>0/0</h5>
                                                   </div>
                                               </div>
                                               <div class="col-lg-6 col-md-6 col-sm-6" style="color: rgb(239, 168, 15); text-align: center; width: 50%">
                                                   <svg xmlns="http://www.w3.org/2000/svg" width="100px" height="100px" style="margin-top: 30px;" fill="currentColor" class="bi bi-headphones" viewBox="0 0 16 16">
                                                       <path d="M8 3a5 5 0 0 0-5 5v1h1a1 1 0 0 1 1 1v3a1 1 0 0 1-1 1H3a1 1 0 0 1-1-1V8a6 6 0 1 1 12 0v5a1 1 0 0 1-1 1h-1a1 1 0 0 1-1-1v-3a1 1 0 0 1 1-1h1V8a5 5 0 0 0-5-5z" />
                                                   </svg>
                                               </div>
                                           </div>
                                       </div>
                                   </div>
                               </div>
                               <%-- second Row for right content--%>
                               <%-- Chart --%>
                               <div class="row" style="padding-bottom:50px">
                                   <%-- Chart Header--%>
                                   <div id="chartHeader" style="width: 100%; background-color: white;">
                                   </div>
                                   <%-- Chart Body--%>
                                   <div id="chartbody" style="width: 100%; background-color: white; margin-left: 15px; margin-right: 45px; padding-bottom: 50px">
                                       <div class="headlinechart" style="box-shadow: 1px 1px 5px grey;">
                                           <h5 class="text-muted" style="padding-left: 10px; padding-top: 10px; padding-bottom: 10px">Words used this month</h5>
                                       </div>
                                       <div>
                                           <canvas id="myChart"></canvas>
                                       </div>
                                   </div>
                               </div>

                               <%-- Footer Dashboard --%>
                               <%-- Footer Design By Kamalakantadas row navbar navbar-expand-lg navbar-dark bg-dark--%>
                               <div class="row-fluid" style="padding-bottom:80px;border-top: 1px solid #ccc;">
                                   <footerclass="footer" style="position: sticky; bottom: 0;margin-bottom:85px;text-align:center;width: 100%;height: 80px;background:#f2f2f2;">
                                       <div class="row navbar py-3 full-width">
                                                <div class="col-md-6">
                                                    <span class="footer-copyright-text">@ 2023 Socius IGB Pvt Ltd, All right reserved</span>
                                                </div>
                                                <div class="col-md-6">
                                                   <!-- Facebook -->
                                                    <a class="btn" style="" href="#!" role="button"></a>
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


                                                    <!-- Github -->
                                                    <a class="btn btn-primary" style="background-color: #333333;" href="#!" role="button"
                                                      ><i class="fab fa-github"></i
                                                    ></a>

                                                </div> 
                                            </div>
                                   </footerclass> 
                               </div>                                     
                           </div>
                       </div>
                  </div>                               
               </div>
           </div>
           <%-- Bottom Fixed Bar Design by Kamalakantadas --%>
           <div class="row-fluid fixed-bottom" style="position:fixed;bottom:0;padding:10px;background-color:white;z-index: 999;width:100%;height:70px;box-shadow: 2px 2px 5px grey;">
               
           </div>
       </div>
   </form>
</body>
  
</html>