$(document).ready(function () { 
    //title titleCount will store
    $("#title").on("keyup", function () {
        var x = $("#title").val();
        var xl = x.length;
        $("#titleCount").text(xl);
    });
    //aDesc   audioDescCount
    $("#aDesc").on("keyup", function () {
        var y = $("#aDesc").val();
        var yl = y.length;
        $("#audioDescCount").text(yl);
    });
    $('.dropdown-item.heading').click(function (e) {
        e.preventDefault();
        var selectedText = $(this).text().trim();
        $('#btntog').text(selectedText);
    });
  
    $(".tox-notifications-container").css("display", "none");
    tinymce.init({

        plugins: 'code',
        theme: 'silver',
        selector: 'textarea#editor',
        min_height: 500,        
        resize: true,
        plugins: 'advlist lists table autolink link wordcount fullscreen autoresize',
        toolbar: [
            "blocks | bold italic underline strikethrough | alignleft aligncenter alignright  | link blockquote",
            "undo redo | removeformat | table | bullist numlist | outdent indent"
        ],
        menubar: "",
        // link
        relative_urls: false,
        link_assume_external_targets: true,       
        content_style: 'body { font-size:14px }'
    });
});
function viewText() {
    $("#viewImage").show();
} function hideText() {
    $("#viewImage").hide();
}