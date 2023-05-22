<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="withdrawals.aspx.cs" Inherits="QuickAI.withdrawals" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>withdrawals</title>
    <link href="IndexPage.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" />
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" /> 
    <script src="Scripts/withdrawals.js"></script>
</head>
<body>
    <form id="withdrawals" runat="server">
         <div id="affPage">
            <%-- Header Contentt Writen by kamalakantadas27@gmail.com --%>
            <div id="withdrawalsHeader">
                <div class="container" id="emailBar" style="height: 50px; display: none">
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
                <nav class="row navbar navbar-expand-lg navbar-light fixed-top" id="headerBar" style="box-shadow: 2px 2px 5px grey; z-index: 999; background-color: white;">
                    <div class="row" style="width: 100%; height: 50px;"></div>
                    <div class="row" style="width: 100%;">
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
                            <a class="btn btn-secondary dropdown-toggle" href="#" role="button" id="userDropDownList" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <asp:Image runat="server" ID="userImage" src="Images/Image%20ICON.png" Style="height: 30px;" onmouseover="viewText()" onmouseout="hideText()" alt="" class="hover-text" />
                                <asp:TextBox ID="viewImage" Style="display: none; width: 100px;" runat="server" value=""></asp:TextBox>
                            </a>
                            <div class="dropdown-menu" aria-labelledby="userDropDownList">
                                <a class="dropdown-item" href="dashboard.aspx">Dashboard</a>
                                <a class="dropdown-item" href="ai-templates/Ai-templates.aspx">Templates</a>
                                <a class="dropdown-item" href="ai-images.aspx">AI Images</a>
                                <a class="dropdown-item" href="ai-chat.aspx">AI Chat</a>
                                <a class="dropdown-item" href="speechToText.aspx">Speech to Text</a>
                                <a class="dropdown-item" href="#">AI Code</a>
                                <a class="dropdown-item" href="all-documents.aspx">All Documents</a>
                                <a class="dropdown-item" href="membership/membership.aspx">Membership</a>
                                <a class="dropdown-item" href="accountSetting.aspx">Account Setting</a>
                                <asp:LinkButton class="dropdown-item" OnClick="logout" runat="server">Logout</asp:LinkButton>
                            </div>
                        </div>
                        <%--<div id="joinButtonFunct" runat="server" style="display:none">
                                <asp:Button runat="server" type="button" class="btn btn-primary btn-lg btn-block header-widget" ID="joinbutton" Text="JOIN" OnClick="joinbutton_Click" />
                            </div>--%>
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
             <div id="withdrawalsBody" style="margin-top: 80px">
                 <div class="container-fluid">
                     <div class="row" style="display: inline-flex; width: 100%">
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
                                             <a class="dropdown-item" href="withdrawals">Withdrawals</a>
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
                                     <%--<a href="#">
                                         <i class="icon-material-outline-power-settings-new"></i>
                                         <div>Logout</div>
                                     </a>--%>
                                      <asp:LinkButton class="dropdown-item" OnClick="logout" runat="server">Logout</asp:LinkButton>

                                 </li>
                             </ul>
                         </div>
                         <%-- Right Side --%>
                         <div class="col-lg-9 scrollable" id="content" style="width: 75%; background: #f2f2f2; z-index: 99; padding-left: 50px; padding-top: 50px;">
                             <div id="rightSide">
                                 <%-- Right content 1st row only content --%>
                                 <div class="row">
                                     <%-- Left Side of Right side --%>
                                     <div class="col-md-2">
                                         <h3>WithDrawals</h3>
                                     </div>
                                     <div class="col-md-6">
                                     </div>
                                     <%-- Right Side of Right side --%>
                                     <div class="col-md-4">
                                         <div id="SubPage">
                                             <ul style="display: inline-flex;">
                                                 <li><a href="index.aspx">Home</a></li>
                                                 <li><a href="withdrawals">Withdrawals</a></li>
                                             </ul>
                                         </div>
                                     </div>
                                 </div>
                                 <%-- Request Withdrawals Start --%>
                                 <div id="div0" class="row"  style="background-color: white;box-shadow: 2px 2px 5px grey; margin-right: 5px;margin-bottom:30px;padding:10px">
                                     <div id="div1" class="row" style="border-bottom:1px solid grey;width:100%;margin:15px;">
                                         <div id="left"><p>Request Withdrawal</p></div>
                                         <div id="right" style="float:right">
                                             <a id="hideDiv2"><i class="fa fa-bell-o"></i></a>
                                         </div>                                         
                                     </div>
                                     <div id="div2">
                                         <div id="sdiv1" class="row" style="background-color: cornflowerblue;margin:10px;padding:10px;">
                                             <p>The requested amount will be deducted from your wallet and the amount will be blocked until it get approved or rejected by the administrator. Once its approved, the requested amount will be manually pay to you.</p>
                                         </div>
                                         <div id="ssdiv2" class="row" style="margin:15px">
                                             <div id="sdiv2" class="col-md-6">
                                                 <p>Withdrawals Amount</p>
                                                 <div class="row" style="height:50px;box-shadow: 0px 0px 4px 1px grey;" >
                                                     <div class="col-md-10">
                                                          <input type="number" id="amount"  style="border:none;outline:none;padding:10px;width:367px" />
                                                     </div>
                                                     <div class="col-md-2">
                                                         <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-cash" style="margin:8px"; viewBox="0 0 16 16">
                                                             <path d="M8 10a2 2 0 1 0 0-4 2 2 0 0 0 0 4z" />
                                                             <path d="M0 4a1 1 0 0 1 1-1h14a1 1 0 0 1 1 1v8a1 1 0 0 1-1 1H1a1 1 0 0 1-1-1V4zm3 0a2 2 0 0 1-2 2v4a2 2 0 0 1 2 2h10a2 2 0 0 1 2-2V6a2 2 0 0 1-2-2H3z" />
                                                         </svg>
                                                     </div>
                                                 </div>
                                                 <div class="row mt-3">
                                                     <p class="text-muted">Minimum withdrawal amount: 50</p>
                                                 </div>
                                             </div>
                                             <div id="sdiv3" class="col-md-6">
                                                 <%-- Empty --%>
                                             </div>
                                         </div>
                                        
                                         <div id="ssdiv3" class="row" style="margin:15px">
                                             <div id="sdiv4" class="col-md-6">
                                                 <div class="row mb-3">
                                                     Payment Method
                                                 </div>
                                                 <div id="rd">
                                                     <div class="row">
                                                         <input type="radio" id="paypal" name="rdPayment" />PayPal
                                                     </div>
                                                     <div class="row">
                                                         <input type="radio" id="bank" name="rdPayment" />Bank Deposit
                                                     </div>
                                                 </div>
                                             </div>
                                             <div id="sdiv5" class="col-md-6">
                                                 <%-- Empty --%>
                                             </div>
                                         </div>
                                         <div id="ssdiv4" class="row" style="margin:15px">
                                             <div id="sdiv6" class="col-md-6">
                                                 <div class="row mb-2">
                                                     Account Details
                                                 </div>
                                                 <div class="">
                                                     <textarea rows="3" id="paymentDetails" style="width:408px;box-shadow: 0px 0px 4px 1px grey;border:none;outline:nones"></textarea>
                                                 </div>
                                                 <div class="row mt-2 mb-3">
                                                     <p><small>Write here your payment id or payment details of selected payment gateways</small></p>
                                                 </div>                                                 
                                             </div>
                                             <div id="sdiv7" class="col-md-6">
                                                 <%-- Empty --%>
                                             </div>
                                         </div>
                                         <div id="ssdiv5" class="row" style="margin:15px">
                                             <div id="sdiv8" class="col-md-6">
                                                 <div>
                                                     <input type="button" class="btn btn-primary form-control" value="Withdraw" style="height:50px;width:94px"/>
                                                 </div>
                                             </div>
                                             <div id="sdiv9" class="col-md-6">
                                                 <%-- Empty --%>
                                             </div>
                                         </div>
                                         <div id="ssdiv6" style="margin:15px">
                                             <div id="sdiv10"></div>
                                             <div id="sdiv11">
                                                 <%-- Empty --%>
                                             </div>
                                         </div>
                                     </div>
                                 </div>
                                 <%-- Request Withdrawals End --%>
                                 <%-- Table Start --%>
                                 <div class="row" style="background-color: white; box-shadow: 2px 2px 5px grey; margin-right: 5px; height: 50px; padding: 12px">
                                     <svg xmlns="http://www.w3.org/2000/svg" width="40" height="28" fill="currentColor" class="bi bi-cash" viewBox="0 0 16 16">
                                         <path d="M8 10a2 2 0 1 0 0-4 2 2 0 0 0 0 4z"></path>
                                         <path d="M0 4a1 1 0 0 1 1-1h14a1 1 0 0 1 1 1v8a1 1 0 0 1-1 1H1a1 1 0 0 1-1-1V4zm3 0a2 2 0 0 1-2 2v4a2 2 0 0 1 2 2h10a2 2 0 0 1 2-2V6a2 2 0 0 1-2-2H3z"></path>
                                     </svg>
                                     <h5>Withdrawals Request</h5>
                                 </div>
                                 <div class="row" style="background-color: white; box-shadow: 2px 2px 5px grey; margin-right: 5px; padding-top: 30px; padding-bottom: 50px;">
                                     <table class="table">
                                         <thead class="thead-dark">
                                             <tr>
                                                 <th scope="col">Commission</th>
                                                 <th scope="col">Total Amount</th>
                                                 <th scope="col">Commission Rate</th>
                                                 <th scope="col">Transaction ID</th>
                                                 <th scope="col">Date</th>
                                             </tr>
                                         </thead>
                                         <tbody>
                                             <tr>
                                                 <td>No Result Found</td>
                                             </tr>
                                         </tbody>
                                     </table>

                                     <%-- Table end --%>
                                 </div>
                                 <%-- Table End --%>
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
         </div>
    </form>
</body>
</html>
