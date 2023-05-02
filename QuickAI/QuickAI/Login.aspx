<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="QuickAI.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Page</title>
       <!-- Add the Bootstrap CSS file -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" />
    <!-- Add the Bootstrap JavaScript files -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <style type="text/css">
        #login {
            width: 58px;
        }
    </style>
</head>
<body>
    <!--Login Page Content-->
     <form runat="server">
      <div class="container-fluid">
        <%-- Header of Login --%>
         <nav class="row navbar navbar-expand-lg navbar-light fixed-top" style="box-shadow: 2px 2px 5px grey;z-index:999;background-color:white">                    
                    <div class="col-lg-2" style="width:8.33%">
                        <a class="navbar-brand" href="#">
                            <h1>QUICKAI</h1>
                        </a>
                    </div>
                    <div class="col-lg-7" style="width:58.31%">

                    </div>
                    <div class="col-lg-1" style="width:8.33%">
                        <asp:Button runat="server" type="button" class="btn btn-primary btn-lg btn-block header-widget" id="joinbutton" Text="JOIN"  />
                    </div>
                    <div class="col-lg-1" style="width:8.33%">
                        <div class="dropdown">
                                <asp:Button runat="server" class="btn btn-secondary btn-primary btn-lg dropdown-toggle" type="button" id="dropdownMenu2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"
                                    Text="Language"/>                            
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
                    <div class="col-lg-1" style="width:8.33%"></div>
                    <%-- <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                                <span class="navbar-toggler-icon"></span>
                         </button>
                         <div class="collapse navbar-collapse" id="navbarNav">
                             <ul class="navbar-nav">
                             </ul>
                         </div>--%>
                </nav>
         <div class="row" id="loginForm" style="margin-top:200px">
            <div class="col-lg-4">
            </div>
            <div class="col-lg-4">
                <div class="justify-content-center h-100">
                    <div class="card">
                        
                            <div class="card-header">
                            <h3>Sign In</h3>
                            <div class="d-flex justify-content-end">
                                <div class="p-3 m-0 border-0 bd-example">
                                    <!-- Example Code -->
                                    <i class="bi bi-x bi-3x"></i>
                                    <asp:Button runat="server" type="button" onclick="gotoHomePage" Text="Home" class="btn btn-primary"  id="closeButton" aria-label="Close"/>                                    
                                    <!-- End Example Code -->
                                </div>
                            </div>
                        </div>                            
                            <div class="card-body">
                            
                                <div class="input-group form-group">
                                    <div class="input-group-prepend">
                                        <%--<span class="input-group-text"><i class="fas fa-user"></i></span>--%>
                                    </div>
                                    <label>UserEmail</label>
                                    <asp:TextBox runat="server" class="form-control" id="uEmail" TextMode="Email"></asp:TextBox>
                                </div>
                                <div class="input-group form-group">
                                    <div class="input-group-prepend">
                                        <%--<span class="input-group-text"><i class="fas fa-key"></i></span>--%>
                                    </div>
                                    <label>Password</label>
                                    <asp:TextBox runat="server" class="form-control"  id="uPwd" TextMode="Password"></asp:TextBox>
                                </div>
                                <div class="row input-with-icon-left">
                                    <asp:HyperLink runat="server" id="forgotText" NavigateUrl="ForgotPassword.aspx" Text="forgot password"/>
                                   
                                </div>
                                <div class="form-group">
                                    <!--<input type="button" value="Login" id="login" class="btn float-right login_btn btn-primary">-->
                                </div>
                        </div>
                            <div class="card-footer">
                                <div class="row">
                                    <div class="col-sm-6"></div>
                                    <div class="col-sm-3">
                                        <asp:Button runat="server" class="btn btn-primary" OnClick="sgnBtn_Click" Text="signup" id="signupButton" />
                                    </div>
                                    <div class="col-sm-3">
                                    <div class="d-flex justify-content-center links">                                        
                                        <asp:Button runat="server" Text="Login" id="login" OnClick="lgnBtn_Click" class="btn float-right login_btn btn-primary" />
                                    </div>
                                </div>
                                </div>
                            </div>                   
                    </div>
                </div>
            </div>
            <div class="col-lg-4">   </div>
        </div>
        <%-- Footer of Login --%>
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
     </form>
   
</body>
</html>
