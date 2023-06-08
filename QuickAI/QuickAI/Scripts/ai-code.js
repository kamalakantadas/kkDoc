$(document).ready(function () {
    //title titleCount will store
    $("#title").on("keyup", function () {
        var x = $("#title").val();
        var xl = x.length;
        $("#titleCount").text(xl);
    });
    $('#btnToggle').on('click', function () { //button event       
        $("#sidebar").toggle();
        $("#content").toggleClass('col-lg-12 full-width');
    });
});
function viewText() {
    $("#viewImage").show();
} function hideText() {
    $("#viewImage").hide();
}