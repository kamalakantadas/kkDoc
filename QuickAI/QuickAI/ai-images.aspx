<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ai-images.aspx.cs" Inherits="QuickAI.ai_images" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">  
    <meta charset="utf-8" name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Al Images</title>  
    <link href="IndexPage.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" />
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
    <script src="Scripts/ai-images.js"></script>
</head>
<body>
    <form id="aiImages" runat="server">
        <%-- Header Content of All Documents --%>
        <div class="headerBar">
            <%-- Header starts here --%>
            <div>
                <a class="navbar-brand" href="Index.aspx">
                    <img src="Images/1149945428.png" id="websiteLogo" />
                </a>
            </div>
            <div>
                <a href="#" class="sandwich-link" data-toggle="collapse" id="btnToggle">
                    <i class="fa fa-bars" aria-hidden="true"></i>
                </a>
            </div>
            <div>
                <asp:TextBox ID="viewImage" Style="display: none;" runat="server" value=""></asp:TextBox>
            </div>
            <div>
                <%-- User Drop Down Button --%>
                <div class="dropdown show">
                    <a class="btn btn-secondary dropdown-toggle" href="#" role="button" id="userDropDownList" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <asp:Image runat="server" ID="userImage" src="Images/Image%20ICON.png" Style="height: 30px;" onmouseover="viewText()" onmouseout="hideText()" alt="" class="hover-text" />
                    </a>
                    <div class="dropdown-menu" aria-labelledby="userDropDownList">
                        <a class="dropdown-item" href="dashboard.aspx">Dashboard</a>
                        <a class="dropdown-item" href="ai-templates/Ai-templates.aspx">Templates</a>
                        <a class="dropdown-item" href="ai-images.aspx">AI Images</a>
                        <a class="dropdown-item" href="ai-chat.aspx">AI Chat</a>
                        <a class="dropdown-item" href="speechToText.aspx">Speech to Text</a>
                        <a class="dropdown-item" href="ai-code.aspx">AI Code</a>
                        <a class="dropdown-item" href="all-documents.aspx">All Documents</a>
                        <a class="dropdown-item" href="membership/membership.aspx">Membership</a>
                        <a class="dropdown-item" href="accountSetting.aspx">Account Setting</a>
                        <asp:LinkButton class="dropdown-item" OnClick="logout" runat="server">Logout</asp:LinkButton>
                    </div>
                </div>
            </div>
            <div>
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
            <%-- Header End Here --%>
        </div>
            <div id="aIBody" style="padding-top:65px">
                <div class="row">
                    <!-- Left Side Lists -->
                    <div class="col-lg-3 scrollable" id="sidebar">
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
                                <a href="ai-images.aspx">
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
                                <a href="speechToText.aspx">
                                    <i class="icon-feather-headphones"></i>
                                    <div>Speech to Text</div>
                                </a>
                            </li>
                            <li>
                                <a href="ai-code.aspx">
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
                                        <a class="dropdown-item" href="affiliate-program.aspx">Affiliate Program</a>
                                        <a class="dropdown-item" href="withdrawals.aspx">Withdrawals</a>
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
                            <li><a href="accountSetting.aspx"><i class="icon-feather-log-out"></i>
                                <div>Account Setting</div>
                            </a>
                            </li>
                            <li>
                                <%--<a href="#">
                                       <i class="icon-material-outline-power-settings-new"></i>
                                       <div>Logout</div>
                                   </a>--%>
                                <asp:LinkButton class="dropdown-item" OnClick="logout" runat="server">Logout</asp:LinkButton>

                            </li>
                        </ul>
                    </div>
                    <%-- Right Side Lists --%>
                    <div class="col-lg-9 scrollable" id="content">
                        <div class="row" id="rightSideAiImages">
                            <div class="col-md-8">
                                <div class="form-group" style="display: flex">
                                    <h3>AI Images</h3>
                                    <input type="button" class="btn btn-secondary form-control" style="border-radius: 20px; height: 40px; width: 200px;" value="0/100 Images Used" />
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div id="SubPage">
                                    <ul style="display: inline-flex;">
                                        <li><a href="index.aspx">Home</a></li>
                                        <li><a href="ai-images.aspx">AI Images</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col-lg-12 mt-4">
                                <div style="display:flex">
                                    <p>Start with a detailed description.</p>
                                    <a href="ai-images.aspx">Try an Example</a>
                                </div>
                            </div>
                            <div class="col-lg-12">
                                <div style="height: 60px; box-shadow: 1px 1px; border-radius: 25px; background: white;display:flex">
                                    <div class="input-group">
                                        <input type="text" class="form-control" id="imageGenBox" title="" style="height: 60px; border: none; border-radius: 25px; background: white;" placeholder="A cactus sitting next to onion rings in a farm, 1960s Cartoon" />
                                    </div>
                                    <div class="input-group-append" style="padding:0px 10px 10px">
                                        <button class="btn btn-primary" type="button" style="border-radius: 25px; align-self: center; height: 42px; margin-top: 10px">Generate</button>
                                    </div>
                                </div>
                                
                            </div>
                          
                        </div>

                        <%-- Hide details of Image start--%>

                        <div class="row mt-2" id="hideDet" style="display: none">
                            <%-- Image Title box --%>
                            <div class="col-lg-3">
                                <label>Image Title</label>
                                <input type="text" placeholder="New Image" id="imageT" class="form-control" />
                            </div>
                            <div class="col-lg-3">
                                <div>
                                    <label>Art style</label>
                                </div>
                                <div>
                                    <select id="artS" class="form-control" title="Art style">
                                        <option value="" selected="selected">None</option>
                                        <option value="3d_render">3D render</option>
                                        <option value="pixel">Pixel</option>
                                        <option value="sticker">Sticker</option>
                                        <option value="realistic">Realistic</option>
                                        <option value="isometric">Isometric</option>
                                        <option value="cyberpunk">Cyberpunk</option>
                                        <option value="line">Line art</option>
                                        <option value="pencil">Pencil drawing</option>
                                        <option value="ballpoint_pen">Ballpoint pen drawing</option>
                                        <option value="watercolor">Watercolor</option>
                                        <option value="origami">Origami</option>
                                        <option value="cartoon">Cartoon</option>
                                        <option value="retro">Retro</option>
                                        <option value="anime">Anime</option>
                                        <option value="renaissance">Renaissance</option>
                                        <option value="clay">Clay</option>
                                        <option value="vaporwave">Vaporwave</option>
                                        <option value="steampunk">Steampunk</option>
                                        <option value="glitchcore">Glitchcore</option>
                                        <option value="bauhaus">Bauhaus</option>
                                        <option value="vector">Vector</option>
                                        <option value="low_poly">Low poly</option>
                                        <option value="ukiyo_e">Ukiyo-e</option>
                                        <option value="cubism">Cubism</option>
                                        <option value="modern">Modern</option>
                                        <option value="pop">Pop</option>
                                        <option value="contemporary">Contemporary</option>
                                        <option value="impressionism">Impressionism</option>
                                        <option value="pointillism">Pointillism</option>
                                        <option value="minimalism">Minimalism</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <div>
                                    <label>Lighting style</label>
                                </div>

                                <div>
                                    <select id="lightS" class="form-control" title="Lighting style">
                                        <option value="" selected="selected">None</option>
                                        <option value="warm">Warm</option>
                                        <option value="cold">Cold</option>
                                        <option value="golden_hour">Golden Hour</option>
                                        <option value="blue_hour">Blue Hour</option>
                                        <option value="ambient">Ambient</option>
                                        <option value="studio">Studio</option>
                                        <option value="neon">Neon</option>
                                        <option value="dramatic">Dramatic</option>
                                        <option value="cinematic">Cinematic</option>
                                        <option value="natural">Natural</option>
                                        <option value="foggy">Foggy</option>
                                        <option value="backlight">Backlight</option>
                                        <option value="hard">Hard</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <label>Mood</label>                                
                                <select id="mood" class="form-control" title="Mood">
                                    <option value="" selected="selected">None</option>
                                    <option value="aggressive">Aggressive</option>
                                    <option value="angry">Angry</option>
                                    <option value="boring">Boring</option>
                                    <option value="bright">Bright</option>
                                    <option value="calm">Calm</option>
                                    <option value="cheerful">Cheerful</option>
                                    <option value="chilling">Chilling</option>
                                    <option value="colorful">Colorful</option>
                                    <option value="dark">Dark</option>
                                    <option value="neutral">Neutral</option>
                                </select>                                
                            </div>
                            <%-- Image Title box --%>
                            <div class="col-lg-3">
                                <label>Resolution</label>
                                <select id="resolution" class="form-control" title="resolution" style="width: 192px">
                                    <option value="256x256">Small Image (256x256)</option>
                                    <option value="512x512">Medium Image (512x512)</option>
                                    <option value="1024x1024">Large Image (1024x1024)</option>
                                </select>                               
                            </div>
                            <div class="col-lg-3">
                                <label>Number of Images</label>
                                <select id="noOfI" class="form-control" title="Number Of Images" style="width: 192px">
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                    <option value="5">5</option>
                                </select>
                            </div>
                        </div>
                        <div class="advanceSet pt-3 ml-1" style="margin-bottom:100px;">
                            <a href="#" id="adSet">Advanced Setting +</a>
                        </div>
                        <%-- Hide details of Image end--%>

                       

                        <hr />

                        <%-- Footer Dashboard --%>
                        <div class="row footer">
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
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
