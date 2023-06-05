$(document).ready(function () {
    $("#hideDiv2").on("click", function () {
        $("#hideContentInner").slideToggle("slow");
    });
    $("#amount").val(50);
    
    $("#amount").on("keyup change", function () {
        var am = $("#amount").val();
        if (am < 50) {
            alert("minimum amout is 50");
            $("#amount").val(50);
        }
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