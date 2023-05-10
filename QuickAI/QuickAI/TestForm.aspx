<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TestForm.aspx.cs" Inherits="QuickAI.TestForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="IndexPage.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>   
    <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.1/moment.min.js"></script>
    <script src="../Scripts/changeplan.js"></script>
</head>
<body>
    <form id="form1" runat="server">
       <div class="container">
        <div class="page-header">
            <div class="row" style="height:100px;background-color:aqua">
                <div class="col-lg-3">
                    <a class="active" value="Inex" href="#"></a>
                </div>
                <div class="col-lg-3"></div>
                <div class="col-lg-3">
                    <button class="btn btn-primary" onclick="dataSubmit" >Login</button>
                </div>
                <div class="col-lg-3">
                    <button class="btn btn-primary" onclick="Register">Register</button>
                </div>
            </div>
        </div>
        <div class="row" style="height:45px;background-color:red;">
            <h1 class="alert-danger">Hello World</h1>
            UName
            <asp:TextBox runat="server" id="uName" ></asp:TextBox>
            <asp:TextBox runat="server" id="uPwd" ></asp:TextBox>
            <asp:Button runat="server" onclick="registerData" id="uBtn" text="login"></asp:Button>
        </div>
    </div>
    </form>
</body>
</html>
