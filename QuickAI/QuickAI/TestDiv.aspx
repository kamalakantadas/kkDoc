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
        <input type="button" id="btnTest" value="checkButton" />
        <%--<div class="container">
            <div id="subMain" style="min-height:400px;">
            </div>
            <input type="button" id="TestButton" value="Enter"/>
        </div>--%>
        <%-- AiChatBox --%>
        <div class="chatBox">
            <div id="chatBox" style="min-height:300px;background:#f2f2f2">

            </div>
            <div class="row" style="width:100%;height:50px;background:white;box-shadow:1px 1px 1px 2px grey;display:flex">
                <div class="col-lg-10">
                    <input type="text" id="txtVal" value="textboxxxx" style="width:800px;height:48px"/>
                </div>
                <div class="col-lg-2">
                     <input type="button" id="EnterButton" name="Enter" value="Enter" style="height:48px"/>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
