<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpdatePassword.aspx.cs" Inherits="QuickAI.UpdatePassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Forgot Password Page</title>
       <!-- Add the Bootstrap CSS file -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" />
    <!-- Add the Bootstrap JavaScript files -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
</head>
<body>
     <div class="container" style="margin-top:100px">
            <div class="d-flex justify-content-center">
                <!-- h-100-->
                <div class="card">
                    <div id="UpdatePassword">
                        <nav class="nav navbar">
                            <div class="card-body">
                                <form id="form1" class="form-group" runat="server">
                                    <div class="panel panel-default">
                                        <div class="panel-body">
                                            <div class="row">
                                                <div class="col-md-6">
                                                </div>
                                                <div class="col-md-6">                                                                                         
                                                </div>
                                            </div>
                                            <h3><i class="fa fa-lock fa-4x"></i></h3>
                                            <h2 class="text-center">Update Password?</h2>                                           
                                            <div class="panel-body">
                                                <div class="form-group">
                                                    <div class="input-group">
                                                        <span class="input-group-addon"><i class="glyphicon glyphicon-envelope color-blue"></i></span>
                                                        <asp:TextBox runat="server" id="Pwd" placeholder="password" class="form-control"></asp:TextBox>
                                                    </div>
                                                     <div class="input-group">
                                                        <span class="input-group-addon"><i class="glyphicon glyphicon-envelope color-blue"></i></span>
                                                        <asp:TextBox runat="server" id="cnfPwd" placeholder="confirmPassword" class="form-control" ></asp:TextBox>
                                                    </div>
                                                </div>
                                                <div class="form-group">                                                   
                                                    <asp:Button runat="server" onclick="updatePd" class="btn btn-lg btn-primary btn-block" id="updatePwd" Text="UpdatePassword" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </nav>
                    </div>
                </div>
            </div>
        </div>   
</body>
</html>
