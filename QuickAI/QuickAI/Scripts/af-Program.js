$(document).ready(function () {
    //$("#copyBtn").innerHtml = '<i class="fa fa-copy" style="font-size: 37px;margin-left: 11px;color:cornflowerblue"></i>';
    $("#copyBtn").on("click", function () {
        var textbox = $("#copyTxt").val();
        //textbox.select();        
        document.execCommand("copy");
        alert("Text copied: " + textbox);
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