
$(document).ready(function () {

    const ctx = document.getElementById('myChart');

    new Chart(ctx, {
        type: 'line',
        data: {
            labels: ["01 Apr", "02 Apr", "03 Apr", "04 Apr", "05 Apr", "06 Apr", "07 Apr", "08 Apr", "09 Apr", "10 Apr", "11 Apr", "12 Apr", "13 Apr", "14 Apr", "15 Apr", "16 Apr", "17 Apr", "18 Apr", "19 Apr", "20 Apr", "21 Apr", "22 Apr", "23 Apr", "24 Apr", "25 Apr", "26 Apr", "27 Apr", "28 Apr", "29 Apr", "30 Apr"],
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
   
    $('#btnToggle').on('click', function () {        
        $("#sidebar").toggle();
        $("#content").toggleClass('col-lg-12 full-width');       
    });
   
});
function viewText() {   
    $("#viewImage").show();   
} function hideText() {
    $("#viewImage").hide();
}

