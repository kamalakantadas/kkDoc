$(document).ready(function () {
    //Table create dropdown Design functionality start
    //$('#tableCellDropdown').mouseover(function () {
    //    // Create table row and column design
    //    // Replace the following placeholder code with your implementation
    //    var rowDesign = '<tr><td></td><td></td></tr>';
    //    var columnDesign = '<tr><td></td></tr>';

    //    // Append the row and column design to the table container
    //    $("#tableCellDropdown").append(rowDesign + columnDesign);
    //}).click(function () {
    //    // Create table upon selection
    //    // Replace the following placeholder code with your implementation
    //    var tableRows = $('.table-container tr').length;
    //    var tableColumns = $('.table-container tr:first td').length;
    //    var table = '<table>';

    //    for (var i = 0; i < tableRows; i++) {
    //        table += '<tr>';
    //        for (var j = 0; j < tableColumns; j++) {
    //            table += '<td></td>';
    //        }
    //        table += '</tr>';
    //    }

    //    table += '</table>';      

    //    //$('#tableContainer').empty().append(table);
    //    //
    //    var iframe = $('iframe[name="richTextField"]')[0];
    //    var iframeDocument = iframe.contentDocument || iframe.contentWindow.document;

    //    // Append content to the iframe body
    //    $(iframeDocument.body).empty().append(table);
       
    //});
    //Table dropdown Design functionality end


    $('.heading').on('click', function () {
        var selectedOption = $(this).text();
        $('#btnTog').text(selectedOption);
    });
    //$('#createTable').click(function () {
    //    var table = $('<table>').addClass('table');
    //    $('#tableContainer').empty().append(table);

    //    // Add row on cursor hovertableContainer
    //    $(document).on('mouseover', 'table', function () {
    //        var row = $('<tr>');
    //        $(this).append(row);
    //    });
    //});

    richTextField.document.designMode = 'On';
    //$('#richTextField').on('load', function () {
    //    $(this).prop('contentDocument').designMode = 'on';
    //});

});
//var showingSourceCode = false;
//var isInEditMode = true;
//header 6 type
function execCommandWithArg(command, arg) {
    event.preventDefault();
    richTextField.document.execCommand(command, false, arg);
//    $('#richTextField').on('load', function () {
//        $('this').prop('contentDocument').execCommand(command, false, arg);
//    });
}
function execCmd(command) {
    event.preventDefault();
    richTextField.document.execCommand(command, false, null);
    //$('#richTextField').on('load', function () {
    //    $(this).prop('contentDocument').execCommand(command, false, arg);
    //});

}
//////////////////////////


//function enableEditMode() {
//    richTextField.document.designMode = 'On';
//}



//function toggleSource() {
//    if (showingSourceCode) {
//        richTextField.document.getElementsByTagName('body')[0].innerHTML =
//            richTextField.document.getElementsByTagName('body')[0].textContent;
//        showingSourceCode = false;
//    } else {
//        richTextField.document.getElementsByTagName('body')[0].textContent =
//            richTextField.document.getElementsByTagName('body')[0].innerHTML;
//        showingSourceCode = true;
//    }
//}

//function toggleEdit() {
//    if (isInEditMode) {
//        richTextField.document.designMode = 'Off';
//        isInEditMode = false;
//    } else {
//        richTextField.document.designMode = 'On';
//        isInEditMode = true;
//    }
//}
//function toggleDarkLight() {
//    var element = document.body
//    element.classList.toggle("dark-mode");
//}
//$(document).ready(function () {
//    $('.table-icon').mouseover(function () {
//        // Create table row and column design
//        // Replace the following placeholder code with your implementation
//        var rowDesign = '<tr><td></td><td></td></tr>';
//        var columnDesign = '<tr><td></td></tr>';

//        // Append the row and column design to the table container
//        $('.table-container').append(rowDesign + columnDesign);
//    }).click(function () {
//        // Create table upon selection
//        // Replace the following placeholder code with your implementation
//        var tableRows = $('.table-container tr').length;
//        var tableColumns = $('.table-container tr:first td').length;
//        var table = '<table>';

//        for (var i = 0; i < tableRows; i++) {
//            table += '<tr>';
//            for (var j = 0; j < tableColumns; j++) {
//                table += '<td></td>';
//            }
//            table += '</tr>';
//        }

//        table += '</table>';

//        // Append the table to the table container
//        $('.table-container').html(table);
//    });
//});
