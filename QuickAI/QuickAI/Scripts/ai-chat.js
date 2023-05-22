$(document).ready(function () {
    // Get references to the button and chat container elements
    const chatBtn = document.getElementById("chatSubmitBtn");
    const chatContainer = document.getElementById("chatHistory");
    
    // Add a click event listener to the button
    chatBtn.addEventListener("click", () => {
        if ($("#textSrch").val() == "") {
            return;
        }
        else {

            //User Chat starts

            $('.user-icon img').remove();
            // Create a new div element for the chat
            const chatDiv = document.createElement("div");
            chatDiv.classList.add("row", "chat", "mb-1");

            //For User Text
            const chatTe = document.createElement("div");
            chatTe.classList.add("user-text");
            
            const chatText = document.createElement("p");
            chatText.textContent = $("#textSrch").val();
            chatTe.append(chatText);

            //For Image Icon
            const chatIcon = document.createElement("div");
            chatIcon.classList.add("user-icon");
           
            $('.user-icon').css({                
                'padding-left':'25px'
            });

            var img = $('<img>');
            img.attr('src', 'Images/userIcon1.png');
            $('.user-icon').append(img);
            
            $('.user-icon img').css({
                'height': '50px',
                'float':'right',
                'background-repeat': 'no-repeat'
            });

            //

            // Append the content to the chat div
            //previous code
            chatDiv.appendChild(chatTe);
            chatDiv.append(chatIcon);
            

            // Append the chat div to the chat container
            chatContainer.appendChild(chatDiv);
            $("#textSrch").val("");
            $('.user-text').css({
                'background': '#007bff',
                'color': 'white',
                'width': '90%',
                'margin-left': '10px',
                'padding-top': '10px',
                'padding-left':'10px'
            });
            //user chat end

            //AiChat bot starts
            $('.ai-icon img').remove();
            const aiChatDiv = document.createElement("div");
            aiChatDiv.classList.add("row", "aiChat", "mb-1");

            //For User Text
            const aiChatTe = document.createElement("span");
            aiChatTe.classList.add("ai-text");

            //For Image Icon
            const aiChatIcon = document.createElement("div");
            aiChatIcon.classList.add("ai-icon");
            ////new code
            ////chatTe.append(chatIcon);

            //previous code end

            $('.ai-icon').css({
                'padding-left': '25px'
            });

            var aiImg = $('<img>');
            aiImg.attr('src', 'Images/userIcon1.png');
            $('.ai-icon').append(aiImg);
            //chatIcon.append(img);

            //// new code start
            //var imageUrl = "Images/userIcon1.png";
            //$('.user-icon').css('background-image', 'url(' + imageUrl + ')');
            ////new code end

            $('.ai-icon img').css({
                'height': '50px',
                'float': 'left',
                'background-repeat': 'no-repeat'
            });

            //

            // Append the content to the chat div
            //previous code
            aiChatDiv.append(aiChatIcon);
            aiChatDiv.appendChild(aiChatTe);
            


            // Append the chat div to the chat container
            chatContainer.appendChild(aiChatDiv);
            //$("#textSrch").val("");
            $('.ai-text').css({
                'display':'inline - block',
                'width': '100px',
                'height': '50px',
                'background-color': '#007bff',
                'animation': 'typing-animation 1s infinite',
                'margin-left':'10px'
                //'height': '50px',
                //'background': '#007bff',
                //'color': 'white',
                //'width': '90%',
                //'margin-left': '10px',
                //'padding-top': '10px',
                //'padding-left': '10px'
            });
        }       
    });
    //download button event
   

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