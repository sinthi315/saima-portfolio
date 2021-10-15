<%@ Page Language="C#" AutoEventWireup="true" CodeFile="mail.aspx.cs" Inherits="mail" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Portfolio_Saima</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="description" content="My Portfolio" />
    <meta name="keywords" content="SS, portfolio, html5, sass, jquery" />
    <meta name="author" content="Saima Sultana" />
    <link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css" />
    <link rel="stylesheet" href="assets/css/main.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div style="position: center">
    <script type="text/javascript">
        $(function () {
            debugger;
            $.ajax({
                type: 'POST',
                url: 'mail.aspx.cs',
                data: "{'args':'test'}",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (msg) {
                    alert("Your message has been succesfully sent."); 
                }
            });
        });
        </script>
    </div>
    </form>
</body>
</html>
