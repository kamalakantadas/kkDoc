﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="speechToText.aspx.cs" Inherits="QuickAI.speechToText" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Speech To Text</title>      
    <link href="../IndexPage.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
     <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/css/bootstrap.min.css"/>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/js/bootstrap.bundle.min.js"></script>
    <script src="https://kit.fontawesome.com/ae3393d1fa.js" crossorigin="anonymous"></script>
    <script src="Scripts/speechToText.js"></script>
</head>
<body>
    <form id="speechToText" runat="server">
       <div id="speechToTextForm">
           <div id="spee    chHeader">
               <%-- Testimonial Header --%>
               <nav class="row navbar navbar-expand-lg navbar-light fixed-top" id="headerBar" style="box-shadow: 2px 2px 5px grey; height: 80px; z-index: 999; background-color: white;">
                   <div class="col-lg-3 col-md-4 col-sm-4" style="width: 24.99%">
                       <a class="navbar-brand" href="../Index.aspx" style="margin-bottom: 50px; overflow: hidden;">
                           <img src="../Images/1149945428.png" style="position: fixed; max-width: 100%; margin-bottom: 30px; padding-left: 35px; padding-right: 35px; overflow: hidden;" />
                       </a>
                   </div>
                   <div class="col-lg-7 col-md-2" style="width: 58.31%; overflow: hidden;">
                       <a href="#" class="sandwich-link" data-toggle="collapse" <%--data-target=".leftSideBar"--%> id="btnToggle">
                           <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-list" viewBox="0 0 16 16">
                               <path fill-rule="evenodd" d="M2.5 12a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5zm0-4a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5zm0-4a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5z" />
                           </svg>
                       </a>
                   </div>
                   <div class="col-lg-1 col-md-3 col-sm-4" style="width: 8.33%;">
                       <%-- User Drop Down Button --%>
                       <div class="dropdown show">
                           <a class="btn btn-secondary dropdown-toggle" href="#" role="button" id="userDropDownList" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                               <asp:Image runat="server" ID="userImage" src="../Images/userIcon.jpg" Style="height: 30px" onmouseover="viewText()" onmouseout="hideText()" alt="" class="hover-text" />
                               <asp:TextBox ID="viewImage" Style="display: none; width: 100px;" runat="server" value=""></asp:TextBox>
                           </a>
                           <div class="dropdown-menu" aria-labelledby="userDropDownList">
                               <a class="dropdown-item" href="dashboard.aspx">Dashboard</a>
                               <a class="dropdown-item" href="#">Templates</a>
                               <a class="dropdown-item" href="#">AI Images</a>
                               <a class="dropdown-item" href="#">AI Chat</a>
                               <a class="dropdown-item" href="#">Speech to Text</a>
                               <a class="dropdown-item" href="#">AI Code</a>
                               <a class="dropdown-item" href="#">All Documents</a>
                               <a class="dropdown-item" href="#">Membership</a>
                               <a class="dropdown-item" href="accountSetting.aspx">Account Setting</a>
                               <a class="dropdown-item" href="#">Logout</a>
                           </div>
                       </div>
                   </div>
                   <div class="col-lg-1 col-md-3 col-sm-4" style="width: 8.33%;">
                       <%-- Header Language Selection --%>
                       <div class="dropdown">
                           <asp:Button runat="server" class="btn btn-secondary btn-primary btn-lg dropdown-toggle" type="button" ID="dropdownMenu2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"
                               Text="en" />
                           <div class="dropdown-menu" aria-labelledby="Lang">
                               <asp:Button runat="server" class="dropdown-item" type="button" Text="English" />
                               <asp:Button runat="server" class="dropdown-item" type="button" Text="Hindi" />
                               <asp:Button runat="server" class="dropdown-item" type="button" Text="Odia" />
                               <asp:Button runat="server" class="dropdown-item" type="button" Text="Tamil" />
                               <asp:Button runat="server" class="dropdown-item" type="button" Text="Tamil" />
                               <asp:Button runat="server" class="dropdown-item" type="button" Text="Tamil" />
                               <asp:Button runat="server" class="dropdown-item" type="button" Text="Tamil" />
                               <asp:Button runat="server" class="dropdown-item" type="button" Text="Tamil" />
                               <asp:Button runat="server" class="dropdown-item" type="button" Text="Tamil" />
                               <asp:Button runat="server" class="dropdown-item" type="button" Text="Tamil" />
                               <asp:Button runat="server" class="dropdown-item" type="button" Text="Tamil" />
                               <asp:Button runat="server" class="dropdown-item" type="button" Text="Tamil" />
                               <asp:Button runat="server" class="dropdown-item" type="button" Text="Tamil" />
                               <asp:Button runat="server" class="dropdown-item" type="button" Text="Tamil" />
                           </div>
                       </div>
                   </div>
               </nav>
           </div>
           <div id="speechBody" >
               <div class="container-fluid" >
                   <div class="row" style="margin-top:60px">
                       <!-- Left Side Lists -->
                       <div class="col-lg-3 scrollable" id="sidebar" style="width: 25%; background-color: #f2f2f2;">
                           <%-- My Account --%>
                           <ul class="">
                               <li>
                                   <a href="dashboard.aspx">
                                       <i class="icon-feather-grid"></i>
                                       <div>Dashboard</div>
                                   </a>
                               </li>

                               <li>
                                   <div class="dropdown">
                                       <button class="btn btn-secondary dropdown-toggle" type="button" id="MyDocDrop" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                           <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 384 512" style="height: 15px; width: 15px;">
                                               <!--! Font Awesome Pro 6.4.0 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license (Commercial License) Copyright 2023 Fonticons, Inc. -->
                                               <path d="M0 64C0 28.7 28.7 0 64 0H224V128c0 17.7 14.3 32 32 32H384V448c0 35.3-28.7 64-64 64H64c-35.3 0-64-28.7-64-64V64zm384 64H256V0L384 128z" />
                                           </svg>
                                           My Documents
                                       </button>
                                       <div class="dropdown-menu" aria-labelledby="MyDocDrop">
                                           <a class="dropdown-item" href="all-documents.aspx">All Documents</a>
                                           <a class="dropdown-item" href="all-Images.aspx">All AI Images</a>
                                       </div>
                                   </div>
                                   <%-- <a href="#" id="myDocBtn"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 384 512"><!--! Font Awesome Pro 6.4.0 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license (Commercial License) Copyright 2023 Fonticons, Inc. --><path d="M0 64C0 28.7 28.7 0 64 0H224V128c0 17.7 14.3 32 32 32H384V448c0 35.3-28.7 64-64 64H64c-35.3 0-64-28.7-64-64V64zm384 64H256V0L384 128z"/></svg> 
                                           My Documents</a>
                                        <ul id="myDocShow">
                                           <li class=""><a href="http://hype.sociusus.com/all-documents">All Documents</a></li>
                                           <li class=""><a href="http://hype.sociusus.com/all-images">All AI Images</a></li>
                                        </ul>--%>                                  
                               </li>
                           </ul>
                           <%-- Organize and Manage --%>
                           <ul>
                               <li>Organize and Manage</li>
                               <li>
                                   <a href="ai-templates/Ai-templates.aspx">
                                       <i class="icon-feather-layers"></i>
                                       <div>Templates</div>
                                   </a>
                               </li>
                               <li>
                                   <a href="ai-Images.aspx">
                                       <i class="icon-feather-image"></i>
                                       <div>Ai Images</div>
                                   </a>
                               </li>
                               <li>
                                   <a href="ai-chat.aspx">
                                       <i class="icon-feather-message-circle"></i>
                                       <div>Ai Chat</div>
                                   </a>
                               </li>
                               <li>
                                   <a href="#">
                                       <i class="icon-feather-headphones"></i>
                                       <div>Speech to Text</div>
                                   </a>
                               </li>
                               <li>
                                   <a href="#">
                                       <i class="icon-feather-code"></i>
                                       <div>Ai Code</div>
                                   </a>
                               </li>
                           </ul>
                           <%-- Account --%>
                           <ul style="padding-bottom: 50px">
                               <li>Account</li>
                               <li class="">
                                   <div class="dropdown show" style="">
                                       <a class="btn btn-secondary dropdown-toggle" href="#" role="button" style="height: 40px;" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Affiliate Program
                                       </a>

                                       <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                                           <a class="dropdown-item" href="#">Affiliate Program</a>
                                           <a class="dropdown-item" href="#">Withdrawals</a>
                                       </div>
                                   </div>
                               </li>
                               <li>
                                   <a href="membership/membership.aspx">
                                       <i class="icon-feather-gift"></i>
                                       <div>Membership</div>
                                   </a>
                               </li>
                               <li>
                                   <a href="Transaction.aspx">
                                       <i class="icon-feather-file-text"></i>
                                       <div>Transactions</div>
                                   </a>

                               </li>
                               <li>
                                   <a href="accountSetting.aspx">
                                       <i class="icon-feather-log-out"></i>
                                       <div>Account Setting</div>
                                   </a>

                               </li>
                               <li>
                                   <a href="#">
                                       <i class="icon-material-outline-power-settings-new"></i>
                                       <div>Logout</div>
                                   </a>

                               </li>
                           </ul>
                       </div>
                       <%-- Right Side Lists --%>
                       <div class="col-lg-9 scrollable" id="content" style="width: 75%; background: #f2f2f2; z-index: 99; padding-left: 10px; padding-top: 50px;">
                           <div id="rightSide">
                               <%-- Right content 1st row only content --%>
                               <div class="row mb-3">
                                    <%-- Left Side of Right side --%>
                                    <div class="col-md-8">
                                        <div class="form-group" style="display:flex">
                                            <h3>Speech To Text</h3>
                                            <input type="button" class="btn btn-secondary form-control" style="border-radius:20px;height:40px;width:180px";id="disableData" value="0/100 Images Used" disabled /> 
                                        </div>                                        
                                    </div>                                   
                                    <%-- Right Side of Right side --%>
                                    <div class="col-md-4">
                                        <div id="SubPage">
                                            <ul style="display: inline-flex;">
                                                <li><a href="index.aspx">Home</a></li>
                                                <li><a href="speechToText.aspx">Speech to Text</a></li>                                            
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                               <%-- Right content Second Row Div --%>
                               <div class="row pt-10">
                                   <%-- speech To text Form Left Side start--%>
                                   <div class="col-lg-4">
                                       <div class="row" style="background-color: white; margin-left: 15px; margin-right: 15px">
                                           <div class="row" style="width: 90%; padding: 20px; margin-left: 20px; box-shadow: 0px 0px 1px grey">
                                               <a><i class="fas fa-headset"></i></a>
                                               <h5 class="fs-4 fw-bolder">Speech To Text</h5>
                                           </div>
                                           <div class="row" style="margin-top: 20px; margin-left: 20px; background-color: cornflowerblue; padding-top: 10px; padding-left: 10px; padding-right: 5px;">
                                               <p>Create audio transcript from a file</p>
                                           </div>
                                           <div class="row form-group" style="margin-left: 20px; width: 90%; margin-top: 10px;">
                                               Title<div style="float: right">0/100</div>
                                               <input class="form-control" type="text" runat="server" id="title" placeholder="" />
                                           </div>
                                           <div class="row" style="margin-left: 20px">
                                               <p class="fs-4 fw-bolder">Upload Media </p>
                                               <span style="color: red">*</span>
                                               <input type="file" class="form-control" runat="server" id="audioFile" placeholder="Upload Media" style="width: 90%;" />
                                               <div class="audioType">
                                                   <p class="fs-6 text-lowercase text-muted fw-light">.mp3, .mp4.,.mpeg,.mpga,.m4a,.wav,.webm allowed. Max file size:1024MB</p>
                                               </div>
                                           </div>
                                           <div class="row form-group" style="margin-left: 20px">
                                               <p class="fs-4 fw-bolder">Audio Description</p>
                                               <asp:TextBox class="form-control" ID="aDesc" runat="server" Rows="2" TextMode="MultiLine" Style="width: 90%"></asp:TextBox>
                                               <p class="fs-6 text-lowercase text-muted fw-light">Describe the speech from the file to help the AI. (Optional)</p>
                                           </div>
                                           <div class="row form-group" style="margin-left: 20px; margin-left: 10px; margin-right: 10px; margin-top: 10px; width: 90%;">
                                               <input type="button" class="form-control btn btn-primary" value="Generate ->" />
                                           </div>
                                           <div class="row" style="background: cornflowerblue; margin: 10px; width: 90%; margin-top: -14px;">
                                               <p class="fs-6 text-lowercase fw-light"></p>
                                               Audio transcription may takes time due to the file size.
                                           </div>
                                       </div>
                                   </div>
                                   <%-- speech To text Form Left Side end --%>
                                   <%-- Generated Result Right Side start--%>
                                   <div class="col-lg-8">
                                       <div class="row pl-3 pr-3" style="background-color: white; margin-right: 30px;">
                                           <%-- Header of generated Result start --%>
                                           <div class="row" style="width: 100%; padding-top: 25px; padding-bottom: 25px; border:1px solid grey; height: 80px;margin:0px;">
                                               <div class="col-lg-1">
                                                   <i class="fa fa-align-left" aria-hidden="true"></i>
                                               </div>
                                               <div class="col-lg-5">
                                                   <p>Generated Result</p>
                                               </div>
                                               <div class="col-lg-3"></div>
                                               <div class="col-lg-3">
                                                   <!--Mouse Hover Event required for all three event//Mouse click also-->
                                                   <a href="#"><i class="fa fa-file-word" aria-hidden="true" style="font-size: 40px; color: cornflowerblue;"></i></a>

                                                   <a href="#"><i class="fa fa-file" aria-hidden="true" style="font-size: 40px; color: cornflowerblue;"></i></a>

                                                   <a href="#"><i class="fa fa-clone" aria-hidden="true" style="font-size: 40px; color: cornflowerblue;"></i></a>
                                               </div>
                                           </div>
                                           <%-- Header of generated Result end--%>
                                           <%-- paragraph of generated Box Start --%>
                                           <div id="paragraphBody" style="margin-top:20px;min-height:400px;width:612px;padding-left:25px;border:1px solid grey;padding-top:10px">
                                               <div id="pIcon" style="box-shadow:0px 2px 4px 2px grey;margin-left:-12px;margin-right:10px">
                                                    <%-- Icon first Line starts --%>
                                                   <div class="row" style="margin-left:10px;padding-top:10px">
                                                       <%-- paragraph --%>
                                                       <div class="dropdown">
                                                           <button class="btn btn-secondary dropdown-toggle raise" id="btntog" <%-- onchange="execCommandWithArg('formatBlock', this.value);"--%> type="button" data-toggle="dropdown" style="padding: 2px;">
                                                               heading 1
                                                           </button>
                                                           <div class="dropdown-menu raise" style="width: 5%; overflow: hidden">
                                                               <a class="dropdown-item heading" href="#">paragraph</a>
                                                               <a class="dropdown-item heading" href="#">
                                                                   <h1>heading1</h1>
                                                               </a>
                                                               <a class="dropdown-item heading" href="#">
                                                                   <h2>heading2</h2>
                                                               </a>
                                                               <a class="dropdown-item heading" href="#">
                                                                   <h3>heading3</h3>
                                                               </a>
                                                               <a class="dropdown-item heading" href="#">
                                                                   <h4>heading4</h4>
                                                               </a>
                                                               <a class="dropdown-item heading" href="#">
                                                                   <h5>heading5</h5>
                                                               </a>
                                                               <a class="dropdown-item heading" href="#">
                                                                   <h6>heading6</h6>
                                                               </a>
                                                               <a class="dropdown-item heading" href="#">performatted</a>
                                                           </div>
                                                       </div>

                                                       <%-- Bold Button --%>
                                                       <button id="bold" onclick="execCmd('bold');" class="raise"><i class="fa fa-bold" aria-hidden="true"></i></button>
                                                       <button id="italic" onclick="execCmd('italic');" class="raise"><i class="fa fa-italic" aria-hidden="true"></i></button>
                                                       <button id="underLine" onclick="execCmd('underline');" class="raise"><i class="fa fa-underline" aria-hidden="true"></i></button>
                                                       <button id="CrossLine" onclick="execCmd('strikeThrough');" class="raise">
                                                           <span>
                                                               <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-type-strikethrough" viewBox="0 0 16 16">
                                                                   <path d="M6.333 5.686c0 .31.083.581.27.814H5.166a2.776 2.776 0 0 1-.099-.76c0-1.627 1.436-2.768 3.48-2.768 1.969 0 3.39 1.175 3.445 2.85h-1.23c-.11-1.08-.964-1.743-2.25-1.743-1.23 0-2.18.602-2.18 1.607zm2.194 7.478c-2.153 0-3.589-1.107-3.705-2.81h1.23c.144 1.06 1.129 1.703 2.544 1.703 1.34 0 2.31-.705 2.31-1.675 0-.827-.547-1.374-1.914-1.675L8.046 8.5H1v-1h14v1h-3.504c.468.437.675.994.675 1.697 0 1.826-1.436 2.967-3.644 2.967z" />
                                                               </svg></span></button>
                                                       <button id="leftAlign" onclick="execCmd('justifyLeft');" class="raise"><i class="fa fa-align-left" aria-hidden="true"></i></button>
                                                       <button id="centerAlign" onclick="execCmd('justifyCenter');" class="raise"><i class="fa fa-align-center" aria-hidden="true"></i></button>
                                                       <button id="rightAlign" onclick="execCmd('justifyRight');" class="raise"><i class="fa fa-align-right" aria-hidden="true"></i></button>
                                                       <button id="link" onclick="execCmd('createLink', prompt('Enter a URL', 'http://'));" class="raise"><i class="fa fa-link" aria-hidden="true"></i></button>
                                                       <button id="rightQuote" onclick="javascript:void(0)" class="raise"><i class="fa fa-quote-right" aria-hidden="true"></i></button>
                                                   </div>
                                                   <%-- Icon first Line ends --%><hr />
                                                   <%-- Icon second Line --%>
                                                   <div class="row" style="margin-left:10px;padding-bottom:10px">
                                                       <button id="undo" onclick="execCmd('undo');" class="raise"><i class="fa fa-repeat" aria-hidden="true"></i></button>
                                                       <button id="redo" onclick="execCmd('redo');" class="raise"><i class="fa fa-undo" aria-hidden="true"></i>
                                                           <%--<i class="fas fa-redo"></i>--%>
                                                           <%--<span>
                                                               <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-repeat" viewBox="0 0 16 16">
                                                                   <path d="M11.534 7h3.932a.25.25 0 0 1 .192.41l-1.966 2.36a.25.25 0 0 1-.384 0l-1.966-2.36a.25.25 0 0 1 .192-.41zm-11 2h3.932a.25.25 0 0 0 .192-.41L2.692 6.23a.25.25 0 0 0-.384 0L.342 8.59A.25.25 0 0 0 .534 9z" />
                                                                   <path fill-rule="evenodd" d="M8 3c-1.552 0-2.94.707-3.857 1.818a.5.5 0 1 1-.771-.636A6.002 6.002 0 0 1 13.917 7H12.9A5.002 5.002 0 0 0 8 3zM3.1 9a5.002 5.002 0 0 0 8.757 2.182.5.5 0 1 1 .771.636A6.002 6.002 0 0 1 2.083 9H3.1z" />
                                                               </svg>
                                                           </span>--%>
                                                       </button>
                                                       <button onclick="execCmd('removeFormat');" class="raise"><i class="fas fa-remove-format"></i></button>
                                                       <%--  Table Icon--%>
                                                       <div class="dropdown">
                                                           <button class="btn btn-primary dropdown-toggle" type="button" id="tableDropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                               <i class="fas fa-table"></i>Table
                                                           </button>
                                                           <div class="dropdown-menu" aria-labelledby="tableDropdown">
                                                               <a class="dropdown-item" href="#" id="tableCellDropdown">
                                                                   <i class="fas fa-th"></i>Table Cell
                                                               </a>
                                                               <a class="dropdown-item" href="#">
                                                                   <i class="fas fa-bars"></i>Table Row
                                                               </a>
                                                               <a class="dropdown-item" href="#">
                                                                   <i class="fas fa-columns"></i>Table Column
                                                               </a>
                                                               <a class="dropdown-item" href="#">
                                                                   <i class="fas fa-cogs"></i>Table Properties
                                                               </a>
                                                               <a class="dropdown-item" href="#">
                                                                   <i class="fas fa-trash-alt"></i>Delete Table
                                                               </a>
                                                           </div>
                                                       </div>



                                                       <%--  --%>
                                                       <button class="raise" onclick="execCmd('insertOrderedList');"><i class="fas fa-list-ol"></i></button>
                                                       <%-- Line alignment --%>
                                                       <button class="raise" onclick="execCmd('insertUnorderedList');"><i class="fas fa-list-ul"></i></button>

                                                       <button id="indentRight" onclick="execCmd('indent');" class="raise"><i class="fa fa-outdent" aria-hidden="true"></i></button>
                                                       <button id="indentLeft" onclick="execCmd('outdent');" class="raise"><i class="fa fa-indent" aria-hidden="true"></i></button>
                                                   </div>
                                               </div>                                             
                                              
                                               <div class="row mt-2">
                                                   <%--<textarea id="richTextField" rows="4" cols="50" style="width:592px;height:258px"></textarea>--%>
                                                  <%--<iframe name="richTextField" style="width:96%;height:400px" title="abc"/>--%>
                                                   <iframe name="richTextField" style="width:96%;height:400px" title="abc"></iframe>
                                               </div>
                                               <hr />
                                               <div class="row">

                                               </div>
                                           </div>                                           
                                          
                                               <%-- paragraph of generated Box End --%>
                                        </div>
                                       
                                   </div>
                                   <%-- Generated Result Right Side end--%>
                               </div>
                             
                               <%-- Footer Dashboard --%>
                               <%-- Footer Design By Kamalakantadas row navbar navbar-expand-lg navbar-dark bg-dark--%>
                               <div class="row" style="border-top: 1px solid #ccc;z-index:999">
                                       <footerclass="footer clearfix" style="position: sticky; bottom: 0;text-align:center;width: 100%;height: 80px;background:#f2f2f2;">
                                           <div class="row navbar py-3 full-width">
                                               <div class="col-md-6">
                                                   <span class="footer-copyright-text">@ 2023 Socius IGB Pvt Ltd, All right reserved</span>
                                               </div>
                                               <div class="col-md-6">
                                                   <!-- Facebook -->
                                                   <a class="btn" style="" href="#!" role="button"></a>
                                                   <!-- Twitter -->
                                                   <a class="btn btn-primary" style="background-color: #55acee;" href="#!" role="button"><i class="fab fa-twitter"></i></a>

                                                   <!-- Google -->
                                                   <a class="btn btn-primary" style="background-color: #dd4b39;" href="#!" role="button"><i class="fab fa-google"></i></a>

                                                   <!-- Instagram -->
                                                   <a class="btn btn-primary" style="background-color: #ac2bac;" href="#!" role="button"><i class="fab fa-instagram"></i></a>

                                                   <!-- Linkedin -->
                                                   <a class="btn btn-primary" style="background-color: #0082ca;" href="#!" role="button"><i class="fab fa-linkedin-in"></i></a>

                                                   <!-- Pinterest -->
                                                   <a class="btn btn-primary" style="background-color: #c61118;" href="#!" role="button"><i class="fab fa-pinterest"></i></a>


                                                   <!-- Github -->
                                                   <a class="btn btn-primary" style="background-color: #333333;" href="#!" role="button"><i class="fab fa-github"></i></a>

                                               </div>
                                           </div>
                                       </footerclass>
                               </div>
                             
                           </div>
                          
                       </div>                                      
                   </div>
               </div>
           </div>           
        </div>
    </form>
</body>
</html>