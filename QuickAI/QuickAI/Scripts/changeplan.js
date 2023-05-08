$(document).ready(function () {
    ////billing Form Show
    //$("#up").on("click", function () {
    //    $("#changePlan").hide();
    //    $("#billingFormChangePlan").css("display","block");_
    //});
    //
    $("#membershipPlan").text("Extended Plan");
    var email = $("#viewImage").val();
    $("#userNameBankDeposit").text = email;
    var planValue = $("#chPara").text();
    
    $("#planPurchase").text = planValue;
    $("#priceDepositForm").text = planValue;
    //package summary
    var stte = $("#startDate").val();

    var currentDate = moment();
    
   
    //
    if (planValue == "550") {
        $("#endDate").text = "LifeTime";
    }
    else if (planValue == "50") {       
        var futureDate = currentDate.add(1, 'years');
        $('#endDate').text(futureDate.format('DD-MM-YYYY'));      
    }
    else {      
        var futureDate = currentDate.add(1, 'months');
        $('#endDate').text(futureDate.format('DD-MM-YYYY'));
    }
    $("#TotalCost").text = planValue;
    //
    var today = new Date();
    var day = today.getDate();
    var month = today.getMonth() + 1; // JavaScript months are 0-11
    var year = today.getFullYear();
    var formattedDate = ('0' + day).slice(-2) + '-' + ('0' + month).slice(-2) + '-' + year;
    
 
    $("#startDate").html(formattedDate);
    //Congratulation Code wWork
    $("#monthly").on("click", function () {
            $('#chPara').text('5');
        $("#chParaText").text('/monthly');
        });
    $("#yearly").on("click", function () {
        $('#chPara').text('50');
        $("#chParaText").text('/yearly');
    });
    $("#Lifetime").on("click", function () {
        $('#chPara').text('550');
        $("#chParaText").text('/LifeTime');
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
//This is the for action Upgrade Membership
function ActionUpMemb() {
    $("#upgradeMembership").show();
    $("#changePlan").hide();
    $("#billingFormChangePlan").hide();
}
function showBill() {
    $("#billingFormChangePlan").show();//visibleBill
    $("#changePlan").hide();
}
//function billingDetails() {
//    $("#upgradeMembership").show();
//    $("#changePlan").hide();
//    $("#billingFormChangePlan").hide();
//}