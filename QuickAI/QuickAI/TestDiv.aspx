<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TestDiv.aspx.cs" Inherits="QuickAI.TestDiv" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>TestDiv</title>
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="Scripts/Testing.js"></script>  
</head>
<body>
    <form id="TestDiv" runat="server">
        <div class="container">
            <div id="subMain" style="min-height:400px;">
            </div>
            <input type="button" id="TestButton" value="Enter"/>
        </div>
    </form>
</body>
</html>
