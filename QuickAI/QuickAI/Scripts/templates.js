$(document).ready(function () {   
    $("#selectTempID").on('input', function () {
        var searchKeyword = $(this).val().toLowerCase();
        $('.templ .aitempl').each(function () {
            var text = $(this).text().toLowerCase();
            if (text.includes(searchKeyword)) {
                $(this).show();
            } else {
               $(this).hide();
            }
        });
        $('.templ h4').each(function () {
            var text = $(this).text().tolowercase();
            if (text.includes(searchkeyword)) {
                $(this).show();
            } else {
                $(this).hide();
            }
        });
        //$('.templ').each(function () {
        //    var text = $(this).text().tolowercase();
        //    if (text.includes(searchkeyword)) {
        //        $('.aitempl h4').each(function () {
        //            var text1 = $(this).text().tolowercase();
        //            if (text1.includes(searchkeyword)) {
        //                $(this).show();
        //            } else {
        //                $(this).hide();
        //            }
        //        });
        //    } else {
        //        $(this).hide();
        //    }
        //});
        //$('.templ h4').each(function () {
        //    var text = $(this).text().tolowercase();
        //    if (text.includes(searchkeyword)) {
        //        $(this).show();
        //    } else {
        //        $(this).hide();
        //    }
        //});
    });   
    
    //$("user_search").on("keyup", function () {
    //    var value = $(this).val().toLowerCase();
    //    $("#user_search_table tr").filter(function () {
    //        $(this).toggle($(this).text().toLowerCase().indexOf(value)>-1)
    //    });
    //});
    //$("#selectTempID").on("keydown", function () {
    //   var searchText = $(this).val().toLowerCase();
    //    $(".templ").each(function () {
    //        if ($('.templ h4').text() === searchText) {
    //            $(this).show();
    //        }
    //    });

    //});
    //var txt = $('.row .templ h4').text();
    //var trm = $.trim(txt);
    //console.log(trm);
    //I Have to store 6 div into one array
    
    $("#at").on("click", function () {
       /* $(".row h4").show();*/
        $("#abp").show();
        $("#amt").show();
        $("#gwg").show();
        $("#ece").show();
        $("#sma").show();
        $("#webe").show();
        $("#oth").show();
    });
    $("#ab").on("click", function () {
        /*$(".row h4").css("display", "none");*/
        $("#abp").show();
        $("#amt").hide();
        $("#gwg").hide();
        $("#ece").hide();
        $("#sma").hide();
        $("#webe").hide();
        $("#oth").hide();
    });
    $("#am").on("click", function () {
        $("#amt").show(); /*$(".row h4").css("display", "none");*/
        $("#abp").hide();       
        $("#gwg").hide();
        $("#ece").hide();
        $("#sma").hide();
        $("#webe").hide();
        $("#oth").hide();
    });
    $("#gw").on("click", function () {
        $("#gwg").show(); /*$(".row h4").css("display", "none");*/
        $("#amt").hide();
        $("#abp").hide();
        $("#ece").hide();
        $("#sma").hide();
        $("#webe").hide();
        $("#oth").hide();
    });
    $("#ec").on("click", function () {
        $("#ece").show(); /*$(".row h4").css("display", "none");*/
        $("#gwg").hide();
        $("#amt").hide();
        $("#abp").hide();        
        $("#sma").hide();
        $("#webe").hide();
        $("#oth").hide();
    });
    $("#sm").on("click", function () {
        $("#ece").hide(); /*$(".row h4").css("display", "none");*/
        $("#gwg").hide();
        $("#amt").hide();
        $("#abp").hide();
        $("#sma").show();
        $("#webe").hide();
        $("#oth").hide();
    });
    $("#ws").on("click", function () {
        $("#webe").show(); /*$(".row h4").css("display", "none");*/
        $("#ece").hide();
        $("#gwg").hide();
        $("#amt").hide();
        $("#abp").hide();
        $("#sma").hide();        
        $("#oth").hide();
    });
    $("#ot").on("click", function () {
        $("#oth").show(); /*$(".row h4").css("display", "none");*/
        $("#webe").hide();
        $("#ece").hide();
        $("#gwg").hide();
        $("#amt").hide();
        $("#abp").hide();
        $("#sma").hide();        
    });
});
function viewText() {
    $("#viewImage").show();
} function hideText() {
    $("#viewImage").hide();
}

   //document.getElementById('div2'),
            //document.getElementById('div3'),
            //document.getElementById('div4'),
            //document.getElementById('div5'),
            //document.getElementById('div6')