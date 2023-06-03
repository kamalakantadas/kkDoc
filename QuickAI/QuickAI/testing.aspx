<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="testing.aspx.cs" Inherits="QuickAI.testing" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <meta name="viewport" content="width=device-width, initial-scale=1.0 shrink-to-fit=no" />
    <link href="../IndexPage.css" rel="stylesheet" />
    <script src="https://cdn.tiny.cloud/1/no-api-key/tinymce/6/tinymce.min.js" referrerpolicy="origin"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" />
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/css/bootstrap.min.css" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/js/bootstrap.bundle.min.js"></script>
    <script src="https://kit.fontawesome.com/ae3393d1fa.js" crossorigin="anonymous"></script>   
    <script src="Scripts/speechToText.js"></script>
    <link href="css/speech-to-text.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
              <%-- Headear Bar --%>
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
                       <%-- <asp:LinkButton class="dropdown-item" OnClick="logout" runat="server">Logout</asp:LinkButton>--%>
                    </div>
                </div>
            </div>
            <div>
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
        <div id="speechBody">
            <div class="row">
                <!-- Left Side Lists -->
                <div class="col-lg-3 scrollable" id="sidebar" style="background-color: #f2f2f2;">
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
                            <li><a href="accountSetting.aspx"><i class="icon-feather-log-out"></i>
                                <div>Account Setting</div>
                            </a>
                            </li>
                            <li>
                                <%--<a href="#">
                                       <i class="icon-material-outline-power-settings-new"></i>
                                       <div>Logout</div>
                                   </a>--%>
                               <%-- <asp:LinkButton class="dropdown-item" OnClick="logout" runat="server">Logout</asp:LinkButton>--%>

                            </li>
                        </ul>
                    </div>
                <%-- Right Side Lists --%>
                <div class="col-lg-9 col-md-12 scrollable pt-3"  style="background: #f2f2f2;">
                    
                         <div id="rightSide">
                               <%-- Right content 1st row only content --%>
                               <div class="row mb-3">
                                    <%-- Left Side of Right side --%>
                                    <div class="col-md-8">
                                        <div class="form-group" style="display:flex">
                                            <h3>Speech To Text</h3>
                                            <input type="button" class="btn btn-secondary form-control" style="border-radius:20px;height:40px;width:180px";id="disableData" value="0/100 Images Used" "disabled" /> 
                                        </div>                                        
                                    </div>                                   
                                    <%-- Right Side of Right side --%>
                                    <div class="col-md-4">
                                        <div id="SubPage">
                                            <ul style="display: inline-flex;">
                                                <li><a href="index.aspx">Home</a></li>
                                                <li><a href="speechToText.aspx">Speech to Text</a></li>                                            
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                               <%-- Right content Second Row Div --%>

                             <div class="row">
                                 <%-- speech To text Form Left Side start--%>
                                 <div class="col-lg-4 col-md-4 col-sm-12">
                                     <div class="speech-left-cont">
                                         <div class="speech-left-1st">
                                             <div class="speech-icon-cont">
                                                 <span>
                                                     <svg xmlns="http://www.w3.org/2000/svg" height="1em" viewBox="0 0 512 512">
                                                         <!--! Font Awesome Free 6.4.0 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license (Commercial License) Copyright 2023 Fonticons, Inc. -->
                                                         <path d="M256 80C149.9 80 62.4 159.4 49.6 262c9.4-3.8 19.6-6 30.4-6c26.5 0 48 21.5 48 48V432c0 26.5-21.5 48-48 48c-44.2 0-80-35.8-80-80V384 336 288C0 146.6 114.6 32 256 32s256 114.6 256 256v48 48 16c0 44.2-35.8 80-80 80c-26.5 0-48-21.5-48-48V304c0-26.5 21.5-48 48-48c10.8 0 21 2.1 30.4 6C449.6 159.4 362.1 80 256 80z" />
                                                     </svg></span>
                                                 <span>Speech to TextSpeech to Text</span>
                                             </div>
                                             <div class="speech-left-2nd">
                                                 <div class="speech-para">
                                                     <p>Create audio transcription from a file.</p>
                                                 </div>
                                             </div>
                                         </div>
                                     </div>
                                 </div>
                                 <div class="col-lg-8 col-mg-8 col-sm-12">
                                     <div class="speech-right-cont">
                                         <div class="speench-right-inner-cont">
                                             <div class="title-with-btn">
                                                 <div class="head-icon">
                                                     <span><i class="fa-solid fa-bars"></i></span>
                                                     <span>Generated Result</span>
                                                 </div>
                                                 <div class="three-btn">
                                                     <span>
                                                         <button></button>
                                                     </span>
                                                     <span>
                                                         <button></button>
                                                     </span>
                                                     <span>
                                                         <button></button>
                                                     </span>
                                                 </div>
                                             </div>
                                         </div>
                                     </div>
                                 </div>
                             </div>
                             
                               <%-- Footer Dashboard --%>
                               <%-- Footer Design By row navbar navbar-expand-lg navbar-dark bg-dark--%>
                               <div class="row" style="border-top: 1px solid #ccc;z-index:999">
                                   <footerclass="footer clearfix" style="position: sticky; bottom: 0;text-align:center;width: 100%;height: 80px;background:#f2f2f2;">
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
    </form>
</body>
</html>
