<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="all-documents.aspx.cs" Inherits="QuickAI.all_documents" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>All Documents</title>
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
    <form id="allDoc" runat="server">
        <div class="container-fluid">
            <%-- Header of All Documents --%>
            <%-- Header Contentt Writen by kamalakantadas27@gmail.com --%>
            <div id="allHeader">                
                <%-- Original Header --%>
                <nav class="row navbar navbar-expand-lg navbar-light fixed-top" id="headerBar" style="box-shadow: 2px 2px 5px grey; height: 90px; border-style: ridge; z-index: 999; background-color: white;">
                    <div class="col-lg-3 col-md-4 col-sm-4" style="width: 24.99%">
                        <a class="navbar-brand" href="Index.aspx" style="margin-bottom: 50px; overflow: hidden;">
                            <img src="Images/1149945428.png" style="position: fixed; max-width: 100%; margin-bottom: 30px; padding-left: 35px; padding-right: 35px; overflow: hidden;" />
                        </a>
                    </div>
                    <div class="col-lg-7 col-md-2" style="width: 58.31%; overflow: hidden;">
                        <a href="#" class="sandwich-link" data-toggle="collapse" <%--data-target=".leftSideBar"--%> id="btnToggle">
                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-list" viewBox="0 0 16 16">
                                <path fill-rule="evenodd" d="M2.5 12a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5zm0-4a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5zm0-4a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5z" />
                            </svg>
                        </a>
                    </div>
                    <div class="col-lg-1 col-md-3 col-sm-4" style="width: 8.33%;">
                        <%-- User Drop Down Button --%>
                        <div class="dropdown show">
                            <a class="btn btn-secondary dropdown-toggle" href="#" role="button" id="userDropDownList" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <asp:Image runat="server" ID="userImage" src="Images/Image%20ICON.png" Style="height: 30px" onmouseover="viewText()" onmouseout="hideText()" alt="" class="hover-text" />
                                <asp:TextBox ID="viewImage" Style="display: none; width: 100px;" runat="server" value=""></asp:TextBox>
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
                    <div class="col-lg-1 col-md-3 col-sm-4" style="width: 8.33%;">
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
                </nav>
            </div>
            <div id="allDocBody" style="margin-top:70px">
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
                               <%-- body start --%>
                               <div class="row" style="padding-bottom:25px;" >
                                   <%-- Left Side of Right side --%>
                                   <div class="col-md-8">
                                       <h3>All Documents</h3>
                                   </div>
                                  
                                   <%-- Right Side of Right side --%>
                                   <div class="col-md-4">
                                       <div id="SubPage">
                                           <ul style="display: inline-flex;">
                                               <li><a href="index.aspx">Home</a></li>
                                               <li><a href="all-documents.aspx">All Documents</a></li>
                                           </ul>
                                       </div>
                                   </div>
                               </div>
                               <div class="row" style="background-color:white;box-shadow: 2px 2px 5px grey;margin-right:5px;padding-bottom:50px;">
                                   <div class="row" style="padding-top:20px;padding-bottom:20px;padding-left:20px">
                                       <h5>All Documents</h5>
                                   </div>
                                   <hr />
                                   <%-- Table start --%>
                                   <table class="table">
                                       <thead class="thead-dark">
                                           <tr>
                                               <th scope="col">Document</th>
                                               <th scope="col">Content</th>
                                               <th scope="col">Date</th>
                                               <th scope="col">Action</th>
                                           </tr>
                                       </thead>
                                       <tbody>                                            
                                           <tr> <td>No documents</td></tr>
                                       </tbody>
                                   </table>

                                   <%-- Table end --%>
                               </div>
                               <%-- body end --%>
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
        </div>
    </form>
</body>
</html>
