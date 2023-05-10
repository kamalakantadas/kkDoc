$(document).ready(function () {
   
    var today = new Date();
    var day = today.getDate();
    var month = today.getMonth() + 1; // JavaScript months are 0-11
    var year = today.getFullYear();
    var formattedDate = ('0' + day).slice(-2) + '-' + ('0' + month).slice(-2) + '-' + year;
    $("#startDate").html(formattedDate);
  
    //Radio button work
    $("#monthly").on("click", function () {
        $("#chPara").val("5");
        $("#chParaText").text("/monthly");       
        });
    $("#yearly").on("click", function () {
        $("#chPara").val("50");
        $("#chParaText").text('/yearly');       
    });
    $("#Lifetime").on("click", function () {
        $("#chPara").val("550");
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
function actionupmemb() {
    $("#billingFormChangePlan").show();
}
function showBill() {
    $("#billingFormChangePlan").show();//visibleBill
    $("#changePlan").hide();
}
function billingDetails() {
    $("#upgradeMembership").show();
    $("#changePlan").hide();
    $("#billingFormChangePlan").hide();
}
function forwardToBankDeposit() {
    $("#bankDeposit").show();
    $("#upgradeMembership").hide();
    $("#changePlan").hide();
    $("#billingFormChangePlan").hide();
}

function viewText() {
    $("#viewImage").show();
} function hideText() {
    $("#viewImage").hide();
}
//if val==1
function hideChangeFunctionality() {
    $("#changePlan").hide();
    $("#billingFormChangePlan").show();
};

  //var currentDate = moment();
    //
/* $("#membershipPlan").text("Extended Plan");*/
    //var email = $("#viewImage").val();
    //$("#userNameBankDeposit").text(email);






//This is the for action Upgrade Membership
//function ActionUpMemb() {
//    $("#upgradeMembership").show();
//    $("#changePlan").hide();
//    $("#billingFormChangePlan").hide();
//}


 //package summary
    //var stte = $("#startDate").val();




    //
    //if (planValue == "550") {
    //    $("#endDate").text("LifeTime");
    //    $("#planPurchase").text(planValue);
    //    $("#priceDepositForm").text(planValue);
    //    $("#TotalCost").text(planValue);
    //}
    //else if (planValue == "50") {
    //    var futureDate = currentDate.add(1, 'years');
    //    $('#endDate').text(futureDate.format('DD-MM-YYYY'));
    //    $("#planPurchase").text(planValue);
    //    $("#priceDepositForm").text(planValue);
    //    $("#TotalCost").text(planValue);
    //}
    //else {
    //    var futureDate = currentDate.add(1, 'months');
    //    $('#endDate').text(futureDate.format('DD-MM-YYYY'));
    //    $("#planPurchase").text(planValue);
    //    $("#priceDepositForm").text(planValue);
    //    $("#TotalCost").text(planValue);
    //}

 ////billing Form Show
    //$("#up").on("click", function () {
    //    $("#changePlan").hide();
    //    $("#billingFormChangePlan").css("display","block");_
    //});
    //

    //