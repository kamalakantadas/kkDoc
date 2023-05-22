$(document).ready(function () {
    $("#amount").val(50);
    
    $("#amount").on("keyup change", function () {
        var am = $("#amount").val();
        if (am < 50) {
            alert("minimum amout is 50");
            $("#amount").val(50);
        }
    });
});
function viewText() {
    $("#viewImage").show();
} function hideText() {
    $("#viewImage").hide();
}