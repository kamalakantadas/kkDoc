$(document).ready(function () {
    //TestChat start
$("#EnterButton").on("click", function () {
    var s = $("#txtVal").val();
    connectApi(s);
});
async function connectApi(s) {
    $("#chatBox").append($("<div>").append($("<p>").text(s)));
    const url = 'https://ai-chatbot.p.rapidapi.com/chat/free?message=' + s + '&uid=user1';
    const header = {
        'X-RapidAPI-Key': 'a74a1d2cc3msha679bf7a657f709p109c34jsn350f2c252bbe',
        'X-RapidAPI-Host': 'ai-chatbot.p.rapidapi.com'
    };
   
    const response = await fetch(url, { headers: header });
    const data = await response.json();
    $("#chatBox").append($("<div>").append($("<p>").text(data.chatbot.response)));
}
    //TestChat end
    //scrolling div start
    $("#selectBtn").on("change", function () {
        var searchVal = $(this).val().toLowerCase();
        $(".row").each(function () {
            var text = $(this).text().toLowerCase();
            if (text.includes(searchVal)) {
                $(this).show();
            } else {
                $(this).hide();
            }
        });
        $("html, body").animate({
            scrollTop: $("#content").offset().top
        }, 1000);
    });
    $(window).on("scroll", function () {
        // Perform any desired actions on scrolling
        console.log("Scrolling");
    });
    //scrolling div end
    //TestDiv start
    $("#TestButton").on("click", function () {
        const sM = $("<div>");//document.createElement("div")
        sM.addClass("row", "subMain");

        const cD1 = $("<div>");
        cD1.addClass("row", "childDiv1");

        const pCd1 = $("<p>").text("I am Child 1 Div");
        cD1.append(pCd1);

        const cD2 = $("<div>");
        cD2.addClass("row", "childDiv2");
        //const cD2 = document.createElement("div").className("row childDiv2");
        const pCd2 = $("<p>").text("I am Child 2");

        cD2.append(pCd2);

        sM.append(cD1);
        sM.append(cD2);
        //sM.append(cD1);
        $("#subMain").append(sM);
    });
    //TestDiv end
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