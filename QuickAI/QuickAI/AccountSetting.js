$(document).ready(function () {
    $('#btnToggle').on('click', function () {
        //$("#sidebar").toggleClass('col-lg-3 full-width');
        $("#sidebar").toggle();//left side bar id
        $("#content").toggleClass('col-lg-12 full-width');//right side bar
    });
    $("#typeSel.business").on('select', function () {
        if ($("#td").hide()) {
            $("#td").show()
        }
    });
  
    $("#typeSel.personal").on('select', function () {
        if ($("#td").show()) {
            $("#td").hide()
        }
    });
});


function viewText() {
    $("#viewImage").show();
} function hideText() {
    $("#viewImage").hide();
}