
$(document).ready(function () {
   
    const ctx = document.getElementById('myChart');
    const months = [
        "Jan", "Feb", "Mar", "Apr",
        "May", "Jun", "Jul", "Aug",
        "Sep", "Oct", "Nov", "Dec"
    ];
    const currentDate = new Date();
    const currentMonth = months[currentDate.getMonth()];
    const labels = [
        "01 " + currentMonth,
        "02 " + currentMonth,
        "03 " + currentMonth,
        "04 " + currentMonth,
        "05 " + currentMonth,
        "06 " + currentMonth,
        "07 " + currentMonth,
        "08 " + currentMonth,
        "09 " + currentMonth,
        "10 " + currentMonth,
        "11 " + currentMonth,
        "12 " + currentMonth,
        "13 " + currentMonth,
        "14 " + currentMonth,
        "15 " + currentMonth,
        "16 " + currentMonth,
        "17 " + currentMonth,
        "18 " + currentMonth,
        "19 " + currentMonth,
        "20 " + currentMonth,
        "21 " + currentMonth,
        "22 " + currentMonth,
        "23 " + currentMonth,
        "24 " + currentMonth,
        "25 " + currentMonth,
        "26 " + currentMonth,
        "27 " + currentMonth,
        "28 " + currentMonth,
        "29 " + currentMonth,
        "30 " + currentMonth,
        "31 " + currentMonth,
    ];

    new Chart(ctx, {
        type: 'line',
        data: {
            labels,

            /*labels: ["01 Apr", "02 Apr", "03 Apr", "04 Apr", "05 Apr", "06 Apr", "07 Apr", "08 Apr", "09 Apr", "10 Apr", "11 Apr", "12 Apr", "13 Apr", "14 Apr", "15 Apr", "16 Apr", "17 Apr", "18 Apr", "19 Apr", "20 Apr", "21 Apr", "22 Apr", "23 Apr", "24 Apr", "25 Apr", "26 Apr", "27 Apr", "28 Apr", "29 Apr", "30 Apr"],*/
            datasets: [{
                label: "Words Used",
                backgroundColor: '#18469815',
                borderColor: '#184698',
                borderWidth: "3",
                data: [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
                pointRadius: 5,
                pointHoverRadius: 5,
                pointHitRadius: 10,
                pointBackgroundColor: "#fff",
                pointHoverBackgroundColor: "#fff",
                pointBorderWidth: "2",
                //label: '# of Votes',
                //data: [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
                //borderWidth: 1
            }]
        },
        options: {
            scales: {
                y: {
                    beginAtZero: true
                }
            }
        }
        //options: {
        //    layout: {
        //    padding: 10,
        //           },
        //legend: {display: false },
        //title: {display: false },
        //scales: {
        //    yAxes: [{
        //    scaleLabel: {
        //    display: false
        //                   },
        //gridLines: {
        //    borderDash: [6, 10],
        //color: "#d8d8d8",
        //lineWidth: 1,
        //                   },
        //ticks: {
        //    beginAtZero: true
        //                   }
        //               }],
        //xAxes: [{
        //    scaleLabel: {display: false },
        //gridLines: {display: false },
        //               }],
        //           },
        //tooltips: {
        //    backgroundColor: '#333',
        //titleFontSize: 13,
        //titleFontColor: '#fff',
        //bodyFontColor: '#fff',
        //bodyFontSize: 13,
        //displayColors: false,
        //xPadding: 10,
        //yPadding: 10,
        //intersect: false
        //           }
        //           //scales: {
        //    //    y: {
        //    //        beginAtZero: true
        //    //    }
        //    //}
        //}
    });
 
    //new Code
   
    $('#btnToggle').on('click', function () { //button event       
        $("#sidebar").toggle();
        $("#content").toggleClass('col-lg-12 full-width');       
    });
   
});
function hideEmailDiv() {
    $("#emailBar").hide();
   // $("#headerBar").css("position", "");
    $("#headerBar").css({
        'margin-left':'30px',
        'position': 'fixed',
        'height': '80px',
        'background' : 'white',
        'box-shadow': '2px 2px 5px grey'
        //'position': 'fixed',box-shadow: 2px 2px 5px grey;
        
    });
    $("#dashboardBody").css("margin-top", ""); /* 'margin-top': '0px'*/
    $("#dashboardBody").css({
        'margin-top':'82px'
    });
    
   
}
function viewText() {   
    $("#viewImage").show();   
} function hideText() {
    $("#viewImage").hide();
}

