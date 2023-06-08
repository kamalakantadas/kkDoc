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
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
    <script src="../Scripts/membership.js"></script>
</head>

<body>    
    <form id="membershipForm" runat="server">
        <%-- Affiliate Header --%>
        <div class="headerBar">
            <%-- Header starts here --%>
            <div>
                <a class="navbar-brand" href="Index.aspx">
                    <img src="../Images/1149945428.png" id="websiteLogo" />
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
        <div class="row" id="membershipBody">
            <!-- Left Side Lists -->
            <div class="col-lg-3 scrollable" id="sidebar">
                <%-- My Account --%>
                <ul class="">
                    <li>My Account</li>
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
                                <a class="dropdown-item" href="../ai-images.aspx">All AI Images</a><a href="../all-Images.aspx">../all-Images.aspx</a>
                            </div>
                        </div>
                    </li>
                </ul>
                <%-- Organize and Manage --%>
                <ul>
                    <li>Organize and Manage</li>
                    <li>
                        <a href="../ai-templates/Ai-templates.aspx">
                            <i class="icon-feather-layers"></i>
                            <div>Templates</div>
                        </a>
                    </li>
                    <li>
                        <a href="../ai-images.aspx">
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
                <ul>
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
                        <a href="membership.aspx">
                            <i class="icon-feather-gift"></i>
                            <div>Membership</div>

                        </a>

                    </li>
                    <li>
                        <a href="../Transaction.aspx">
                            <i class="icon-feather-file-text"></i>
                            <div>Transactions</div>
                        </a>

                    </li>
                    <li>
                        <a href="../accountSetting.aspx">
                            <i class="icon-feather-log-out"></i>
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
                <div id="rightSideMembership">
                    <%-- Right content 1st row only content --%>
                    <div class="row">
                        <%-- Left Side of Right side --%>
                        <div class="col-md-6">
                            <h3>Current Plan</h3>
                        </div>

                        <%-- Right Side of Right side --%>
                        <div class="col-md-6">
                            <div id="SubPage">
                                <ul style="display: inline-flex;">
                                    <li><a href="../Index.aspx">Home</a></li>
                                    <li><a href="#">Current Plan</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <%-- second Row for right content--%>
                    <div id="membershipTable">
                        <div style="display: flex;border-bottom:1px solid grey;">
                            <div>
                                <img src="../Images/giftBoxIcon.png" style="height: 20px;" />
                            </div>
                            <div>
                                <p class="align-baseline" style="float: right">Current Plan</p>
                            </div>
                        </div>
                        <div class="table-responsive" style="margin-top:10px">
                            <table class="table">
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
                        <div class="row" style="margin-right: 30px; margin-bottom: 50px">
                            <div class="col-lg-6"></div>
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <asp:Button class="btn btn-primary" ID="changePlan" OnClick="changePlanMembership" Text="Change Plan" runat="server" Style="float: right;" />
                                </div>
                            </div>
                        </div>
                    </div>
                    
                </div>
                <hr />
                <%-- Footer Dashboard --%>
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
    </form>
</body>
</html>
