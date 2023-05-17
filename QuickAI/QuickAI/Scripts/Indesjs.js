$(document).ready(function () {    
   
    //forgotPage automatically hide when Document load forgotText
    $("#forgotPage").hide();
    //When click on return button from Forgot page
    $("#returnFromForgot").on("click", function () {
        $("#forgotPage").hide();
        $("#mainPage").show();
    });
    $("#forgotText").on("click", function () {
        window.location.href = "ForgotPassword.html";
    });

    //Login Page
    $("#login").on("click", function () {
        var uEmail = $("#uEmail").val();
        var uPwd = $("#uPwd").val();
        if (uPwd == "" || uEmail == "") {
            alert("UserName or Password not be empty");
        } else {
            $.ajax({
                
                url: "index.ashx?action=userLogin&timeid" + (Math.random() * 10000) + " ",
                cache: false,
                data: { "uEmail": uEmail, "uPwd": uPwd },
                success: function (result) {
                     if(result=="yes"){
                        alert("succesfully Login");
                     }else if(result != "yes"){
                        alert("User Is not exist");
                     }
                }
            });
        }
    });
  
    $("#resDiv").hide();
    $("#loginButtonFromRegister").on("click", function () {
        $("#mainPage").hide();
        $("#loginForm").show();
        $("#registrationPage").hide();
    });

    //Registration Page Validation
    //Registration Page Data Save Into Database
    $("#register").on("click", function () {

        var userName = $("#form3Example1cg").val();
        var email = $("#form3Example3cg").val();
        var pwd = $("#form3Example4cg").val();
        //var rpwd = $("#form3Example4cdg").val();

        $.ajax({
            url: "index.ashx?action=registerUser&timeid" + (Math.random() * 10000) + " ",
            cache: false,
            data: { "name": userName, "email": email, "pwd": pwd },
            success: function (result) {
                if (result == "Present") {
                    $("#form3Example3cg").val("");
                    //$("#register").prop("disabled", true);
                    alert("Email is Already Registered");                    
                }
                else {
                    $("#loginForm").hide();
                    $("#registrationPage").hide();
                    $("#mainPage").hide();
                    $("#resDiv").show();
                    $("#form3Example1cg").val("");
                    $("#form3Example3cg").val("");
                    $("#form3Example4cg").val("");
                    $("#form3Example4cdg").val("");
                    $("#resDiv").html(result);
                }                
            }
        });
    });

    //When click on Register for Free Link
    $("#startedFreeReg").on("click", function () {
        $("#registrationPage").show();
        $("#mainPage").hide();
        $("#loginForm").hide();
        $("#form3Example3cg").val("");
        $("#form3Example4cg").val("");
        $("#form3Example4cdg").val("");
    });
    $("#signupButton").ready(function () {
        //email Validation Code Here
       /* $("#form3Example3cg").on("change blur", function () {
            var email = $("#form3Example3cg").value();
            if (email == "") {
                alert("Email should not be blanked");
            } else {
                $.ajax({
                    url: "index.ashx?action=validateEmail&timeid" + (Math.random() * 10000) + " ",
                    cache: false,
                    data: { "email": email },
                    success: function (result) {
                        if (result === "True") {
                            alert("Email is already Registered!!!");
                            $("#form3Example4cg").prop("disabled", true);
                            $("#form3Example4cdg").prop("disabled", true);
                            $("#register").prop("disabled", true);
                        } else {
                            alert("Email is new");
                            $("#form3Example3cg").text(email);
                            $("#register").prop("disabled", false);
                        }
                    }
                });
            }

        });*/
        //Password Validation
        $("#form3Example4cdg").on("blur",function () {
            var pwd = $("#form3Example4cg").val();
            var rpwd = $("#form3Example4cdg").val();
            if (pwd != rpwd) {
                alert("Password not matched!!");
                $("#form3Example4cdg").val("");
            } else if (pwd == "") {
                alert("Field Should Not be blanked");
            }
           /* else {
                $("#register").prop("enabled", false);
            }*/
        });
        
        
       
    });
    $("#signupButton").on("click", function () {
        $("#mainPage").hide();
        $("#loginForm").hide();
        $("#registrationPage").show();
        $("#form3Example3cg").val("");
        $("#form3Example4cg").val("");
        $("#form3Example4cdg").val("");
    });
    $("#add").on("click", function () {
        var no1 = parseInt($("#no1").val());
        var no2 = parseInt($("#no2").val());
        sum = no1 + no2;
        console.log(sum);
    });
    $("#loginForm").hide();
    $("#registrationPage").hide();
    $("#joinbutton").on("click", function () {
        //$("#mainPage").css("box-shadow", "5px 5px 10px #888888");
        $("#mainPage").hide();
        $("#loginForm").show();
        $("#registrationPage").hide();
        $("#uName").val("");
        $("#uPwd").val("");
    });    
    $("#closeButton").on("click", function () {
        $("#mainPage").show();
        $("#loginForm").hide();
        $("#registrationPage").hide();
    });
});
