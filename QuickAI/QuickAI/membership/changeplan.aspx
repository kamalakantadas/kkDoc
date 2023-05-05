<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="changeplan.aspx.cs" Inherits="QuickAI.membership.changeplan" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
   
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Membership Change Plan</title>
      <link href="../IndexPage.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" />

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="Scripts/Dashboard.js"></script>    
</head>
<body>
    <form id="changePlanForm" runat="server">
        <div id="cPForm">
            <%-- Header Form --%>
            <div id="dHeader">             
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
            <%-- ChangePlan Body --%>
            <div class="container-fluid">
                <div class="row" style="margin-top:95px">
                    <div class="col-lg-12" style="padding-left:150px;padding-right:150px">
                        <div class="row">
                            <div class="col-lg-6">
                                <p class="font-weight-normal">Membership Plan</p>                               
                            </div>
                            <div class="col-lg-6">
                                <ul style="display: inline-flex;float:right">
                                <li><a href="../Index.aspx">Home</a></li>
                                <li><a href="#">Membersip Plan</a></li>
                            </ul>
                            </div>
                        </div>
                        <div class="row" style="text-align:center;display:inline-flex;width:100%">
                            <div class="col-md-3"></div>
                            <div class="col-md-6">                                
                               <asp:RadioButton ID="mbtn" runat="server" Text="Monthly" />  
                               
                               <asp:RadioButton ID="ybtn" runat="server" Text="Yearly"/>  
                               
                               <asp:RadioButton ID="lbtn" runat="server" Text="Lifetime" />  
                            
                            </div>
                            <div class="col-md-3"></div>
                            
                        </div>
                        <%-- Plan Scheme duration --%>
                        <div class="row" style="background-color:white;margin-top:40px;box-shadow: 2px 2px 5px grey;padding-top:10px">
                            <%-- Free Trial --%>
                            <div class="col-lg-4">
                                <p class="font-weight-normal">Membership Plan</p>
                                <div id="frp" style="height:70px;width:300px;background-color:lightgrey;padding-top:20px;padding-bottom:20px">
                                    <p class="font-weight-normal" style="text-align:center">Free</p>
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
                                                title="Create audio transcription">
                                            </i>
                                        </li>
                                        <li>
                                            <strong>0 MB</strong> Audio file size limit
                                        </li>
                                        <li>
                                            <span class="icon-text no">
                                                <i
                                                class="icon-feather-x-circle margin-right-2">
                                                </i>
                                            </span>
                                            AI Chat                                                
                                            <i class="icon-feather-help-circle margin-left-2"
                                                data-tippy-placement="top"
                                                title="Chat with the AI bot">
                                            </i>
                                        </li>
                                        <li>
                                            <span class="icon-text no">
                                                <i class="icon-feather-x-circle margin-right-2"></i>
                                            </span>
                                            AI Code                                                
                                            <i class="icon-feather-help-circle margin-left-2"
                                                data-tippy-placement="top"
                                                title="Generate code of any programming language with the AI">
                                            </i>
                                        </li>
                                        <li>
                                            <span class="icon-text yes"><i
                                                class="icon-feather-check-circle margin-right-2">
                                                                        </i>
                                            </span>
                                            Hide Ads
                                        </li>
                                        <li><span class="icon-text no"><i class="icon-feather-x-circle margin-right-2"></i></span>Free Setup</li>
                                        <li><span class="icon-text no"><i class="icon-feather-x-circle margin-right-2"></i></span>Free Support</li>
                                    </ul>
                                </div>
                                <div class="from-group" style="height:50px;margin-bottom:50px">
                                    <asp:Button runat="server" ID="freePlan" Text="Upgrade" class="btn btn-primary form-control" />
                                </div>
                            </div>
                            <%-- Trial Plan --%>
                            <div class="col-lg-4">
                                <p class="font-weight-normal">Trial Plan</p>
                                 <div id="trp" style="height:70px;width:300px;background-color:lightgrey;padding-top:20px;padding-bottom:20px">
                                    <p class="font-weight-normal" style="text-align:center">Trial</p>
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
                                <div class="from-group" style="height:50px;margin-bottom:50px">
                                    <asp:Button runat="server" ID="cPlan" Text="CurrentPlan" class="btn btn-primary form-control" />
                                </div>
                            </div>
                            <%-- Extended plan --%>
                            <div class="col-lg-4">
                                <p class="font-weight-normal">Extended Plan</p>
                                <div id="ltp" style="height:70px;width:300px;background-color:lightgrey;padding-top:20px;padding-bottom:20px">
                                    <p class="font-weight-normal" style="text-align:center">5 / Monthly</p>
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
                                <div class="from-group" style="height:50px;margin-bottom:50px">
                                    <asp:Button runat="server" ID="up" Text="Upgrade" class="btn btn-primary form-control" />
                                </div>
                            </div>
                        </div>
                       
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
