<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="MinorProject.signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Home</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="robots" content="all,follow">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/css?family=Work+Sans" rel="stylesheet">
    <link rel="stylesheet" href="css/style.default.css" id="theme-stylesheet">
    <link rel="stylesheet" href="css/custom.css">
    <link rel="shortcut icon" href="img/favicon.ico">
    <script src="https://use.fontawesome.com/99347ac47f.js"></script>
    <link rel="stylesheet" href="https://file.myfontastic.com/da58YPMQ7U5HY8Rb6UxkNf/icons.css">
    <link href="css/AdminLTE.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <header class="header">
            <nav class="navbar" style="background: #1a2226">
                <div class="container-fluid">
                    <div class="navbar-holder d-flex align-items-center justify-content-between">
                        <div class="navbar-header">
                            <a href="./" class="navbar-brand">
                                <div class="brand-text brand-big hidden-lg-down"><span>Minor </span><strong>Project</strong></div>
                                <div class="brand-text brand-small"><strong>MP</strong></div>
                            </a>
                            <a id="toggle-btn" href="#" class="menu-btn active"><span></span><span></span><span></span></a>
                        </div>
                        <ul class="nav-menu list-unstyled d-flex flex-md-row align-items-md-center">
                        </ul>
                    </div>
                </div>
            </nav>
        </header>
        <div class="page-content d-flex align-items-stretch">
            <nav class="side-navbar fixed-left" style="background: #1a2226; color: #fff">
                <div class="sidebar-header d-flex align-items-center">
                    <div class="title">
                        <h1 class="h5" style="color: #fff">Web Application Security</h1>
                        <p>Let's start</p>
                    </div>
                </div>
                <span class="heading">Basic Attacks</span>
                <ul class="list-unstyled">
                    <li><a href="./"><i class="icon-home"></i>Home</a></li>
                    <li class="active"><a href="sqlinjection.html"><i class="icon-interface-windows"></i>Sql Injection</a></li>
                    <li><a href="phising.html"><i class="fa fa-bar-chart"></i>Phising Attack </a></li>
                    <li><a href="ddos.html"><i class="icon-padnote"></i>DoS/DDoS Attack </a></li>
                    <li><a href="pentesting.html"><i class="icon-padnote"></i>Penetration Testing </a></li>
                    <li><a href="xss.html"><i class="icon-grid"></i>Cross Side Scripting (XSS) </a></li>
                </ul>
                <span class="heading">Extras</span>
                <ul class="list-unstyled">
                    <li><a href="#"><i class="icon-flask"></i>References</a></li>
                    <li><a href="#"><i class="icon-screen"></i>Project Report</a></li>
                </ul>
            </nav>
             <div class="content-inner" style="background: #1a2226;">
                <div class="container" style="margin-top: 15px; max-height: 575px; overflow: auto;">
                    <div class="page login-page">
                        <div class="container d-flex align-items-center">
                            <div class="form-holder has-shadow">
                                <div class="row">
                                    <div class="col-lg-12">
                                        <div style="text-align: center">
                                      <br />
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
                                                    <asp:TextBox ID="txtemail" autofocus type="email" placeholder="Email" class="input-material" runat="server" required ValidationGroup="signup"></asp:TextBox>
                                                </div>
                                                <div class="form-group">
                                                    <asp:TextBox ID="txtpassword" type="password" placeholder="Password" class="input-material" runat="server" required ValidationGroup="signup"></asp:TextBox>
                                                </div>
                                                <div class="form-group">
                                                    <asp:TextBox ID="txtconfirm" type="password" placeholder="Confirm Password" class="input-material" runat="server" required ValidationGroup="signup"></asp:TextBox>
                                                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="txtconfirm" ForeColor="Red" CssClass="ValidationError" ValidationGroup="signup" ControlToCompare="txtpassword" ErrorMessage="Password should match" ToolTip="Password must be the same" />
                                                </div>
                                                <asp:Button ID="btnsave" runat="server" ValidationGroup="signup" Text="Register" class="btn btn-success" OnClick="btnsave_Click" /><br />
                                                <br />
                                                <small>Already have an account ? </small>&nbsp;<a href="login.aspx" class="signup">Login</a>
                                                <br />
                                                <asp:Label ID="lblerror" runat="server" Text="" ForeColor="Red"></asp:Label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-3 bg-lightblue">
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-12">
                                                                             
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
