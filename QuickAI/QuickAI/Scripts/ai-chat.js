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
            $('.user-icon img').remove();
            // Create a new div element for the chat
            const chatDiv = document.createElement("div");
            chatDiv.classList.add("row");
            chatDiv.classList.add("chat");
            chatDiv.classList.add("mb-1");

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
            chatDiv.appendChild(chatTe);
            chatDiv.appendChild(chatIcon);
            

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
        }       
    });

});