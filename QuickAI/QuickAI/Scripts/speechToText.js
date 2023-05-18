$(document).ready(function () {
    $('.heading').on('click', function () {
        var selectedOption = $(this).text();
        $('#btnTog').text(selectedOption);
    });
    $('#createTable').click(function () {
        var table = $('<table>').addClass('table');
        $('#tableContainer').empty().append(table);

        // Add row on cursor hovertableContainer
        $(document).on('mouseover', 'table', function () {
            var row = $('<tr>');
            $(this).append(row);
        });
    });

    //richTextField.document.designMode = 'On';
    $('#richTextField').on('load', function () {
        $(this).prop('contentDocument').designMode = 'on';
    });
   
});
var showingSourceCode = false;
var isInEditMode = true;
//header 6 type
function execCommandWithArg(command, arg) {   
    event.preventDefault();
    //richTextField.document.execCommand(command, false, arg);
    $('#richTextField').on('load', function () {
        $('this').prop('contentDocument').execCommand(command, false, arg);
    });
}
function execCmd(command) {
    event.preventDefault();
    //richTextField.document.execCommand(command, false, null);
    $('#richTextField').on('load', function () {
        $(this).prop('contentDocument').execCommand(command, false, arg);
    });
       
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