<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="xss.aspx.cs" Inherits="MinorProject.xss" ValidateRequest="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <title>Log In</title>
    <meta name="description" content="" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="robots" content="all,follow" />
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:300,400,700">
    <link rel="stylesheet" href="css/style.default.css">
    <link rel="stylesheet" href="css/custom.css">
    <link rel="shortcut icon" href="img/favicon.ico">
    <script src="https://use.fontawesome.com/99347ac47f.js"></script>
    <link rel="stylesheet" href="https://file.myfontastic.com/da58YPMQ7U5HY8Rb6UxkNf/icons.css" />
</head>
<body>
    <form id="form1" runat="server">
        <header class="header">
            <nav class="navbar">
                <div class="container-fluid">
                    <div class="navbar-holder d-flex align-items-center justify-content-between">
                        <div class="navbar-header">
                            <a href="./" class="navbar-brand">
                                <div class="brand-text brand-big hidden-lg-down"><span>Minor </span><strong>Project</strong></div>
                                <div class="brand-text brand-small"><strong>MP</strong></div>
                            </a>
                            <a id="toggle-btn" href="#" class="menu-btn active"><span></span><span></span><span></span></a>
                        </div>
                    </div>
                </div>
            </nav>
        </header>
        <div class="page-content d-flex align-items-stretch">
            <nav class="side-navbar">
                <div class="sidebar-header d-flex align-items-center">
                    <!--<div class="avatar"><img src="img/avatar-1.jpg" alt="..." class="img-fluid rounded-circle"></div>-->
                    <div class="title">
                        <h1 class="h4">Ethical Hacking</h1>
                        <p>Let's start</p>
                    </div>
                </div>
                <span class="heading">Basic Attacks</span>
                <ul class="list-unstyled">
                    <li class="active"><a href="./"><i class="icon-home"></i>Home</a></li>
                    <li><a href="sqlinjection.html"><i class="icon-interface-windows"></i>Sql Injection</a></li>
                    <li><a href="phising.html"><i class="fa fa-bar-chart"></i>Phising Attack </a></li>
                    <li><a href="ddos.html"><i class="icon-padnote"></i>DoS/DDoS Attack </a></li>
                    <li>
                        <a href="#dashvariants" aria-expanded="false" data-toggle="collapse"><i class="icon-interface-windows"></i>Penetration Testing</a>
                        <ul id="dashvariants" class="collapse list-unstyled">
                            <li><a href="pentesting.html">0) Black Box</a></li>
                            <li><a href="pentesting.html">1) White Box</a></li>
                            <li><a href="pentesting.html">2) Grey Box</a></li>
                        </ul>
                    </li>
                    <li><a href="xss.html"><i class="icon-grid"></i>Cross Side Scripting (XSS) </a></li>
                </ul>
                <span class="heading">Extras</span>
                <ul class="list-unstyled">
                    <li><a href="#"><i class="icon-flask"></i>References</a></li>
                    <li><a href="#"><i class="icon-screen"></i>Project Report</a></li>
                </ul>
            </nav>
            <div class="content-inner">
                <div class="container" style="margin-top: 15px">
                    <div class="page login-page">
                        <div class="container d-flex align-items-center">
                            <div class="form-holder has-shadow">
                                <div class="row">
                                    <div class="col-lg-12">
                                        <div style="text-align: center">
                                            <button class="btn btn-primary" type="submit">XSS Implementation</button>
                                        </div>
                                        <br />
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-3 bg-lightblue">
                                    </div>
                                    <div class="col-lg-6 bg-white">
                                        <div class="form d-flex align-items-center">
                                            <div class="content">
                                                <div class="form-group">
                                                    <asp:TextBox ID="txtemail" placeholder="Enter a Message" TextMode="MultiLine" Columns="55" Rows="6" runat="server" required ValidationGroup="signup"></asp:TextBox>
                                                </div>
                                                <asp:Button ID="btnsave" runat="server" ValidationGroup="signup" Text="Send" class="btn btn-primary" OnClick="btnsave_Click" /><br />
                                                <br />
                                                <asp:Label ID="lblerror" runat="server" Text=""></asp:Label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-3 bg-lightblue">
                                    </div>
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
