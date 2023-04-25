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
    <div class="container-fluid">
        <div class="row" id="loginForm" style="margin-top:50px">
            <div class="col-lg-4">
            </div>
            <div class="col-lg-4">
                <div class="justify-content-center h-100">
                    <div class="card">
                        <form runat="server">
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
                        </form>                        
                    </div>
                </div>
            </div>
            <div class="col-lg-4">   </div>
        </div>
    </div>   
</body>
</html>
