<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="membership.aspx.cs" Inherits="QuickAI.membership.membership" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Membership</title>
    <link href="../IndexPage.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" />    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>   
    <script src="../Scripts/membership.js"></script>
</head>

<body>    
    <form id="membershipForm" runat="server">
        <div id="memberShipPage">
             <%-- Header Contentt Writen by kamalakantadas27@gmail.com --%>
           <div id="dHeader">
               <%-- Hide EmailverficationBar --%>
               <%--<div class="container" id="emailBar" style="height:50px;display:none">
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
           <%-- Body designed by Kamalakantadas --%>
           <div id="dashboardBody" style="margin-top:95px">
               <div class="container-fluid">
                   <div class="row" style="display:inline-flex;width:100%">
                       <!-- Left Side Lists -->
                       <div class="col-lg-3 scrollable" id="sidebar" style="width: 25%; background-color: #f2f2f2;">
                           <%-- My Account --%>
                           <ul class="">
                               <li>
                                   <a href="dashboard.aspx">
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
                                           <a class="dropdown-item" href="#">All Documents</a>
                                           <a class="dropdown-item" href="#">All AI Images</a>
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
                                   <a href="#">
                                       <i class="icon-feather-layers"></i>
                                       <div>Templates</div>
                                   </a>
                               </li>
                               <li>
                                   <a href="#">
                                       <i class="icon-feather-image"></i>
                                       <div>Ai Images</div>
                                   </a>
                               </li>
                               <li>
                                   <a href="#">
                                       <i class="icon-feather-message-circle"></i>
                                       <div>Ai Chat</div>
                                   </a>
                               </li>
                               <li>
                                   <a href="#">
                                       <i class="icon-feather-headphones"></i>
                                       <div>Speech to Text</div>
                                   </a>
                               </li>
                               <li>
                                   <a href="#">
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
                                           <a class="dropdown-item" href="#">Affiliate Program</a>
                                           <a class="dropdown-item" href="#">Withdrawals</a>
                                       </div>
                                   </div>
                               </li>
                               <li>
                                   <a href="#">
                                       <i class="icon-feather-gift"></i>
                                       <div>Membership</div>
                                   </a>

                               </li>
                               <li>
                                   <a href="#">
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
                                   <a href="#">
                                       <i class="icon-material-outline-power-settings-new"></i>
                                       <div>Logout</div>
                                   </a>

                               </li>
                           </ul>
                       </div>
                       <%-- Right Side --%>
                       <div class="col-lg-9 scrollable" id="content"  style="width:75%;background:#f2f2f2;z-index:99;padding-left:50px;padding-top:50px;">
                           <div id="rightSide">
                               <%-- Right content 1st row only content --%>
                               <div class="row" >
                                   <%-- Left Side of Right side --%>
                                   <div class="col-md-6">
                                       <h3>Current Plan</h3>
                                   </div>

                                   <%-- Right Side of Right side --%>
                                   <div class="col-md-6">
                                       <div id="SubPage">
                                           <ul style="display: inline-flex;">
                                               <li><a href="index.aspx">Home</a></li>
                                               <li><a href="#">Current Plan</a></li>
                                           </ul>
                                       </div>
                                   </div>
                               </div>
                               
                               <%-- second Row for right content--%>
                               <div id="membershipTable">
                                   <div class="row" style="width: 100%; background-color: white;display:inline-flex;">
                                       <div class="col-lg-2" style="padding-top:10px">                                           
                                           <img src="Images/giftBoxIcon.png" style="height:20px;"/>
                                           <p class="align-baseline" style="float:right">Current Plan</p>
                                       </div>
                                       <div class="col-lg-10"></div>
                                   </div>
                                   <div class="row">
                                       <table class="table" style="margin-right:30px;">
                                           <thead class="thead-light">
                                               <tr class="table-light">
                                                   <th scope="col">MemberShip</th>
                                                   <th scope="col">Payment Mode</th>
                                                   <th scope="col">Start Date</th>
                                                   <th scope="col">Expire Date</th>
                                               </tr>
                                           </thead>
                                           <tbody>
                                               <tr class="table-light">                                                   
                                                   <td>Free Plan</td>
                                                   <td>One Time</td>
                                                   <td>-</td>
                                                   <td>-</td>
                                               </tr>                                              
                                           </tbody>
                                       </table>
                                   </div>
                                   <div class="row"style="margin-right:30px;margin-bottom:50px">
                                       <div class="col-lg-6"></div>
                                       <div class="col-lg-6" >
                                           <div class="form-group">
                                               <asp:Button class="btn btn-primary" ID="changePlan" OnClick="changePlanMembership" Text="Change Plan" runat="server" style="float:right;"/> 
                                           </div>
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
