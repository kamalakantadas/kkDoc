<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="affiliate-program.aspx.cs" Inherits="QuickAI.affiliate_program" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>affiliate Program</title>
    <link href="IndexPage.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />      
    <script src="Scripts/af-Program.js"></script>  
</head>
<body>
    <form id="affiliatePage" runat="server">
        <%-- Affiliate Header --%>
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

        <%-- Affiliate Body --%>
        <div id="aBody">
            <div class="row">
                <!-- Left Side Lists -->
                <div class="col-lg-3 scrollable" id="sidebar">
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
                        <li>
                            <a href="accountSetting.aspx">
                                <i class="icon-feather-log-out"></i>
                                <div>Account Setting</div>
                            </a>

                        </li>
                        <li>
                            <%-- <a href="#">
                                        <i class="icon-material-outline-power-settings-new"></i>
                                        <div>Logout</div>
                                    </a>--%>
                            <asp:LinkButton class="dropdown-item" OnClick="logout" runat="server">Logout</asp:LinkButton>
                        </li>
                    </ul>
                </div>
                <%-- Right Side --%>
                <div class="col-lg-9 scrollable" id="content">
                    <div id="rightSideOfAffiliatePage">
                        <%-- Right content 1st row only content --%>
                        <div class="row">
                            <%-- Left Side of Right side --%>
                            <div class="col-md-8">
                                <h3>Affiliate Program</h3>
                            </div>
                            <%-- Right Side of Right side --%>
                            <div class="col-md-4">
                                <div id="SubPage">
                                    <ul style="display: inline-flex;">
                                        <li><a href="index.aspx">Home</a></li>
                                        <li><a href="affiliate-program">Affiliate-Program</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <%-- 3 boxes Right content 2nd row --%>
                        <div class="row">
                            <%-- Wallet Used --%>
                            <div class="col-lg-4 col-md-12">
                                <div id="wordsUsed">
                                    <div class="col-md-6">
                                        <h5>Wallet</h5>
                                        <h5>0.0</h5>                                       
                                    </div>
                                    <div class="col-md-6" style="background-color: rgba(184, 27, 127, 0.07);">
                                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512">
                                            <!--! Font Awesome Pro 6.4.0 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license (Commercial License) Copyright 2023 Fonticons, Inc. -->
                                            <path d="M407.6 64h-367C18.5 64 0 82.5 0 104.6v135.2C0 364.5 99.7 464 224.2 464c124 0 223.8-99.5 223.8-224.2V104.6c0-22.4-17.7-40.6-40.4-40.6zm-162 268.5c-12.4 11.8-31.4 11.1-42.4 0C89.5 223.6 88.3 227.4 88.3 209.3c0-16.9 13.8-30.7 30.7-30.7 17 0 16.1 3.8 105.2 89.3 90.6-86.9 88.6-89.3 105.5-89.3 16.9 0 30.7 13.8 30.7 30.7 0 17.8-2.9 15.7-114.8 123.2z" />
                                        </svg>
                                    </div>
                                </div>
                            </div>
                            <%-- Total Referred --%>
                            <div class="col-lg-4 col-md-12">
                                <div id="imagesUsed">
                                    <div class="col-md-6">
                                        <h5>Total Referred</h5>
                                        <h5>0</h5>                                        
                                    </div>
                                    <div class="col-md-6" style="color: rgb(54, 189, 120);">
                                        <i class="fa fa-user-plus" aria-hidden="true" style="margin-top: 40px; font-size: 50px; margin-left: 30px;"></i>
                                    </div>
                                </div>                               
                            </div>
                            <%-- Total Earning--%>
                            <div class="col-lg-4 col-md-12">
                                <div id="speechText">
                                    <div class="col-md-6">
                                        <h5>Total Earning</h5>                                        
                                    </div>
                                    <div class="col-md-6" style="color: rgb(239, 168, 15);">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="70" height="80" fill="currentColor" class="bi bi-cash mt-4" viewBox="0 0 16 16">
                                            <path d="M8 10a2 2 0 1 0 0-4 2 2 0 0 0 0 4z" />
                                            <path d="M0 4a1 1 0 0 1 1-1h14a1 1 0 0 1 1 1v8a1 1 0 0 1-1 1H1a1 1 0 0 1-1-1V4zm3 0a2 2 0 0 1-2 2v4a2 2 0 0 1 2 2h10a2 2 0 0 1 2-2V6a2 2 0 0 1-2-2H3z" />
                                        </svg>
                                    </div>
                                </div>                               
                            </div>
                        </div>

                        <%-- start earning with affiliate program div start --%>
                        <div id="mDiv">
                            <div style="display:flex;padding-top:30px">
                                <div>
                                    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" style="height: 20px; margin-right: 10px">
                                        <!--! Font Awesome Pro 6.4.0 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license (Commercial License) Copyright 2023 Fonticons, Inc. -->
                                        <path d="M64 32C28.7 32 0 60.7 0 96V416c0 35.3 28.7 64 64 64H384c35.3 0 64-28.7 64-64V96c0-35.3-28.7-64-64-64H64zM384 160c0 35.3-28.7 64-64 64c-15.4 0-29.5-5.4-40.6-14.5L194.1 256l85.3 46.5c11-9.1 25.2-14.5 40.6-14.5c35.3 0 64 28.7 64 64s-28.7 64-64 64s-64-28.7-64-64c0-2.5 .1-4.9 .4-7.3L174.5 300c-11.7 12.3-28.2 20-46.5 20c-35.3 0-64-28.7-64-64s28.7-64 64-64c18.3 0 34.8 7.7 46.5 20l81.9-44.7c-.3-2.4-.4-4.9-.4-7.3c0-35.3 28.7-64 64-64s64 28.7 64 64z" />
                                    </svg>
                                </div>
                                <div>
                                    <p>Start Earning with affiliate program</p>
                                </div>
                            </div>
                            <hr />
                            <%-- TextContext --%>
                            <div style="background-color: cornflowerblue;">
                                <p>Invite new customers to our site using your affiliate link and when they purchase any membership plan, you will get commission</p>
                            </div>

                            <%-- Commission Rate & Affiliate Rule--%>
                            <div class="row" style="margin-top:30px">
                                <div class="col-lg-6">
                                    <div>
                                        <p class="text-muted">Current <span class="fs-bold">Commission Rate</span></p>
                                    </div>
                                    <div>
                                        <h4>30%</h4>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div>
                                        <p class="text-muted">Affiliate<span class="glyphicon-bold">Rule</span> </p>
                                    </div>
                                    <div>
                                        <h4>First Subscription<i class="fa-sharp fa-regular fa-circle-question"></i></h4>
                                    </div>
                                </div>
                            </div>
                            <%-- Affilite URL --%>
                            <div class="row" style="margin-top:30px">
                                <div class="col-lg-12">
                                    <p>Affiliate URL</p>
                                </div>
                                <div class="col-lg-6">
                                    <span>
                                        <input type="text" id="copyTxt" class="in1" value="Index.aspx" style="padding:5px;" readonly="" />
                                    </span>
                                    <span style="background:skyblue">
                                        <a id="copyBtn" class="form-control1">
                                        <i class="fa fa-copy" style="color: cornflowerblue; pointer-events: none;font-size:25px"></i>
                                        </a>
                                    </span>
                                </div>


                            </div>
                        </div>
                        <%-- start earning with affiliate program div end --%>

                        <%-- Table Start --%>
                        <div id="commission">
                            <div style="display:flex;padding:15px;border-bottom:1px solid grey">
                                <div>
                                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-cash" viewBox="0 0 16 16">
                                        <path d="M8 10a2 2 0 1 0 0-4 2 2 0 0 0 0 4z" />
                                        <path d="M0 4a1 1 0 0 1 1-1h14a1 1 0 0 1 1 1v8a1 1 0 0 1-1 1H1a1 1 0 0 1-1-1V4zm3 0a2 2 0 0 1-2 2v4a2 2 0 0 1 2 2h10a2 2 0 0 1 2-2V6a2 2 0 0 1-2-2H3z" />
                                    </svg>
                                </div>
                                <div> 
                                    <h5>Commission</h5>
                                </div>                               
                            </div>

                            <div class="table-responsive" style="margin-top:10px;">
                                <table class="table">
                                    <thead class="thead-light">
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
                                </div>
                            <%-- Table end --%>
                        </div>                       
                        <%-- Table End --%>
                       
                    </div>
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
        </div>       
    </form>
</body>
</html>
