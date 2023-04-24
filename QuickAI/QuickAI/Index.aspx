<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="QuickAI.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>My Responsive Page</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</head>
<body>
     <!--Home Page Content-->
    <div class="container-fluid">
        <form runat="server">
            <div id="mainPage">
            <nav class="row navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
                <div class="col-lg-2">
                    <a class="navbar-brand" href="#">
                        <h1>QUICKAI</h1>
                    </a>
                </div>
                <div class="col-lg-7">

                </div>
                <div class="col-lg-1">
                    <asp:Button runat="server" type="button" class="btn btn-primary btn-lg btn-block header-widget" id="joinbutton" Text="JOIN" OnClick="joinbutton_Click" />
                </div>
                <div class="col-lg-1">
                    <div class="col-lg-1">
                        <div class="dropdown">
                            <asp:Button runat="server" class="btn btn-secondary btn-primary btn-lg dropdown-toggle" type="button" id="dropdownMenu2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"
                                Text="Language"/>                            
                            <div class="dropdown-menu" aria-labelledby="Lang">
                                <asp:Button runat="server" class="dropdown-item" type="button" Text="English"/>
                                <asp:Button runat="server" class="dropdown-item" type="button" Text="Hindi"/>
                                <asp:Button runat="server" class="dropdown-item" type="button" Text="Odia"/>
                                <asp:Button runat="server" class="dropdown-item" type="button" Text="Tamil"/>
                                <asp:Button runat="server" class="dropdown-item" type="button" Text="Tamil"/>
                                <asp:Button runat="server" class="dropdown-item" type="button" Text="Tamil"/>
                                <asp:Button runat="server" class="dropdown-item" type="button" Text="Tamil"/>
                                <asp:Button runat="server" class="dropdown-item" type="button" Text="Tamil"/>
                                <asp:Button runat="server" class="dropdown-item" type="button" Text="Tamil"/>
                                <asp:Button runat="server" class="dropdown-item" type="button" Text="Tamil"/>
                                <asp:Button runat="server" class="dropdown-item" type="button" Text="Tamil"/>
                                <asp:Button runat="server" class="dropdown-item" type="button" Text="Tamil"/>
                                <asp:Button runat="server" class="dropdown-item" type="button" Text="Tamil"/>
                                <asp:Button runat="server" class="dropdown-item" type="button" Text="Tamil"/>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-1"></div>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav">
                    </ul>
                </div>
            </nav>
            <nav class="row navbar navbar-expand-lg" style="margin-top:50px">
                <div class="row" style="margin-top:50px">
                    <div class="col-sm-12">
                        <div class="jumbotron text-center" style="margin-left:130px">
                            <img src="@Model.~/Views/home-hero-icon.png" class="img-fluid rounded" alt="Description of image" />
                            <img src="..." class="img-fluid" alt="Responsive image" />
                            <div class="display-4">Best AI Content Writer</div>
                            <h6>Create SEO-optimized and unique content for your blogs, ads, emails, and website 10X faster & save hours of work.</h6>
                            <asp:Button runat="server" id="startedFreeReg" Text="Get Started For Free"  class="button btn btn-primary ripple-effect button-sliding-icon"/>
                            <%--<button class="button btn btn-primary ripple-effect button-sliding-icon" id="startedFreeReg">Get Started For Free</button>--%>
                            <h6> No credit card required</h6>
                        </div>
                    </div>
                </div>


            </nav>
            <nav class="row navbar navbar-expand-lg">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-4 col-md-6 col-sm-12">
                            <h1>Hello, world!</h1>

                            <p>This is a simple hero unit, a simple jumbotron-style component for calling extra attention to featured content or information.</p>
                            <p><a class="btn btn-primary btn-lg" href="#" role="button">Learn more</a></p>
                        </div>
                        <div class="col-lg-4 col-md-6 col-sm-12">
                            <h1>Hello, world!</h1>
                            <p>This is a simple hero unit, a simple jumbotron-style component for calling extra attention to featured content or information.</p>
                            <p><a class="btn btn-primary btn-lg" href="#" role="button">Learn more</a></p>
                        </div>
                        <div class="col-lg-4 col-md-6 col-sm-12">
                            <h1>Hello, world!</h1>
                            <p>This is a simple hero unit, a simple jumbotron-style component for calling extra attention to featured content or information.</p>
                            <p><a class="btn btn-primary btn-lg" href="#" role="button">Learn more</a></p>
                        </div>
                    </div>
                </div>
            </nav>
            <nav class="row navbar navbar-expand-lg">
                <div class="col-lg-3 col-md-3 col-sm-3 text-center">
                    <ul class="list-unstyled">
                        <li> <a href="#"> </a> </li>
                        <li> <a href="#">Payment Center</a></li>
                        <li> <a href="#"> Contact Directory </a></li>
                        <li> <a href="#">Forms</a></li>
                        <li> <a href="#">News and Updates</a></li>
                        <li> <a href="#">FAQs</a></li>
                    </ul>
                </div>

                <div class="col-lg-3 col-md-3 col-sm-3 text-center">

                    <ul class="list-unstyled">
                        <li><a href="#"> Blog </a> </li>
                        <li><a href="#">Accessibility</a> </li>
                        <li><a href="#">Disclaimer</a></li>
                        <li><a href="#">Privacy Policy</a></li>
                        <li><a href="#">FAQs</a></li>
                        <li><a href="#">Webmaster</a></li>
                    </ul>
                </div>

                <div class="col-lg-3 col-md-3 col-sm-3 text-center">
                    <ul class="list-unstyled">
                        <li> <a href="#"> Parks and Recreation </a> </li>
                        <li> <a href="#">Police Department</a> </li>
                        <li> <a href="#"> Fire </a> </li>
                        <li> <a href="#"> Mayor and City Council </a> </li>
                    </ul>
                </div>

                <div class="col-lg-3 col-md-3 col-sm-3 text-center">
                    <ul class="social-network social-circle">
                        <li> <a href="#" class="icoFacebook" title="Facebook"> <i class="fa fa-facebook"> </i> </a> </li>
                        <li> <a href="#" class="icoLinkedin" title="Linkedin"> <i class="fa fa-linkedin"> </i> </a> </li>
                        <li> <a href="#"> <i class="fa fa-youtube" aria-hidden="true"> </i> </a> </li>
                    </ul>
                </div>

            </nav>
            <nav class="row navbar navbar-expand-lg">
            </nav>
            <div class="row">
                <div class="col-md-12 copy">
                    <p class="text-center">  </p>
                </div>
            </div>
        </div>
        </form>        
    </div>    
</body>
</html>
