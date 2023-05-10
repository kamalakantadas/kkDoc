$(document).ready(function () {
    //Radio button work
    $("#monthly").on("click", function () {
        $("#chPara").val("5");
        $("#chParaText").text("/monthly");
    });
    $("#yearly").on("click", function () {
        $("#chPara").val("50");
        $("#chParaText").text('/yearly');
    });
    $("#Lifetime").on("click", function () {
        $("#chPara").val("550");
        $("#chParaText").text('/LifeTime');
    });
	
});
