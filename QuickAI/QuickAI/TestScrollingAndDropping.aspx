<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TestScrollingAndDropping.aspx.cs" Inherits="QuickAI.TestScrollingAndDropping" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Scrolling</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="Scripts/Testing.js"></script>  
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <select id="selectBtn">
                <option value="">Select</option>
                <option value="First">First</option>
                <option value="Second">Second</option>
                <option value="Third">Third</option>
                <option value="Fourth">Fourth</option>
                <option value="Fifth">Fifth</option>
            </select>
            <div class="row" id="content">
                <div class="first row d1">
                    <h1>First</h1>
                    <p>
                        A Web API or Web Service API is an application processing interface between a web server and web browser. All web services are APIs but not all APIs are web services. REST API is a special type of Web API that uses the standard architectural style explained above.
                    </p>
                </div>
                <div class="second row d2">
                    <h1>Second</h1>
                    <p>An API, or application programming interface, is a set of defined rules that enable different applications to communicate with each other. It acts as an intermediary layer that processes data transfers between systems, letting companies open their application data and functionality to external third-party developers, business partners, and internal departments within their companies.

The definitions and protocols within an API help businesses connect the many different applications they use in day-to-day operations, which saves employees time and breaks down silos that hinder collaboration and innovation. For developers, API documentation provides the interface for communication between applications, simplifying application integration.</p>
                </div>
                <div class="Third row d3">
                    <h1>Third</h1>
                    <p>A simple way to understand how APIs work is to look at a common example—third-party payment processing. When a user purchases a product on an ecommerce site, they may be prompted to “Pay with Paypal” or another type of third-party system. This function relies on APIs to make the connection.</p>
                </div>
                <div class="fourth row d4">
                    <h1>Fourth</h1>
                    <p>When the buyer clicks the payment button, an API calls to retrieve information—also known as a request. This request is processed from an application to the web server via the API’s Uniform Resource Identifier (URI) and includes a request verb, headers, and sometimes, a request body.</p>
                </div>
                <div class="fifth row d5">
                    <h1>Fifth</h1>
                    <p>Improved collaboration. The average enterprise uses almost 1,200 cloud applications (link resides outside IBM.com), many of which are disconnected. APIs enable integration so that these platforms and apps can seamlessly communicate with one another. Through this integration, companies can automate workflows and improve workplace collaboration. Without APIs, many enterprises would lack connectivity, causing information silos that compromise productivity and performance.</p>
                </div>
                <div>
                    <p>Data monetization. Many companies choose to offer APIs for free, at least initially, so that they can build an audience of developers around their brand and forge relationships with potential business partners. If the API grants access to valuable digital assets, the business monetize it by selling access. This is referred to as the API economy. When AccuWeather (link resides outside ibm.com) launched its self-service developer portal to sell a wide range of API packages, it took just 10 months to attract 24,000 developers, selling 11,000 API keys and building a thriving community in the process.

System security. APIs separate the requesting application from the infrastructure of the responding service, and offer layers of security between the two as they communicate. For example, API calls typically require authentication credentials; HTTP headers, cookies or query strings can provide additional security during data exchange and an API gateway can control access to further minimize security threats.

End-user security and privacy. Just as APIs provide added protection within a network, they can also provide another layer of protection for personal users. When a website requests a user’s location, which is provided via a location API, the user can then decide whether to allow or deny this request. Many web browsers and mobile operating systems, like iOS, have permission structures built-in when APIs request access to applications and their data. When the app must access files through an API, file systems such as windows, Mac and Linux use permissions for that access.

APIs in action: common examples
Because APIs allow companies to open access to their resources while maintaining security and control, they have become a valuable aspect of modern business and personal applications. Here are some popular examples of API uses that users encounter almost every day:

Universal logins: A popular API example is the function that enables people to log in to websites by using their Facebook, Twitter, or Google profile login details. This convenient feature allows any website to leverage an API from one of the more popular services for quick authentication, saving them the time and hassle of setting up a new profile for every web application or new membership.
 

Internet of Things (IoT): These “smart devices” offer added functionality, such as internet-enabled touchscreens and data collection, through APIs. For example, a smart fridge can connect to recipe applications or take and send notes to mobile phones via text message. Internal cameras connect to various applications so that users can see the contents of the refrigerator from anywhere.
 

Travel booking comparisons: Travel booking sites aggregate thousands of flights, showcasing the cheapest options for every date and destination. This service is made possible through APIs that provide application users with access to the latest information about availability from hotels and airlines, either via a web browser or the travel booking company’s own application. With an autonomous exchange of data and requests, APIs dramatically reduce the time and effort involved in checking for available flights or accommodation.
 

Mapping apps: In addition to the core APIs that display static or interactive maps, these apps use other APIs and features to provide users with directions, speed limits, points of interest, traffic warnings and more.users communicate with an API when plotting travel routes or tracking items on the move, such as a delivery vehicle.
 

Twitter: Each Tweet contains descriptive core attributes, including an author, a unique ID, a message, a timestamp when it was posted, and geolocation metadata. Twitter makes the core attributes of public Tweets and replies available to developers and allows them to post Tweets on other webpages via the company's API.
 

SaaS applications: APIs are an integral part of the growth in software-as-a-service (SaaS) products. Platforms like CRMs (customer relationship management tools) often include a number of built-in APIs that let companies integrate with applications they already use, such as messaging, social media, and email apps. This drastically reduces time spent switching between applications for sales and marketing tasks. It also helps reduce or prevent data silos that may exists between departments using different applications.</p>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
