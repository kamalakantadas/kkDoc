$(document).ready(function () {
    //tinymce.init({
    //    selector: '#myTextarea',
    //    plugins: 'code',
    //    // Add more configuration options as needed
    //});

    // tinymce
    tinymce.init({
        plugins: 'code',
        theme: 'silver',
        selector: '.tiny-editor',
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
    //$("#myBtn").on("click", function () {
    //    if ($("#myDIV").css("display: none")) {
    //        $("#myDIV").css("display: block");
    //    }
    //    else if ($("#myDIV").css("display: block")) {
    //        $("#myDIV").css("display: none");
    //    }
    //});
    //$("#btn1").click(function () {
    //   // $("#btn2").toggle();
    //    if ($("#div22").hide()) {
    //        $("#div22").show();
    //    }
       
        
    //});
});