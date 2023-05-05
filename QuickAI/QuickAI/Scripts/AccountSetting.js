$(document).ready(function () {
    $('#btnToggle').on('click', function () {
        //$("#sidebar").toggleClass('col-lg-3 full-width');
        $("#sidebar").toggle();//left side bar id
        $("#content").toggleClass('col-lg-12 full-width');//right side bar
    });
 
    //Dropdown of Type
    $("#typeSel").change(function () {
        var selectedOption = $(this).val();

        if (selectedOption === 'personal') {
            if ($("#td").show()) {
                $("#td").hide()
            }
        } else {
            $("#td").hide()
        }
        if (selectedOption === "business") {
            $("#td").show()
        }
    });     
    
});


function viewText() {
    $("#viewImage").show();
} function hideText() {
    $("#viewImage").hide();
}