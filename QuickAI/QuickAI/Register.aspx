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
</head>
<body>
    <!--Registration Page-->
    <div class="container-fluid">
        <div class="row" id="loginForm" style="margin-top:50px">
            <div class="col-lg-4">

            </div>
            <div class="col-lg-4">
                <div class="justify-content-center h-100">
                    <div class="card">
                        <form runat="server">
                            <div class="card-header">
                                <h2 class="text-uppercase text-center mb-5">Create an account</h2>
                                <div class="d-flex justify-content-end">
                                <div class="p-3 m-0 border-0 bd-example">
                                    <!-- Example Code -->
                                    <i class="bi bi-x bi-3x"></i>
                                    <button type="button" class="btn btn-primary"  id="closeButton" aria-label="Close">X</button>
                                    <!-- End Example Code -->
                                </div>
                            </div>
                            </div>                            
                            <div class="card-body">                            
                                <div class="input-group form-group">                                   
                                    <label>Your Name</label><br />
                                    <asp:TextBox runat="server" class="form-control" id="form3Example1cg"></asp:TextBox>
                                </div>
                                <div class="input-group form-group">                                    
                                    <label>Your Email</label><br />
                                    <asp:TextBox runat="server" class="form-control"  id="form3Example3cg" TextMode="Email"></asp:TextBox>
                                </div>
                                <div class="input-group form-group">                                    
                                    <label>Password</label><br />
                                    <asp:TextBox runat="server" class="form-control"  id="form3Example4cg" TextMode="Password"></asp:TextBox>
                                </div>
                                <div class="input-group form-group">                                    
                                    <label>Repeat Password</label><br />
                                    <asp:TextBox runat="server" class="form-control"  id="form3Example4cdg" TextMode="Password"></asp:TextBox>
                                </div>
                            </div>
                            <div class="card-footer">
                                <div class="row">
                                    <div class="col-sm-6"></div>
                                    <div class="col-sm-6">
                                    <div class="d-flex justify-content-center links">
                                        
                                        <asp:Button runat="server" class="btn btn-primary" onclick="regBtn_Click" Text="Register" id="register" />                                        
                                    </div>
                                </div>
                                </div>
                            <!-- <div class="d-flex justify-content-center">
                                <input type="button" class="button btn-primary" value="Forgot Password" id="forgotbutton" />
                            </div>-->
                            </div>
                        </form>                        
                    </div>
                </div>
            </div>
            <div class="col-lg-4">   </div>
        </div>
        /////
        ////
        ////       
    </div>    
</body>
</html>
