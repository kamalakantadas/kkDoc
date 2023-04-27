<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dashboard.aspx.cs" Inherits="QuickAI.dashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Dashboard</title>
    <link href="IndexPage.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>    
</head>
<body>    
   <form id="form1" runat="server">
       <div id="DashBoard">
           <%-- Header Contentt Writen by kamalakantadas --%>
           <div id="dHeader">
                <nav class="row navbar navbar-expand-lg navbar-light fixed-top" style="box-shadow: 2px 2px 5px grey;border-style: ridge;">                    
                    <div class="col-lg-2" style="width:16.66%; overflow: hidden;"  >
                                
                        <a class="navbar-brand" href="Index.aspx">                    
                            <img src="Images/1149945428.png" style="padding-left:35px;padding-right:35px;overflow: hidden;"/>
                        </a>
                        
                    </div>
                    <div class="col-lg-8" style="width:58.31%;">
                        <a href="#" class="sandwich-link" data-toggle="collapse" data-target="#leftSideBar">
                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-list" viewBox="0 0 16 16">
                              <path fill-rule="evenodd" d="M2.5 12a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5zm0-4a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5zm0-4a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5z"/>
                            </svg>
                        </a>
                    </div>
                    <div class="col-lg-1" style="width:8.33%;overflow: hidden;">
                        <a href="#"> 
                        <svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" fill="currentColor" class="bi bi-person" viewBox="0 0 16 16">                          
                          <path d="M8 8a3 3 0 1 0 0-6 3 3 0 0 0 0 6Zm2-3a2 2 0 1 1-4 0 2 2 0 0 1 4 0Zm4 8c0 1-1 1-1 1H3s-1 0-1-1 1-4 6-4 6 3 6 4Zm-1-.004c-.001-.246-.154-.986-.832-1.664C11.516 10.68 10.289 10 8 10c-2.29 0-3.516.68-4.168 1.332-.678.678-.83 1.418-.832 1.664h10Z"/>
                        </svg>
                        </a>
                    </div>
                    <div class="col-lg-1" style="width:8.33%;">
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
           <%-- Body --%>
           <div id="bPage">
               <div class="container-fluid" style="margin-top:95px;">
                   <div class="row">
                       <%-- Left Side --%>
                       <div class="col-md-2" style="width:200px;box-shadow: 2px 2px 5px grey;border-style: ridge;">
                           <div id="leftFixBar" >

                           </div>
                       </div>
                       <%-- Right Side --%>
                       <div class="col-md-10"  style="width:75%;background:#f2f2f2;margin-left:200px;padding:60px">
                           <div id="rightSide">
                               <div class="row" >
                                   <%-- Left Side of Right side --%>
                                   <div class="col-md-2">
                                       <h3>Dashboard</h3>
                                   </div>
                                   <div class="col-md-8">

                                   </div>
                                    <%-- Right Side of Right side --%>
                                   <div class="col-md-2">
                                        <nav id="SubPage">
                                          <ul>
                                             <li "><a href="index.aspx">Home</a></li>                                      
                                             <li" >Dashboard:</li>
                                          </ul>
                                       </nav>
                                   </div>
                               </div>
                               <div class="row">
                                   <%-- Words Used --%>
                                   <div class="col-md-6" >
                                       <div id="wordsUsed" style="height:150px;background-color:white;margin-bottom:30px;margin-right:30px" >
                                           <div class="row">
                                               <div class="col-md-8">
                                                   <div id="wu" style="padding-left:40px;padding-top:40px;">
                                                       <h5>Words Used</h5>
                                                       <h5>0/10,000</h5>
                                                   </div>
                                               </div>
                                               <div class="col-md-4" style="background-color: rgb(184, 27, 127);overflow-x: auto;">                                                   
                                                   <svg style="height:130px;width:40px" xmlns="http://www.w3.org/2000/svg" fill="currentColor" class="bi bi-graph-up-arrow" viewBox="0 0 16 16">
  <path fill-rule="evenodd" d="M0 0h1v15h15v1H0V0Zm10 3.5a.5.5 0 0 1 .5-.5h4a.5.5 0 0 1 .5.5v4a.5.5 0 0 1-1 0V4.9l-3.613 4.417a.5.5 0 0 1-.74.037L7.06 6.767l-3.656 5.027a.5.5 0 0 1-.808-.588l4-5.5a.5.5 0 0 1 .758-.06l2.609 2.61L13.445 4H10.5a.5.5 0 0 1-.5-.5Z"/>
</svg>
                                               </div>                                              
                                           </div>
                                       </div>
                                   </div>
                                   <%-- Images Used --%>
                                   <div class="col-md-6" >
                                       <div id="imagesUsed" style="height:150px;background-color:white;margin-bottom:30px;margin-right:30px">
                                           <div class="row">
                                               <div class="col-md-8">
                                                   <div id="iu" style="padding-left:40px;padding-top:40px;">
                                                       <h5>Images Used</h5>
                                                       <h5>0/100</h5>
                                                   </div>
                                               </div>
                                               <div class="col-md-4" style="color: rgb(54, 189, 120);text-align: center;">
                                                   <svg xmlns="http://www.w3.org/2000/svg" width="120px" height="60px" fill="currentColor" class="bi bi-bar-chart-line" viewBox="0 0 16 16">
  <path d="M11 2a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1v12h.5a.5.5 0 0 1 0 1H.5a.5.5 0 0 1 0-1H1v-3a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1v3h1V7a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1v7h1V2zm1 12h2V2h-2v12zm-3 0V7H7v7h2zm-5 0v-3H2v3h2z"/>
</svg>
                                               </div>                                           
                                           </div>
                                       </div>
                                   </div>
                               </div>
                               <%-- second Row for right content--%>
                               <div class="row">
                                   <%-- Speech Text --%>
                                   <div class="col-md-6" >
                                       <div id="speechText" style="height:150px;background-color:white;margin-bottom:30px;margin-right:30px">
                                           <div class="row">
                                               <div class="col-md-8">
                                                   <div id="st" style="padding-left:40px;padding-top:40px;">
                                                       <h5>Speech Text</h5>
                                                       <h5>0/0</h5>
                                                   </div>
                                               </div>
                                               <div class="col-md-4" style="color: rgb(239, 168, 15);text-align: center;">
                                                   <svg xmlns="http://www.w3.org/2000/svg" width="160px" height="60px" fill="currentColor" class="bi bi-headphones" viewBox="0 0 16 16">
  <path d="M8 3a5 5 0 0 0-5 5v1h1a1 1 0 0 1 1 1v3a1 1 0 0 1-1 1H3a1 1 0 0 1-1-1V8a6 6 0 1 1 12 0v5a1 1 0 0 1-1 1h-1a1 1 0 0 1-1-1v-3a1 1 0 0 1 1-1h1V8a5 5 0 0 0-5-5z"/>
</svg>
                                               </div>                                             
                                           </div>
                                       </div>
                                   </div>
                                   <%-- Empty one --%>
                                   <div class="col-md-6">

                                   </div>
                               </div>
                           </div>
                       </div>
                  </div>
               </div>
            </div>
           <%-- Footer Dashboard --%>
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
                </footerclass>   
       </div>
   </form>
</body>
</html>