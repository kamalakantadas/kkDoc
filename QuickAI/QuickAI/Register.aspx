<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="QuickAI.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Register page</title>
       <!-- Add the Bootstrap CSS file -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" />
    <!-- Add the Bootstrap JavaScript files -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
</head>
<body>
    <!--Registration Page-->
    <form runat="server">        
        <div class="container-fluid">
        <%-- Header of Login --%>
        <nav class="row navbar navbar-expand-lg navbar-light fixed-top" style="box-shadow: 2px 2px 5px grey;z-index:999;background-color:white">
             <div class="col-lg-2" style="width: 8.33%">
                 <a class="navbar-brand" href="Index.aspx">
                     <h1>QUICKAI</h1>
                 </a>
             </div>
             <div class="col-lg-7" style="width: 58.31%">
             </div>
             <div class="col-lg-1" style="width: 8.33%">
                 <asp:Button runat="server" type="button" class="btn btn-primary btn-lg btn-block header-widget" ID="joinbutton" Text="JOIN" />
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
        <%-- Register Form --%>
        <div class="row" id="loginForm" style="margin-top:50px">
            <div class="col-lg-4">

            </div>
            <div class="col-lg-4">
                <div class="justify-content-center h-100">
                    <div class="card" style="margin-top:50px;margin-bottom:30px;">
                         <div class="card-header">
                             <h2 class="text-uppercase text-center mb-1">Create an account</h2>
                             <div class="d-flex justify-content-end">
                                 <div class="p-3 m-0 border-0 bd-example">
                                     <!-- Example Code -->
                                     <i class="bi bi-x bi-3x"></i>
                                     <asp:Button runat="server" type="button" OnClick="gohomeFromRegister" class="btn btn-primary" ID="closeButton" Text="GoHome" aria-label="Close" />
                                     <!-- End Example Code -->
                                 </div>
                             </div>
                         </div>
                        <div class="card-body">
                            <div class="input-group form-group">
                                <label>Your Name</label><br />
                                <asp:TextBox runat="server" class="form-control" ID="form3Example1cg" OnTextChanged="form3Example1cg_TextChanged" Style="width: 300px"></asp:TextBox>
                            </div>
                            <div class="input-group form-group">
                                <label>Your Email</label><br />
                                <asp:TextBox runat="server" class="form-control" ID="form3Example3cg" TextMode="Email" Style="width: 300px"></asp:TextBox>
                                <%--  OnTextChanged="verifyEmail" --%>
                                <asp:RequiredFieldValidator
                                    ControlToValidate="form3Example3cg"
                                    ErrorMessage="Email is Empty"
                                    Display="Dynamic"
                                    CssClass="error"
                                    ValidationGroup="Form"
                                    ID="RequiredFieldValidator1" runat="server"></asp:RequiredFieldValidator>
                            </div>
                            <div class="input-group form-group">
                                <label>Password</label><br />
                                <asp:TextBox runat="server" class="form-control" ID="form3Example4cg" TextMode="Password" Style="width: 300px"></asp:TextBox>
                            </div>
                            <div class="input-group form-group">
                                <label>Repeat Password</label><br />
                                <asp:TextBox runat="server" class="form-control" ID="form3Example4cdg" TextMode="Password" Style="width: 300px"></asp:TextBox>
                            </div>
                        </div>
                        <div class="card-footer">
                            <div class="row">
                                <div class="col-sm-6"></div>
                                <div class="col-sm-6">
                                    <div class="d-flex justify-content-center links">
                                        <asp:Button runat="server" class="btn btn-primary" Text="Register" OnClick="regBtn_Click" ID="register" />
                                    </div>
                                </div>
                            </div>
                            <!-- <div class="d-flex justify-content-center">"""onclick="regBtn_Click"""
                                <input type="button" class="button btn-primary" value="Forgot Password" id="forgotbutton" />
                            </div>-->
                        </div>                                            
                    </div>
                </div>
            </div>
            <div class="col-lg-4">   </div>
        </div>
        <%-- Footer of Login --%>
        <div class="row-fluid" style="border-top: 1px solid #ccc;">
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
    </form> 
</body>
</html>
