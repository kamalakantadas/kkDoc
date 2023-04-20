//const { post } = require("jquery");

$(document).ready(function () {
    $("#register").on("click", function () {
        var userName = $("#form3Example1cg").val();
        var email = $("#form3Example3cg").val();
        //primary key constraints email validation

        var pwd = $("#form3Example4cg").val();
        //var rpwd = $("#form3Example4cdg").val();

        $.ajax({
            type: "POST",
            url: "/Index.ashx?action=registerUser&timeid" + (Math.random() * 10000) + " ",
            cache: false,
            data: { "name": userName, "email": email, "pwd": pwd },
            success: function (result) {
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
        });


    });
    $("#resDiv").hide();
    $("#loginButtonFromRegister").on("click", function () {
        $("#mainPage").hide();
        $("#loginForm").show();
        $("#registrationPage").hide();
    });
    $("#signupButton").ready(function () {
        $("#form3Example4cdg").blur(function () {
            var pwd = $("#form3Example4cg").val();
            var rpwd = $("#form3Example4cdg").val();
            if (pwd != rpwd) {
                alert("Password not matched!!");
                $("#register").prop("disabled", true);
            } else {
                $("#register").prop("enabled", false);
            }
        });
        $("#form3Example3cg").blur(function () {
            var email = $("#form3Example3cg").text();
            $.ajax({
                url: "index.ashx?action=validateEmail&timeid" + (Math.random() * 10000) + " ",
                cache: false,
                data: { "email": email },
                success: function (result) {
                    if (result == True) {
                        alert("Email is already Registered!!!");
                        $("#form3Example4cg").prop("disabled", true);
                        $("#form3Example4cdg").prop("disabled", true);
                        $("#register").prop("disabled", true);
                    }
                }
            });
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