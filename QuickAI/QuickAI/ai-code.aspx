<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ai-code.aspx.cs" Inherits="QuickAI.ai_code" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Ai-code</title>
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
    <script src="Scripts/ai-code.js"></script>
</head>
<body>
    <form id="aiCodeBody" runat="server">
       <div id="speechToTextForm">
           <div id="aiHeader">
               <%-- Testimonial Header --%>
               <nav class="row navbar navbar-expand-lg navbar-light fixed-top" id="headerBar" style="box-shadow: 2px 2px 5px grey; height: 80px; z-index: 999; background-color: white;">
                   <div class="col-lg-3 col-md-4 col-sm-4" style="width: 24.99%">
                       <a class="navbar-brand" href="../Index.aspx" style="margin-bottom: 50px; overflow: hidden;">
                           <img src="../Images/1149945428.png" style="position: fixed; max-width: 100%; margin-bottom: 30px; padding-left: 35px; padding-right: 35px; overflow: hidden;" />
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
                           <div class="dropdown-menu" aria-labelledby="userDropDownList" runat="server">
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
           <div id="aibody">
               <div class="container-fluid">
                   <div class="row" style="margin-top: 60px">
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
                                   <asp:LinkButton class="dropdown-item" OnClick="logout" runat="server">Logout</asp:LinkButton>

                               </li>
                           </ul>
                       </div>
                       <%-- Right Side Lists --%>                      
                       <div class="col-lg-9 col-md-12 scrollable" id="content" style="width: 75%; background: #f2f2f2; z-index: 99; padding-left: 10px; padding-top: 50px;">
                           <div id="rightSide">
                               <%-- Ai Code Right Side --%>
                               <div class="row mb-3">
                                    <%-- Left Side of Right side --%>
                                    <div class="col-md-8">
                                        <div class="form-group" style="display:flex">
                                            <h3>AI Code</h3>
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
                               <div class="row pt-10">
                                   <%-- speech To text Form Left Side start--%>
                                   <div class="col-lg-4 col-md-4 col-sm-12">
                                       <div class="row ml-1 mb-2" style="background-color: white;box-shadow: 0px 1px 7px 1px;">
                                           <div class="row" style="padding: 10px;margin: 10px;border-bottom: 1px solid gray;width: 100%;">
                                               <a><i class="fas fa-headset"></i></a>
                                               <h5 class="fs-4 fw-bolder">Ai Code</h5>
                                           </div>
                                           <div class="row" style="margin:10px; background-color: cornflowerblue; padding: 10px; ">
                                               <p>Use this code generator to create code in any programming language.</p>
                                           </div>
                                           <div class="row" style="margin-left: 60px; margin-top: 10px;width:100%">
                                               Title:<p style="margin-left:50px;" id="titleCount">0</p><p>/100</p>
                                           </div>
                                           <div class="row form-group ml-2" style="width:95%">
                                               <input class="form-control" type="text" runat="server" id="title" style="margin-left:10px;" placeholder="New Code" />                                           </div>
                                           <div class="row form-group" style="margin-left: 20px">
                                                Description:<p style="color:red">*</p>                                            
                                               <p class="fs-4 fw-bolder"></p>
                                               <asp:TextBox class="form-control" ID="aDesc" placeholder="Write a javascript function to generate a random string" runat="server" Rows="4" TextMode="MultiLine" ></asp:TextBox>                                                                                          
                                           </div>
                                           <div class="row form-group">
                                               <input type="button" class="form-control btn btn-primary" value="Generate ->" style="width:280px;margin-left:35px"/>
                                           </div>                                       
                                       </div>
                                   </div>
                                   <%-- speech To text Form Left Side end --%>
                                   <%-- Generated Result Right Side start--%>
                                   <div class="col-lg-8 col-md-8 col-sm-12">
                                       <div class="row pl-3 pr-3 ml-1">
                                           <%-- Header of generated Result start --%>
                                           <div class="row" style="width: 100%; padding-top: 25px; padding-bottom: 25px; height: 80px; background-color: white; border-bottom: 1px solid grey;">
                                               <div class="col-lg-1 col-md-2 col-sm-1">
                                                   <i class="fa fa-align-left" aria-hidden="true"></i>
                                               </div>
                                               <div class="col-lg-5 col-md-6 col-sm-7">
                                                   <p>Generated Result</p>
                                               </div>
                                               <div class="col-lg-3"></div>
                                               <div class="col-lg-3 col-md-4 col-sm-4">
                                               </div>
                                           </div>
                                           <div class="row" style="min-height: 100px; background: white; width: 100%">
                                               <div class="row-fluid" style="padding: 10px; background: cornflowerblue; margin: 20px; width: 100%">
                                                   <p>Generated code will appear here.</p>
                                               </div>
                                           </div>
                                       </div>
                                       <%-- Header of generated Result end--%>
                                   </div>
                               </div>
                               <%-- Ai Code Right Side end--%>                  
                               <%-- Footer Dashboard --%>
                               <%-- Footer Design By Kamalakantadas row navbar navbar-expand-lg navbar-dark bg-dark--%>
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
           </div>
       </div>
    </form>
</body>
</html>
