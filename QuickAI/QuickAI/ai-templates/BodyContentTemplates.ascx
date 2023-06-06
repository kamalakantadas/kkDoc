<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="BodyContentTemplates.ascx.cs" Inherits="QuickAI.ai_templates.BodyContentTemplates" %>
<body id="templatesBody">
    <form id="TemplatesForm" runat="server">
        <div id="trform">
            <div id="dheader">
                <%-- testimonial header --%>
                <nav class="row navbar navbar-expand-lg navbar-light fixed-top" id="headerbar" style="box-shadow: 2px 2px 5px grey; height: 90px; border-style: ridge; z-index: 999; background-color: white;">
                    <div class="col-lg-3 col-md-4 col-sm-4" style="width: 24.99%">
                        <a class="navbar-brand" href="../index.aspx" style="margin-bottom: 50px; overflow: hidden;">
                            <img src="../images/1149945428.png" style="position: fixed; max-width: 100%; margin-bottom: 30px; padding-left: 35px; padding-right: 35px; overflow: hidden;" />
                        </a>
                    </div>
                    <div class="col-lg-7 col-md-2" style="width: 58.31%; overflow: hidden;">
                        <a href="#" class="sandwich-link" data-toggle="collapse" <%--data-target=".leftsidebar"--%> id="btntoggle">
                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentcolor" class="bi bi-list" <%--viewbox="0 0 16 16"--%>>
                                <path fill-rule="evenodd" d="m2.5 12a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1h3a.5.5 0 0 1-.5-.5zm0-4a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1h3a.5.5 0 0 1-.5-.5zm0-4a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1h3a.5.5 0 0 1-.5-.5z" />
                            </svg>
                        </a>
                    </div>
                    <div class="col-lg-1 col-md-3 col-sm-4" style="width: 8.33%;">
                        <%-- user drop down button --%>
                        <div class="dropdown show">
                            <a class="btn btn-secondary dropdown-toggle" href="#" role="button" id="userdropdownlist" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <asp:image runat="server" id="userimage" src="../Images/Image%20ICON.png" style="height: 30px" onmouseover="viewtext()" onmouseout="hidetext()" alt="" class="hover-text" />
                                <asp:textbox id="viewimage" style="display: none; width: 100px;" runat="server" value=""></asp:textbox>
                            </a>
                            <div class="dropdown-menu" aria-labelledby="userdropdownlist">
                                <a class="dropdown-item" href="../dashboard.aspx">dashboard</a>
                                <a class="dropdown-item" href="ai-templates.aspx">templates</a>
                                <a class="dropdown-item" href="../ai-images.aspx">ai images</a>
                                <a class="dropdown-item" href="../ai-chat.aspx">ai chat</a>
                                <a class="dropdown-item" href="../speechtotext.aspx">speech to text</a>
                                <a class="dropdown-item" href="../ai-code.aspx">ai code</a>
                                <a class="dropdown-item" href="../all-documents.aspx">all documents</a>
                                <a class="dropdown-item" href="../membership/membership.aspx">membership</a>
                                <a class="dropdown-item" href="../accountsetting.aspx">account setting</a>
                                <asp:linkbutton runat="server" onclick="logout"><i class="icon-material-outline-power-settings-new"></i><div>logout</div></asp:linkbutton>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-1 col-md-3 col-sm-4" style="width: 8.33%;">
                        <%-- header language selection --%>
                        <div class="dropdown">
                            <asp:button runat="server" class="btn btn-secondary btn-primary btn-lg dropdown-toggle" type="button" id="dropdownmenu2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"
                                text="en" />
                            <div class="dropdown-menu" aria-labelledby="lang">
                                <asp:button runat="server" class="dropdown-item" type="button" text="english" />
                                <asp:button runat="server" class="dropdown-item" type="button" text="hindi" />
                                <asp:button runat="server" class="dropdown-item" type="button" text="odia" />
                                <asp:button runat="server" class="dropdown-item" type="button" text="tamil" />
                                <asp:button runat="server" class="dropdown-item" type="button" text="tamil" />
                                <asp:button runat="server" class="dropdown-item" type="button" text="tamil" />
                                <asp:button runat="server" class="dropdown-item" type="button" text="tamil" />
                                <asp:button runat="server" class="dropdown-item" type="button" text="tamil" />
                                <asp:button runat="server" class="dropdown-item" type="button" text="tamil" />
                                <asp:button runat="server" class="dropdown-item" type="button" text="tamil" />
                                <asp:button runat="server" class="dropdown-item" type="button" text="tamil" />
                                <asp:button runat="server" class="dropdown-item" type="button" text="tamil" />
                                <asp:button runat="server" class="dropdown-item" type="button" text="tamil" />
                                <asp:button runat="server" class="dropdown-item" type="button" text="tamil" />
                            </div>
                        </div>
                    </div>
                </nav>
            </div>
        </div>
        <%-- body of testimonialsreivew --%>
        <div id="testimonialsbody" style="margin-top:70px">
            <div class="container-fluid">
                <div class="row">
                    <%-- left side bar --%>
                    <div class="col-lg-3 scrollable" id="sidebar">
                        <!-- left side lists -->
                        <%-- my account --%>
                        <ul class="">
                            <li>
                                <a href="../dashboard.aspx">
                                    <i class="icon-feather-grid"></i>
                                    <div>dashboard</div>
                                </a>
                            </li>
                            <li>
                                <div class="dropdown">
                                    <button class="btn btn-secondary dropdown-toggle" type="button" id="mydocdrop" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        <svg xmlns="http://www.w3.org/2000/svg" <%--viewbox="0 0 384 512"--%> style="height: 15px; width: 15px;">
                                            <!--! font awesome pro 6.4.0 by @fontawesome - https://fontawesome.com license - https://fontawesome.com/license (commercial license) copyright 2023 fonticons, inc. -->
                                            <path d="m0 64c0 28.7 28.7 0 64 0h224v128c0 17.7 14.3 32 32 32h384v448c0 35.3-28.7 64-64 64h64c-35.3 0-64-28.7-64-64v64zm384 64h256v0l384 128z" />
                                        </svg>
                                        my documents

                                    </button>
                                    <div class="dropdown-menu" aria-labelledby="mydocdrop">
                                        <a class="dropdown-item" href="../all-documents.aspx">all documents</a>
                                        <a class="dropdown-item" href="../all-images.aspx">all ai images</a>
                                    </div>
                                </div>                                                            
                            </li>
                        </ul>
                        <%-- organize and manage --%>
                        <ul>
                            <li>organize and manage</li>
                            <li>
                                <a href="ai-templates.aspx">
                                    <i class="icon-feather-layers"></i>
                                    <div>templates</div>
                                </a>
                            </li>
                            <li>
                                <a href="../ai-images.aspx">
                                    <i class="icon-feather-image"></i>
                                    <div>ai images</div>
                                </a>
                            </li>
                            <li>
                                <a href="../ai-chat.aspx">
                                    <i class="icon-feather-message-circle"></i>
                                    <div>ai chat</div>
                                </a>
                            </li>
                            <li>
                                <a href="../speechtotext.aspx">
                                    <i class="icon-feather-headphones"></i>
                                    <div>speech to text</div>
                                </a>
                            </li>
                            <li>
                                <a href="../ai-chat.aspx">
                                    <i class="icon-feather-code"></i>
                                    <div>ai code</div>
                                </a>
                            </li>
                        </ul>
                        <%-- account --%>
                        <ul style="padding-bottom: 50px">
                            <li>account</li>
                            <li class="">
                                <div class="dropdown show" style="">
                                    <a class="btn btn-secondary dropdown-toggle" href="#" role="button" style="height: 40px;" id="dropdownmenulink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">affiliate program
                                    </a>

                                    <div class="dropdown-menu" aria-labelledby="dropdownmenulink">
                                        <a class="dropdown-item" href="../affiliate-program.aspx">affiliate program</a>
                                        <a class="dropdown-item" href="../withdrawals.aspx">withdrawals</a>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <a href="../membership/membership.aspx">
                                    <i class="icon-feather-gift"></i>
                                    <div>membership</div>
                                </a>
                            </li>
                            <li>
                                <a href="../transaction.aspx">
                                    <i class="icon-feather-file-text"></i>
                                    <div>transactions</div>
                                </a>

                            </li>
                            <li>
                                <a href="../accountsetting.aspx">
                                    <i class="icon-feather-log-out"></i>
                                    <div>account setting</div>
                                </a>

                            </li>
                            <li>
                                <asp:linkbutton runat="server" onclick="logout">
                                       <i class="icon-material-outline-power-settings-new"></i>
                                       <div>logout</div>
                                </asp:linkbutton>
                            </li>
                        </ul>
                    </div>
                    <%-- right side content--%>
                    <div class="col-lg-9 scrollable" id="content">
                        <div id="rightside">
                            <div class="row">
                                <%-- left side of right side --%>
                                <div class="col-md-6">
                                    <p runat="server" id="formMainHeader">faq answers/reviews</p>
                                    <div style="border-radius: 20px; height: 40px; width: 180px; background: grey; padding: 7px;">
                                        0/100 Images Used
                                    </div>
                                </div>
                                <%-- right side of right side --%>
                                <div class="col-md-6">
                                    <div id="subpage">
                                        <ul style="display: inline-flex;">
                                            <li><a href="../index.aspx">home</a></li>
                                            <li><a href="ai-templates.aspx">templates</a></li>
                                            <li>
                                                <asp:LinkButton runat="server" ID="pageLink" href="testimonial-reviews.aspx">testimonials/reviews</asp:LinkButton></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>


                            <%-- testimonial body start --%>
                            <%-- right content second row div --%>
                            <div class="row pt-5">
                                <%-- speech to text form left side start--%>
                                <div class="col-lg-4 col-md-12">
                                    <div class="contentLeft">
                                        <div>
                                            <a><i class="fas fa-headset"></i></a>
                                            <h6 runat="server" id="formHeader">faq answers</h6>
                                        </div>
                                        <div style="background-color: cornflowerblue;">
                                            <p runat="server" id="formInnerDiv">add social proof to your website by generating user testimonials.</p>
                                        </div>

                                        <div>
                                            <p>product name:<span id="titlecount"><span style="color: red">*</span></span>/100</p>
                                        </div>
                                        <div>
                                            <input class="form-control" type="text" runat="server" id="title" />
                                        </div>


                                        <div>
                                            <p class="fs-4 ">product description<span style="color: red">*</span>0/100</p>
                                        </div>
                                        <div>
                                            <asp:TextBox class="form-control" ID="adesc" runat="server" Rows="2" TextMode="multiline"></asp:TextBox>
                                        </div>

                                        <%-- language --%>
                                        <div class="mb-1">
                                            <p class="fs-4">language</p>
                                            <div>
                                                <select class="selectpicker">
                                                    <option>english</option>
                                                    <option>chinese</option>
                                                    <option>danish</option>
                                                    <option>dutch</option>
                                                    <option>english</option>
                                                    <option>french</option>
                                                    <option>german</option>
                                                    <option>hebrew</option>
                                                    <option>hindi</option>
                                                    <option>italian</option>
                                                    <option>japanese</option>
                                                    <option>polish</option>
                                                    <option>romanian</option>
                                                    <option>russian</option>
                                                    <option>spanish</option>
                                                    <option>swedish</option>
                                                    <option>turkish</option>
                                                    <option>vietnamese</option>
                                                </select>
                                            </div>
                                        </div>

                                        <%-- quality type --%>
                                        <div>
                                            <p>quality type</p>
                                            <div class="row mb-1">
                                                <select class="selectpicker">
                                                    <option>economy</option>
                                                    <option>average</option>
                                                    <option>good</option>
                                                    <option>premium</option>
                                                </select>
                                            </div>
                                        </div>

                                        <%-- tone of voice --%>
                                        <div>
                                            <p>tones of voice</p>
                                            <div class="row mb-2">
                                                <select class="selectpicker" data-width="fit">
                                                    <option>funny</option>
                                                    <option>casual</option>
                                                    <option>excited</option>
                                                    <option>professional</option>
                                                    <option>witty</option>
                                                    <option>sarcastic</option>
                                                    <option>feminine</option>
                                                    <option>bold</option>
                                                    <option>dramatic</option>
                                                    <option>gumpy</option>
                                                    <option>secretive</option>
                                                </select>
                                            </div>
                                        </div>

                                        <%-- number of result --%>
                                        <div>
                                            <p>number of result</p>
                                            <div class="row">
                                                <select class="selectpicker">
                                                    <option>1</option>
                                                    <option>2</option>
                                                    <option>3</option>
                                                    <option>4</option>
                                                    <option>5</option>
                                                </select>
                                            </div>
                                            <div>
                                                <p class="fs-6 text-lowercase text-muted fw-light">describe the speech from the file to help the ai. (optional)</p>
                                            </div>
                                        </div>
                                        <%-- Button Generate --%>
                                        <div class="pb-1">
                                            <input type="button" class="form-control btn btn-primary" value="generate ->" />
                                        </div>
                                        <%-- Last Line Description --%>
                                        <div>
                                            <div style="background: cornflowerblue;">
                                                <p class="fs-6 text-lowercase fw-light">audio transcription may takes time due to the file size.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <%-- speech to text form left side end --%>
                                <%-- generated result right side start--%>
                                <div class="col-lg-8 col-md-12">
                                    <div class="row generateHeaderBar">
                                        <%-- header of generated result start --%>
                                        <div class="col-1">
                                            <i class="fa fa-align-left" aria-hidden="true"></i>
                                        </div>
                                        <div class="col-6">
                                            <p>Generated Result</p>
                                        </div>
                                        <div class="col-2"></div>
                                        <div class="col-3">
                                            <!--Mouse Hover Event required for all three event//Mouse click also-->
                                            <a href="#"><i class="fa fa-file-word" aria-hidden="true" style="font-size: 40px; color: cornflowerblue;"></i></a>

                                            <a href="#"><i class="fa fa-file" aria-hidden="true" style="font-size: 40px; color: cornflowerblue;"></i></a>

                                            <a href="#"><i class="fa fa-clone" aria-hidden="true" style="font-size: 40px; color: cornflowerblue;"></i></a>
                                        </div>
                                    </div>
                                    <%-- header of generated result end--%>


                                    <%-- paragraph of generated box start --%>

                                    <%-- Printing --%>
                                    <div class="row" style="background:#f2f2f2;  box-shadow: 0px 1px 3px 0px grey;">
                                        <div class="col-10">
                                            <input type="text" class="form-control" />
                                        </div>
                                        <div class="col-2">
                                            <a id="btnPrint">
                                                <i class="fa fa-print" aria-hidden="true"></i>
                                            </a>
                                        </div>
                                    </div>
                                    <%-- Printing end --%>
                                    <div class="row justify-content-md-center mb-4" id="pc" style="min-height: 400px;">
                                        <textarea id="editor"></textarea>
                                    </div>
                                    <%--<button type="submit" class="btn btn-primary">submit</button>--%>
                                </div>
                                <%-- paragraph of generated box end --%>
                            </div>
                            <%-- generated result right side end--%>
                            <hr />
                            <%-- testimonial body end--%>
                            <%-- footer testimonial --%>
                            <%-- footer design by row navbar navbar-expand-lg navbar-dark bg-dark--%>
                            <div class="row footer">

                                <div class="col-md-6">
                                    <span class="footer-copyright-text">@ 2023 socius igb pvt ltd, all right reserved</span>
                                </div>
                                <div class="col-md-6">
                                    <!-- facebook -->
                                    <a class="btn" style="" href="#!" role="button"></a>
                                    <!-- twitter -->
                                    <a class="btn btn-primary" style="background-color: #55acee;" href="#!" role="button"><i class="fab fa-twitter"></i></a>

                                    <!-- google -->
                                    <a class="btn btn-primary" style="background-color: #dd4b39;" href="#!" role="button"><i class="fab fa-google"></i></a>

                                    <!-- instagram -->
                                    <a class="btn btn-primary" style="background-color: #ac2bac;" href="#!" role="button"><i class="fab fa-instagram"></i></a>

                                    <!-- linkedin -->
                                    <a class="btn btn-primary" style="background-color: #0082ca;" href="#!" role="button"><i class="fab fa-linkedin-in"></i></a>

                                    <!-- pinterest -->
                                    <a class="btn btn-primary" style="background-color: #c61118;" href="#!" role="button"><i class="fab fa-pinterest"></i></a>


                                    <!-- github -->
                                    <a class="btn btn-primary" style="background-color: #333333;" href="#!" role="button"><i class="fab fa-github"></i></a>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>           
    </form>
</body>