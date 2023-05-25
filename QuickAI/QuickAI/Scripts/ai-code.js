$(document).ready(function () {
    //title titleCount will store
    $("#title").on("keyup", function () {
        var x = $("#title").val();
        var xl = x.length;
        $("#titleCount").text(xl);
    });
});
function viewText() {
    $("#viewImage").show();
} function hideText() {
    $("#viewImage").hide();
}