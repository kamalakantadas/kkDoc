$(document).ready(function () {
    ////billing Form Show
    //$("#up").on("click", function () {
    //    $("#changePlan").hide();
    //    $("#billingFormChangePlan").css("display","block");_
    //});
    //Congratulation Code wWork
    $("#monthly").on("click", function () {
            $('#chPara').text('5 / Monthly');
        });
    $("#yearly").on("click", function () {
        $('#chPara').text('50 / Monthly');
    });
    $("#Lifetime").on("click", function () {
        $('#chPara').text('550 / Monthly');
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
function showBill() {
    $("#billingFormChangePlan").show();//visibleBill
    $("#changePlan").hide();
}