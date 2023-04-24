﻿$(document).ready(function () {    
    $("#returnFromResetPwd").on("click", function () {
        window.location.href = "index.html";
    });
    $("#returnFromForgot").on("click", function () {
        window.location.href = "index.html";
    });
    
    //Reset Password Work
    $("#resetPwdBtn").on("click", function () {
        var params = new URLSearchParams(window.location.search);
        var email = params.get('email');
        //var pwd = $("#rPwd").val();
        var np = $("#rNPwd").val();
        if (np != "") {
            var nrp = $("#rNCPwd").val();
            if (nrp != np) {
                alert("New Password Not Matched");
            } else {
                $.ajax({
                    url: "index.ashx?action=ModifiedPassword&timeid" + (Math.random() * 10000) + " ",
                    cache: false,
                    data: { "email": email, "pwd": nrp },
                    success: function (result) {
                        if (result == "Yes") {
                            alert("Successfully Updated");
                        }
                    }
                });
            }
        } else {
            alert("password is Empty");
        }
    });
    //forgot page workbtnReset
    $("#btnReset").on("click", function () {
        var email = $("#email").val();
        if (email == "") {
            alert("Email is missing");
        }
        else {
            $.ajax({
                url: "index.ashx?action=checkEmail&timeid" + (Math.random() * 10000) + " ",
                cache: false,
                data: { "email": email },
                success: function (result) {                   
                    if (result == "yes") {
                        var url = 'ModifyForgotPassword.html?email=' + encodeURIComponent(email);
                        window.location.href = url;
                        //alert("Email is In database!!");                        
                    }
                    else if (result != "yes") {
                        alert("Email is Not In database!!");
                        //Register again
                        $("#signupFromForgot").show();
                        $("#ResetPage").hide();
                    }
                }
            });
        }
    });
});
