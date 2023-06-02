<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dashboard.aspx.cs" Inherits="QuickAI.dashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Dashboard</title>
    <link href="Style/dashboard.css" rel="stylesheet" />
    <%--<link href="IndexPage.css" rel="stylesheet" />--%>
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
        <%-- Header Contentt Writen by  --%>
           <div id="dHeader">
              <%-- Email Bar end--%>
               <div class="row" id="emailBar">
                   <div class="col-lg-8 col-md-12">
                       <p class="text-left">Your Email Address is not verified. Please Verify your email address to use all the feature.</p>
                   </div>
                   <div class="col-lg-2 col-sm-6">
                       <div class="form-group pt-2">
                           <asp:TextBox runat="server" ID="verifyEmailBox" class="form-control"></asp:TextBox>
                       </div>
                   </div>
                   <div class="col-lg-2 col-sm-6">
                       <asp:Button class="btn btn-primary" OnClick="verifyEmail" runat="server" ID="verfiyEmailBtn" Text="VerifyEmail" />
                   </div>
               </div>
               
               <%-- Headear Bar --%>          
               <div class="headerBar">
                   <%-- Header starts here --%>
                   <div>
                       <a class="navbar-brand" href="Index.aspx">
                           <img src="Images/1149945428.png"/>
                       </a>
                   </div>
                   <div>
                       <a href="#" class="sandwich-link" data-toggle="collapse" id="btnToggle">
                           <i class="fa fa-bars" aria-hidden="true"></i>
                       </a>
                   </div>
                   <div>
                        <asp:TextBox ID="viewImage" Style="display: none;" runat="server" value=""></asp:TextBox>
                   </div>
                   <div>
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
                   <div >
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
                   <%-- Header End Here --%>                   
               </div>
           </div>
           <%-- Body designed by --%>
           <div class="row dashboardBody" <%--id="dashboardBody"--%>>
               <!-- Left Side Lists -->
               <div class="col-lg-3 scrollable" id="sidebar">
                   <%-- My Account --%>
                   <ul>
                       <li>
                           <asp:LinkButton runat="server" OnClick="Page_Load">
                                       <i class="icon-feather-grid"></i>
                                       <div>Dashboard</div>
                           </asp:LinkButton>
                       </li>

                       <li>
                           <div class="dropdown">
                               <button class="btn btn-secondary dropdown-toggle" type="button" id="MyDocDrop" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                   <i class="fa fa-file" aria-hidden="true"></i>My Documents
                               </button>
                               <div class="dropdown-menu" aria-labelledby="MyDocDrop">
                                   <a class="dropdown-item" href="all-documents.aspx">All Documents</a>
                                   <a class="dropdown-item" href="all-Images.aspx">All AI Images</a>
                               </div>
                           </div>
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
                   <ul>
                       <li>Account</li>
                       <li class="">
                           <div class="dropdown show">
                               <a class="btn btn-secondary dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Affiliate Program
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
                           <asp:LinkButton class="dropdown-item" OnClick="logout" runat="server">Logout</asp:LinkButton>

                       </li>
                   </ul>    
               </div>
               <%-- Right Side --%>
               <div class="col-lg-9 scrollable" id="content">
                   <div id="rightSide">
                       <%-- Right content 1st row only content --%>
                       <div class="row">
                           <%-- Left Side of Right side --%>
                           <div class="col-2">
                               <h3>Dashboard</h3>
                           </div>
                           <div class="col-6">
                           </div>
                           <%-- Right Side of Right side --%>
                           <div class="col-4 ">
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
                           <div class="col-lg-4 col-md-12" >
                               <div id="wordsUsed" style="margin: 10px">
                                   <div class="col-md-6">
                                       <h5>Words Used</h5>
                                       <h5>0/10,000</h5>
                                   </div>
                                   <div class="col-md-6">
                                       <svg xmlns="http://www.w3.org/2000/svg" style="height: 140px; width: 40px; fill: rgb(184, 27, 127);" viewBox="0 0 576 512">
                                           <!--! Font Awesome Pro 6.4.0 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license (Commercial License) Copyright 2023 Fonticons, Inc. -->
                                           <path d="M384 160c-17.7 0-32-14.3-32-32s14.3-32 32-32H544c17.7 0 32 14.3 32 32V288c0 17.7-14.3 32-32 32s-32-14.3-32-32V205.3L342.6 374.6c-12.5 12.5-32.8 12.5-45.3 0L192 269.3 54.6 406.6c-12.5 12.5-32.8 12.5-45.3 0s-12.5-32.8 0-45.3l160-160c12.5-12.5 32.8-12.5 45.3 0L320 306.7 466.7 160H384z" />
                                       </svg>
                                   </div>
                               </div>                                                         
                           </div>
                           <%-- Images Used --%>
                           <div class="col-lg-4 col-md-12" >
                               <div style="margin:10px" id="imagesUsed">
                                   <div class="col-md-6">
                                       <div id="iu">
                                           <h5>Images Used</h5>
                                           <h5>0/100</h5>
                                       </div>
                                   </div>
                                   <div class="col-md-6">
                                       <svg xmlns="http://www.w3.org/2000/svg" style="margin-top: 20px;" width="100px" height="100px" fill="currentColor" class="bi bi-bar-chart-line" viewBox="0 0 16 16">
                                           <path d="M11 2a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1v12h.5a.5.5 0 0 1 0 1H.5a.5.5 0 0 1 0-1H1v-3a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1v3h1V7a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1v7h1V2zm1 12h2V2h-2v12zm-3 0V7H7v7h2zm-5 0v-3H2v3h2z" />
                                       </svg>
                                   </div>
                               </div>                               
                           </div>
                           <%-- Speech Text --%>
                           <div class="col-lg-4 col-md-12" >
                               <div style="margin:10px;" id="speechText">
                                   <div class="col-md-6" id="st">
                                       <h5>Speech Text</h5>
                                       <h5>0/0</h5>
                                   </div>
                                   <div class="col-md-6" style="color: rgb(239, 168, 15);">
                                       <svg xmlns="http://www.w3.org/2000/svg" width="100px" height="100px" fill="currentColor" class="bi bi-headphones" viewBox="0 0 16 16">
                                           <path d="M8 3a5 5 0 0 0-5 5v1h1a1 1 0 0 1 1 1v3a1 1 0 0 1-1 1H3a1 1 0 0 1-1-1V8a6 6 0 1 1 12 0v5a1 1 0 0 1-1 1h-1a1 1 0 0 1-1-1v-3a1 1 0 0 1 1-1h1V8a5 5 0 0 0-5-5z" />
                                       </svg>
                                   </div>
                               </div>                               
                           </div>
                       </div>
                   </div>
                   <%-- second Row for right content--%>
                   <%-- Chart --%>
                   <div class="row" id="chartbody">
                       <%-- Chart Body--%>
                       <div class="col-12">
                           <h3 class="text-muted">Words used this month</h3>
                           <canvas id="myChart"></canvas>
                       </div>                       
                   </div>

                   <%-- dashboard Footer--%>
                   <div class="row-fluid">
                       <div class="row footer">
                           <div class="col-6">
                               <span class="footer-copyright-text">@ 2023 Socius IGB Pvt Ltd, All right reserved</span>
                           </div>
                           <div class="col-6">
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
                   </div>
               </div>
           </div>
       </div>

       <%-- Bottom Fixed --%>
       <div class="row-fluid fixed-bottom">
       </div>
    
   </form>
</body>
  
</html>