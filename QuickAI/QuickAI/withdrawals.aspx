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
        <%-- Withdrawals Header --%>
        <div class="headerBar">
            <%-- Header starts here --%>
            <div>
                <a class="navbar-brand" href="Index.aspx">
                    <img src="Images/1149945428.png" id="websiteLogo" />
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
                        <asp:Image runat="server" ID="Image1" src="Images/Image%20ICON.png" Style="height: 30px;" onmouseover="viewText()" onmouseout="hideText()" alt="" class="hover-text" />
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
        <div id="withdrawalsBody">
            <div class="row">
                <!-- Left Side Lists -->
                <div class="col-lg-3 scrollable" id="sidebar" style="background-color: #f2f2f2;">
                    <%-- My Account --%>
                    <ul class="">
                        <li><a href="dashboard.aspx"><i class="icon-feather-grid"></i>
                            <div>Dashboard</div>
                        </a></li>
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
                        </li>
                    </ul>
                    <%-- Organize and Manage --%>
                    <ul>
                        <li>Organize and Manage</li>
                        <li><a href="ai-templates/Ai-templates.aspx"><i class="icon-feather-layers"></i>
                            <div>Templates</div>
                        </a></li>
                        <li><a href="ai-images.aspx"><i class="icon-feather-image"></i>
                            <div>Ai Images</div>
                        </a></li>
                        <li><a href="ai-chat.aspx"><i class="icon-feather-message-circle"></i>
                            <div>Ai Chat</div>
                        </a></li>
                        <li><a href="speechToText.aspx"><i class="icon-feather-headphones"></i>
                            <div>Speech to Text</div>
                        </a></li>
                        <li><a href="ai-code.aspx"><i class="icon-feather-code"></i>
                            <div>Ai Code</div>
                        </a></li>
                    </ul>
                    <%-- Account --%>
                    <ul style="padding-bottom: 50px">
                        <li>Account</li>
                        <li class="">
                            <div class="dropdown show" style="">
                                <a class="btn btn-secondary dropdown-toggle" href="#" role="button" style="height: 40px;" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Affiliate Program</a>

                                <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                                    <a class="dropdown-item" href="affiliate-program.aspx">Affiliate Program</a>
                                    <a class="dropdown-item" href="withdrawals">Withdrawals</a>
                                </div>
                            </div>
                        </li>
                        <li><a href="membership/membership.aspx"><i class="icon-feather-gift"></i>
                            <div>Membership</div>
                        </a></li>
                        <li><a href="Transaction.aspx"><i class="icon-feather-file-text"></i>
                            <div>Transactions</div>
                        </a></li>
                        <li><a href="accountSetting.aspx"><i class="icon-feather-log-out"></i>
                            <div>Account Setting</div>
                        </a></li>
                        <li>
                            <asp:LinkButton class="dropdown-item" OnClick="logout" runat="server">Logout</asp:LinkButton>
                        </li>
                    </ul>
                </div>
                <%-- Right Side --%>
                <div class="col-lg-9 scrollable" id="content">
                    <div id="contentWithdrawalsRightSide">
                        <%-- Right content 1st row only content --%>
                        <div class="row mb-5">                        
                            <div class="col-lg-6">
                                <h3>WithDrawals</h3>
                            </div>
                            
                            <div class="col-lg-6">
                                <div id="subPageLink">
                                    <span><a href="index.aspx">Home</a></span>
                                    <span><a href="withdrawals">Withdrawals</a></span>
                                </div>
                            </div>
                        </div>
                       
                        <%-- Request Withdrawals Start --%>
                        <div id="contenWithDrawalsRSInner">
                            <div id="hideDiv2">                                
                                <a ><i class="fa fa-bell-o"></i><p>Request Withdrawal</p></a>
                            </div>
                            <hr />
                            <%-- HideContentInner --%>
                            <div id="hideContentInner">
                                <%-- Shaded content --%>
                                <div id="sdiv1" style="background-color: cornflowerblue;">
                                    <p>The requested amount will be deducted from your wallet and the amount will be blocked until it get approved or rejected by the administrator. Once its approved, the requested amount will be manually pay to you.</p>
                                </div>
                                <%-- Withdrawals AMount --%>
                                <div class="row">
                                    <div class="col-md-6">
                                        <p>Withdrawals Amount</p>
                                        <div style="border:1px solid grey">
                                            <input type="number" id="amount" style="border: none; outline: none;width:90%" />
                                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="currentColor" class="bi bi-cash" viewBox="0 0 16 16">
                                                <path d="M8 10a2 2 0 1 0 0-4 2 2 0 0 0 0 4z" />
                                                <path d="M0 4a1 1 0 0 1 1-1h14a1 1 0 0 1 1 1v8a1 1 0 0 1-1 1H1a1 1 0 0 1-1-1V4zm3 0a2 2 0 0 1-2 2v4a2 2 0 0 1 2 2h10a2 2 0 0 1 2-2V6a2 2 0 0 1-2-2H3z" />
                                            </svg>
                                        </div>
                                        <p class="text-muted">Minimum withdrawal amount: 50</p>                                       
                                    </div>
                                    <div class="col-md-6">
                                        <%-- Empty --%>
                                    </div>
                                </div>

                                
                                <div class="row">
                                    <div class="col-md-6">
                                        <div style="padding-bottom:10px;">
                                            <p class="fw-bold class">Payment Method</p>
                                        </div>
                                        <div>
                                            <input type="radio" id="paypal" name="rdPayment" class="font-weight-light" />PayPal                                                                                               
                                        </div>
                                        <input type="radio" id="bank" name="rdPayment" class="font-weight-light" />Bank Deposit 
                                    </div>
                                    <div class="col-md-6">
                                        <%-- Empty --%>
                                    </div>
                                </div>
                                <%-- Account Details --%>
                                <div class="row mt-3">
                                    <div class="col-md-6">
                                        Account Details
                                        <textarea rows="3" id="paymentDetails" class="form-control mt-1"></textarea>
                                        <p><small>Write here your payment id or payment details of selected payment gateways</small></p>
                                    </div>
                                    <div class="col-md-6">
                                        <%-- Empty --%>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div>
                                            <input type="button" class="btn btn-primary form-control" value="Withdraw" style="height: 50px;" />
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <%-- Empty --%>
                                    </div>
                                </div>
                            </div>                           
                        </div>
                        <%-- Withdrawal Request--%>
                        <div id="withdrawalRequest">
                            <div id="withdrawalHead">                                
                                <h5><svg xmlns="http://www.w3.org/2000/svg" width="40" height="15" fill="currentColor" class="bi bi-cash" viewBox="0 0 16 16">
                                    <path d="M8 10a2 2 0 1 0 0-4 2 2 0 0 0 0 4z"></path>
                                    <path d="M0 4a1 1 0 0 1 1-1h14a1 1 0 0 1 1 1v8a1 1 0 0 1-1 1H1a1 1 0 0 1-1-1V4zm3 0a2 2 0 0 1-2 2v4a2 2 0 0 1 2 2h10a2 2 0 0 1 2-2V6a2 2 0 0 1-2-2H3z"></path>
                                </svg>Withdrawals Request</h5>
                            </div>
                            <hr />
                            <div class="table-responsive" style="background-color: white;">
                                <table class="table">
                                    <thead class="thead-white">
                                        <tr>
                                            <th scope="col">Request On</th>
                                            <th scope="col">Amount</th>
                                            <th scope="col">Payment Method</th>
                                            <th scope="col">Status</th>                                           
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
                        </div>                       
                        <%-- Table End --%>
                        <%-- Footer Design--%>
                        <div class="row footer">
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
                    </div>                  
                </div>           
            </div>           
        </div>
    </form>
</body>
</html>
