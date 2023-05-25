<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="accountSetting.aspx.cs" Inherits="QuickAI.accountSetting" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Account Setting</title>
    <link href="IndexPage.css" rel="stylesheet" />   
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" />   
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>    
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
    <script src="Scripts/AccountSetting.js"></script>
</head>
<body>
    <form id="accountSetting" runat="server">
        <%-- Header Contentt Writen by kamalakantadas27@gmail.com --%>
        <div id="dHeader">
            <nav class="row navbar navbar-expand-lg navbar-light fixed-top" style="box-shadow: 2px 2px 5px grey; height: 90px; border-style: ridge; z-index: 999; background-color: white">
                <div class="col-lg-3" style="width: 24.99%">
                    <a class="navbar-brand" href="Index.aspx" style="margin-bottom: 50px; overflow: hidden;">
                        <img src="Images/1149945428.png" style="position: fixed; max-width: 100%; margin-bottom: 30px; padding-left: 35px; padding-right: 35px; overflow: hidden;" />
                    </a>
                </div>
                <div class="col-lg-7" style="width: 58.31%; overflow: hidden;">
                    <a href="#" class="sandwich-link" data-toggle="collapse" <%--data-target=".leftSideBar"--%> id="btnToggle">
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-list" viewBox="0 0 16 16">
                            <path fill-rule="evenodd" d="M2.5 12a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5zm0-4a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5zm0-4a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5z" />
                        </svg>
                    </a>
                </div>
                <div class="col-lg-1" style="width: 8.33%;">
                    <%-- User Drop Down Button --%>
                    <div class="dropdown show">
                        <a class="btn btn-secondary dropdown-toggle" href="#" role="button" id="userDropDownList" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <asp:Image runat="server" ID="userImage" src="Images/Image%20ICON.png" Style="height: 30px" onmouseover="viewText()" onmouseout="hideText()" alt="" class="hover-text" />
                            <asp:TextBox ID="viewImage" Style="display: none; width: 100px;" runat="server" value=""></asp:TextBox>
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
                <div class="col-lg-1" style="width: 8.33%;">
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
        <%-- Body designed by Kamalakantadas --%>
        <div id="AccountPage" >
            <div class="container-fluid">
                <div class="row" style="display:inline-flex;margin-top:95px;width:100%">                   
                   <!-- Left Side Lists -->
                    <div class="col-lg-3 scrollable" id="sidebar" style="width: 25%; background-color: #f2f2f2;">
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
                                <asp:LinkButton class="dropdown-item" OnClick="logout" runat="server">Logout</asp:LinkButton></li>
                        </ul>
                    </div>

                   <%-- Right Side --%>
                   <div class="col-lg-9 scrollable" id="content" style="width:75%;background:#f2f2f2;z-index:99;padding-left:50px;padding-top:50px;">
                       <%-- Right content 1st row only content --%>
                       <div class="row">
                           <%-- Left Side of Right side --%>
                           <div class="col-md-7">
                               <h3>Account Setting</h3>
                           </div>                          
                           <%-- Right Side of Right side --%>
                           <div class="col-md-5">
                               <div id="SubPage">
                                   <ul style="display: inline-flex;">
                                       <li><a href="index.aspx">Home</a></li>
                                       <li><a href="#">Account Setting</a></li>
                                   </ul>
                               </div>
                           </div>
                       </div>
                       <%-- Second Row --%>
                       <div class="row" style=" width: 100%; background-color: white;">                         
                           <%-- Account Setting--%>
                           <div id="SettingBody" style="width: 100%; background-color: white;  ">
                               <div class="" style="box-shadow: 1px 1px 2px grey;">
                                   <h6 class="text-muted" style="padding-left: 15px; padding-top: 14px; padding-bottom: 14px">Account Setting</h6>
                               </div>                               
                           </div>                           
                       </div>
                       <%--Account Details Contents available --%>
                       <div id="accountInfo">
                           <div class="row" style="width: 100%; background-color: white;">
                               <div class="col-lg-6" style=" padding-top:20px;padding-bottom:20px">
                                   <h6>Avatar</h6>
                                   <div class="row">
                                       <div class="col-sm-5">                                           
                                           <div class="form-group">
                                               <label class="custom-file-label" for="imageInput" style="margin-left:15px; ">Upload</label>
                                               <asp:FileUpload runat="server" class="form-control-file" id="imageInput" style="width: 100px;" />                                               
                                           </div>
                                       </div>
                                       <div class="col-sm-7">
                                           <h6>Use 150*150px for better use</h6>
                                       </div>
                                   </div>
                               </div>
                               <div class="col-lg-6"></div>
                           </div>
                           <div class="row" style="width: 100%; background-color: white; margin-right: 45px; padding-top: 50px">
                               <div class="col-lg-6">
                                   <h4>UserName *</h4>
                                   <div class="input-group mb-3">
                                       <div class="input-group-prepend">
                                           <span class="input-group-text" id="userId">
                                               <img src="Images/userIcon.jpg" style="height: 15px" />
                                           </span>
                                       </div>
                                       <asp:TextBox runat="server" id="userName" class="form-control" placeholder="UserName" aria-label="Username" aria-describedby="basic-addon1" ></asp:TextBox>
                                   </div>
                               </div>
                               <div class="col-lg-6">
                                   <h4>Email Address *</h4>
                                   <div class="input-group mb-3">
                                       <div class="input-group-prepend">
                                           <span class="input-group-text" id="">
                                               <img src="Images/Email.png" style="height: 15px" /></span>
                                       </div>
                                       <asp:TextBox runat="server" id="userEmail" class="form-control" placeholder="userEmail" aria-label="userEmail" aria-describedby="basic-addon1" ></asp:TextBox>
                                   </div>
                               </div>
                           </div>
                           <div class="row" style="width: 100%; background-color: white; margin-right: 45px;">
                               <div class="col-lg-6">
                                   <h4>New Password</h4>
                                   <div class="form-group">
                                      <asp:TextBox runat="server" class="form-control" id="userPwd" ></asp:TextBox>
                                   </div>
                               </div>
                               <div class="col-lg-6">
                                   <h4>Confirm Password</h4>
                                   <div class="form-group">
                                       <asp:TextBox runat="server" class="form-control" id="userRePwd" ></asp:TextBox>
                                   </div>
                               </div>
                           </div>
                           <div class="row" style="width: 100%; background-color: white;  margin-right: 45px;padding-bottom:30px;margin-bottom:30px">
                               <div class="col-lg-6">
                                   <asp:Button runat="server" id="saveUserBtn" Text="Save Changes" onclick="updatePwd" class="btn btn-primary form-control" ></asp:Button>
                               </div>
                               <div class="col-lg-6"></div>
                           </div>
                       </div>

                       <%-- Billing Header --%>
                       <div id="billInfo">
                           <div class="row" style="width: 100%; box-shadow: 1px 1px 2px grey; height: 50px; padding-left: 20px; padding-top: 15px; padding-bottom: 15px; background-color: white;">
                               <h6 class="text-muted" style="padding-left: 15px; padding-top: 14px; padding-bottom: 14px">Billing Details</h6>
                           </div>

                           <div class="row" style="width: 100%; background-color: white;">
                               <div class="col-md-12">
                                   <div style="width: 100%; height: 50px; width: 400px"></div>
                               </div>
                           </div>
                           <div class="row" style="width: 100%; background-color: white;">
                               <div class="col-md-12">
                                   <label for="exampleInputEmail1">Type</label>
                                   <div class="dropdown">
                                       <%-- <a class="btn btn-secondary dropdown-toggle" href="#" role="button" id="typeOfPerson" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                   </a>--%>
                                       <asp:DropDownList ID="typeSel" runat="server" aria-labelledby="dropdownMenuLink" Style="width: 100%; height: 38px;">
                                           <asp:ListItem href="#" Value="personal">Personal</asp:ListItem>
                                           <asp:ListItem href="#" Value="business">Business</asp:ListItem>
                                       </asp:DropDownList>
                                   </div>
                               </div>
                           </div>
                           <div class="row" id="td" style="width: 100%; background-color: white; display: none">
                               <div class="col-md-12">
                                   <div class="form-group">
                                       <label for="taxId">Tax ID</label>
                                       <asp:TextBox runat="server" class="form-control" ID="taxIdBox" aria-describedby="taxIdBoxx"></asp:TextBox>
                                   </div>
                               </div>
                           </div>

                           <div class="row" style="width: 100%; background-color: white;">
                               <div class="col-md-12">
                                   <div class="form-group">
                                       <label for="exampleInputEmail1">Name *</label>
                                       <asp:TextBox runat="server" class="form-control" ID="billingUserName" aria-describedby="emailHelp"></asp:TextBox>
                                   </div>
                               </div>
                           </div>
                           <div class="row" style="width: 100%; background-color: white;">
                               <div class="col-md-12">
                                   <div class="form-group">
                                       <label for="exampleInputEmail1">Address *</label>
                                       <asp:TextBox runat="server" class="form-control" ID="billingUserAdd" aria-describedby="emailHelp"></asp:TextBox>
                                   </div>
                               </div>
                           </div>
                           <div class="row" style="width: 100%; background-color: white;">
                               <div class="col-md-4">
                                   <div class="form-group">
                                       <label for="billingUserCity">City *</label>
                                       <asp:TextBox runat="server" class="form-control" ID="billingUserCity"></asp:TextBox>
                                   </div>
                               </div>
                               <div class="col-md-4">
                                   <div class="form-group">
                                       <label for="billingUserState">State *</label>
                                       <asp:TextBox runat="server" class="form-control" ID="billingUserState"></asp:TextBox>
                                   </div>
                               </div>
                               <div class="col-md-4">
                                   <div class="form-group">
                                       <label for="billingUserZip">Zip *</label>
                                       <asp:TextBox runat="server" class="form-control" ID="billingUserZip"></asp:TextBox>
                                   </div>
                               </div>
                           </div>
                           <div class="row" style="width: 100%; background-color: white;">
                               <div class="col-md-12">
                                   <label for="country">Country *</label>
                                   <div class="form-group">
                                       <asp:DropDownList runat="server" class="form-select" ID="country" name="country" Style="height: 32px; width: 100%;">
                                           <asp:ListItem Value="">country</asp:ListItem>
                                           <asp:ListItem Value="AF">Afghanistan</asp:ListItem>
                                           <asp:ListItem Value="IN">INDIA</asp:ListItem>
                                           <asp:ListItem Value="US">USA</asp:ListItem>
                                           <asp:ListItem Value="EN">Engaland</asp:ListItem>
                                       </asp:DropDownList>
                                   </div>
                               </div>
                           </div>
                           <div class="row" style="width: 100%; padding-top: 30px; background-color: white; padding-bottom: 30px; margin-bottom: 30px">
                               <div class="col-md-6">
                                   <asp:Button runat="server" OnClick="billingDetails" ID="userBillingDetails" Text="Save Changes" class="btn btn-primary form-control"></asp:Button>
                               </div>
                               <div class="col-md-6"></div>
                           </div>
                       </div>
                       <%-- Footer Dashboard --%>
                       <%-- Footer Design By Kamalakantadas row navbar navbar-expand-lg navbar-dark bg-dark--%>
                       <div class="row-fluid" style="padding-bottom:100px;border-top: 1px solid #ccc;">
                           <footerclass="footer" style="position: sticky; bottom: 0;margin-bottom:0px;text-align:center;width: 100%;height: 80px;background:#f2f2f2;">
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
        <%-- Bottom Fixed Bar Design by Kamalakantadas --%>
        <div class="row-fluid fixed-bottom" style="position:fixed;bottom:0;padding:10px;background-color:white;z-index: 999;width:100%;height:70px;box-shadow: 2px 2px 5px grey;">
        </div>
    </form>
</body>
</html>
