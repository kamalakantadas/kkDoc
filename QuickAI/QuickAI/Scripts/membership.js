$(document).ready(function () {
    $('#btnToggle').on('click', function () {
        //$("#sidebar").toggleClass('col-lg-3 full-width');
        $("#sidebar").toggle();
        $("#content").toggleClass('col-lg-12 full-width');
    });
});
function viewText() {
    $("#viewImage").show();
} function hideText() {
    $("#viewImage").hide();
}