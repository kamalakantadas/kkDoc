$(document).ready(function () {
    const chatContainer = document.getElementById("chatHistory");
    $("#chatHistory").css({
        'padding-left': '10px'
    });
   $("#chatSubmitBtn").on("click", () => {
        var s = $("#textSrch").val();
        //For User Text
        const chatDiv = document.createElement("div");
        chatDiv.classList.add("row", "chat", "mb-1");
        //
       //$('.chat').css({
       //        'background': '#007bff',
       //        'color': 'white',
       //        'width': '90%',
       //        'padding-left': '10px'
       //    });
        //
        const chatTe = document.createElement("p");
        chatTe.textContent = s;
        
        chatDiv.appendChild(chatTe);

        chatContainer.appendChild(chatDiv);//for Input
        const settings = {
            async: true,
            crossDomain: true,
            url: 'https://ai-chatbot.p.rapidapi.com/chat/free?message='+s+'&uid=user1',
            method: 'GET',
            headers: {
                'X-RapidAPI-Key': 'a74a1d2cc3msha679bf7a657f709p109c34jsn350f2c252bbe',
                'X-RapidAPI-Host': 'ai-chatbot.p.rapidapi.com'
            },
            processData: false,
            data: '{"message": ' + s + '}'
        };

        $.ajax(settings).done(function (response) {
            var val = response.chatbot.response;  
            //var val = "hello";
            const aiChatDiv = document.createElement("div");
            aiChatDiv.classList.add("row", "aiChat", "mb-1");

            //For ai Text
            //$('.aiChat').css({
            //    'float': 'left',
            //    'background-repeat': 'no-repeat',
            //    'background': '#007bff',
            //    'color': 'white',
            //    'width': '90%',
            //    'padding-left': '10px',
            //});
            //
            const aiChatTe = document.createElement("p");
            aiChatTe.textContent = val;
            aiChatDiv.append(aiChatTe);
            chatContainer.appendChild(aiChatDiv);
        });
    });
    //chatbot end
});

//generate Text file
function downloadText() {
    var textToWrite = "This is the content of the text file.";
    var fileName = "Chats.txt";
    var fileType = "text/plain";

    var blob = new Blob([textToWrite], { type: fileType });

    // Create a temporary link element
    var a = document.createElement("a");
    a.href = URL.createObjectURL(blob);
    a.download = fileName;

    // Append the link to the document body and trigger the download
    document.body.appendChild(a);
    a.click();

    // Clean up
    document.body.removeChild(a);
}
function viewText() {
    $("#viewImage").show();
} function hideText() {
    $("#viewImage").hide();
}



