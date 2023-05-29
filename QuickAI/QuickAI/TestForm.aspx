<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TestForm.aspx.cs" Inherits="QuickAI.TestForm" %>

<!doctype html>
<html lang="en">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Bootstrap CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
        <title>TinyMCE WYSIWYG Bootstrap</title>

        <!-- TinyMCE CDN -->
        <script src="https://cdn.tiny.cloud/1/no-api-key/tinymce/6/tinymce.min.js" referrerpolicy="origin"></script>
        
<script>
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
</script>
        <%--<script>
            tinymce.init({
                selector: 'textarea#editor',
                plugins: 'lists, link, image, media',
                toolbar: 'h1 h2 bold italic strikethrough blockquote bullist numlist backcolor | link image media | removeformat help',
                menubar: false,
                setup: (editor) => {
                    // Apply the focus effect
                    editor.on("init", () => {
                        editor.getContainer().style.transition = "border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out";
                    });
                    editor.on("focus", () => {
                        (editor.getContainer().style.boxShadow = "0 0 0 .2rem rgba(0, 123, 255, .25)"),
                        (editor.getContainer().style.borderColor = "#80bdff");
                    });
                    editor.on("blur", () => {
                        (editor.getContainer().style.boxShadow = ""),
                            (editor.getContainer().style.borderColor = "");
                    });
                },
            });
        </script>--%>
       <%-- <script>
            tinymce.init({
                selector: 'textarea#editor',
                skin: 'bootstrap', //The TinyMCE Bootstrap skin
                plugins: 'lists, link, image, media',
                […]//Omitted lines are identical to step 2                       
            });
        </script>--%>
        <%--<script>
          tinymce.init({
            selector: 'textarea#editor',
          });
        </script>--%>
    </head>

  <body>
    
      <div class="container mt-4 mb-4">
          <!--Bootstrap classes arrange web page components into columns and rows in a grid -->
          <div class="row justify-content-md-center">
              <div class="col-md-12 col-lg-8">
                  <h1 class="h2 mb-4">Submit issue</h1>
                  <label>Describe the issue in detail</label>
                  <div class="form-group">
                      <textarea id="editor"></textarea>
                  </div>
                  <button type="submit" class="btn btn-primary">Submit</button>
              </div>
          </div>
      </div>

  </body>

    <!-- jQuery first, then Popper.js, then Bootstrap JS -->

    <%--<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/2.6.0/umd/popper.min.js" integrity="sha512-BmM0/BQlqh02wuK5Gz9yrbe7VyIVwOzD1o40yi1IsTjriX/NGF37NyXHfmFzIlMmoSIBXgqDiG1VNU6kB5dBbA==" crossorigin="anonymous"></script>
    
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>--%>
</html>
//Chatbot Body starts
   <%-- chatbot body --%>
<div class="row ml-2 mr-2 mt-1" style="background-color: white; min-height: 300px; box-shadow: 0px 0px 1px">
    <div class="col-md-12 col-lg-12 col-sm-12 pl-2 pr-2">
        <div id="chatHistory">
        </div>
    </div>
</div>
<%-- chatbot Text Submit box --%>
<div class="row ml-2 mr-2 mt-1" style="background-color: white; box-shadow: 1px 1px 1px 2px grey">
    <div class="col-md-8 col-lg-10 col-sm-10 mt-4">
        <input type="text" id="textSrch" style="width: 100%; border: none; outline: none" placeholder="Type Your Message Here" />
    </div>
    <div class="col-md-4 col-lg-2 col-sm-2 pt-3 pb-3">
        <input type="button" class="btn btn-primary" value="Submit" id="chatSubmitBtn" />
    </div>
</div>
//chatbot body end