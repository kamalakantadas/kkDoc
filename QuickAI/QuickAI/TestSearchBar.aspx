<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TestSearchBar.aspx.cs" Inherits="QuickAI.TestSearchBar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Test SearchBar</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script>
        $(document).ready(function () {
            $("#searchBar").on('input', function () {   
                var searchKeyword = $(this).val().toLowerCase();
                $('.row h4').each(function () {
                    var text = $(this).text().toLowerCase();

                    if (text.includes(searchKeyword)) {
                        $(this).show();
                    } else {
                        $(this).hide();
                    }
                });
            });         
        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <input type="text" id="searchBar"  style="height:30px;"/>
        <div class="row all">
            <div class="row first" style="background:Red">
                <h4>FirstDiv</h4>
            </div>
            <div class="row second" style="background:Blue">
                <h4>SecondDiv</h4>
            </div>
            <div class="row third" style="background:Green">
                <h4>ThirdDiv</h4>
            </div>
            <div class="row fourth" style="background:#f2f2f2">
                <h4>FourthDiv</h4>
            </div>
        </div>
    </form>
</body>
</html>
