<?php
 session_start();
	include("./config.php");
?>
<!DOCTYPE html>
<html lang="eng">

<head>
  <!-- Google Tag Manager -->
  <script>
  (function(w, d, s, l, i) {
    w[l] = w[l] || [];
    w[l].push({
      'gtm.start': new Date().getTime(),
      event: 'gtm.js'
    });
    var f = d.getElementsByTagName(s)[0],
      j = d.createElement(s),
      dl = l != 'dataLayer' ? '&l=' + l : '';
    j.async = true;
    j.src =
      'https://www.googletagmanager.com/gtm.js?id=' + i + dl;
    f.parentNode.insertBefore(j, f);
  })(window, document, 'script', 'dataLayer', 'GTM-TNL8QV6');
  </script>
  <!-- End Google Tag Manager -->
  <title>FYNDAH - Real Estate PlatForm</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta charset="utf-8">

  <!-- External CSS libraries -->
  <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
  <link rel="stylesheet" type="text/css" href="css/animate.min.css">
  <link rel="stylesheet" type="text/css" href="css/bootstrap-submenu.css">
  <link rel="stylesheet" type="text/css" href="css/bootstrap-select.min.css">
  <link rel="stylesheet" href="css/leaflet.css" type="text/css">
  <link rel="stylesheet" href="css/map.css" type="text/css">
  <link rel="stylesheet" type="text/css" href="fonts/font-awesome/css/font-awesome.min.css">
  <link rel="stylesheet" type="text/css" href="fonts/flaticon/font/flaticon.css">
  <link rel="stylesheet" type="text/css" href="fonts/linearicons/style.css">
  <link rel="stylesheet" type="text/css" href="css/jquery.mCustomScrollbar.css">
  <link rel="stylesheet" type="text/css" href="css/dropzone.css">
  <link rel="stylesheet" type="text/css" href="css/magnific-popup.css">
  <link rel="stylesheet" type="text/css" href="css/slick.css">
  <link href="https://fonts.googleapis.com/css?family=Open+Sans+Condensed:300" rel="stylesheet">
  <!-- Custom stylesheet -->
  <link rel="stylesheet" type="text/css" href="css/initial.css">
  <link rel="stylesheet" type="text/css" href="css/style.css">
  <link rel="stylesheet" type="text/css" href="css/popup.css">
  <link rel="stylesheet" type="text/css" id="style_sheet" href="css/skins/default.css">

  <!-- Favicon icon -->
  <link rel="shortcut icon" href="../img/logos/logo.png" type="image/x-icon">

  <!-- Google fonts -->
  <link rel="stylesheet" type="text/css"
    href="https://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800%7CPoppins:400,500,700,800,900%7CRoboto:100,300,400,400i,500,700">


  <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
  <link rel="stylesheet" type="text/css" href="css/ie10-viewport-bug-workaround.css">

  <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
  <!--[if lt IE 9]><script type="text/javascript" src="js/ie8-responsive-file-warning.js"></script><![endif]-->
  <script src="js/ie-emulation-modes-warning.js"></script>
  <noscript><img height="1" width="1" style="display:none"
      src="https://www.facebook.com/tr?id=791272828101745&ev=PageView&noscript=1" /></noscript>
  <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
  <!--[if lt IE 9]>
    <script type="text/javascript" src="js/html5shiv.min.js"></script>
    <script type="text/javascript" src="js/respond.min.js"></script>
    <![endif]-->


</head>

<body>
  <!-- Google Tag Manager (noscript) -->
  <noscript><iframe src="https://www.googletagmanager.com/ns.php?id=GTM-TNL8QV6" height="0" width="0"
      style="display:none;visibility:hidden"></iframe></noscript>
  <!-- End Google Tag Manager (noscript) 
  <div class="page_loader"></div>-->

  <!-- Option Panel -->
  <div class="option-panel option-panel-collased">
    <h2>Change Color</h2>
    <div class="color-plate default-plate" data-color="default"></div>
    <div class="color-plate blue-plate" data-color="blue"></div>
    <div class="color-plate yellow-plate" data-color="yellow"></div>
    <div class="color-plate red-plate" data-color="red"></div>
    <div class="color-plate green-light-plate" data-color="green-light"></div>
    <div class="color-plate orange-plate" data-color="orange"></div>
    <div class="color-plate yellow-light-plate" data-color="yellow-light"></div>
    <div class="color-plate green-light-2-plate" data-color="green-light-2"></div>
    <div class="color-plate olive-plate" data-color="olive"></div>
    <div class="color-plate purple-plate" data-color="purple"></div>
    <div class="color-plate blue-light-plate" data-color="blue-light"></div>
    <div class="color-plate brown-plate" data-color="brown"></div>
    <div class="setting-button">
      <i class="fa fa-gear"></i>
    </div>
  </div>
  <!-- /Option Panel -->

  <!-- Top header start -->
  <header class="top-header" id="top">
    <div class="container">
      <div class="row">

        <img src="" alt="Messenger-bottom - Admob Banner Iphone X, HD Png Download@kindpng.com">
      </div>
    </div>
    <div class="container">
      <div class="row">
        <div class="col-7 col-sm-7 col-md-7 col-lg-6">
          <div class="list-inline">
            <a href="tel:+2347065346076" class="n-575"><i class="fa fa-phone"></i>+234-706-534-6076</a>
            <a href="mailto:info@fyndah.com"><i class="fa fa-envelope"></i>info@fyndah.com</a>
          </div>
        </div>
        <div class="col-5 col-sm-5 col-md-5 col-lg-6">

          <ul class="top-social-media pull-right">

            <li>
              <a href="Agent-login.php" class="sign-in"><i class="fa fa-sign-in"></i>Agent Login</a>
            </li>
            <li>
              <a href="pricing.php" class="sign-in"><i class="fa fa-user"></i> Register</a>
            </li>
          </ul>
        </div>
      </div>
    </div>
  </header>
  <!-- Top header end -->

  <!-- Main header start -->
  <header class="main-header  header-shrink ">
    <div class="container">
      <nav class="navbar navbar-expand-lg navbar-light">
        <a href="index.php" class="logo">
          <img src="img/logos/logo.png" alt="logo">
        </a>
        <button class="navbar-toggler" id="drawer" type="button">
          <span class="fa fa-bars"></span>
        </button>
        <div class="navbar-collapse collapse " id="navbar">
          <ul class="navbar-nav ustify-content-start w-100">
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle active" href="index.php" id="navbarDropdownMenuLink"
                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                Home
              </a>

            </li>
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="propertygrid.php" id="navbarDropdownMenuLink2"
                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                Properties
              </a>
              <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">

              </ul>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="howitworks.php" id="navbarDropdownMenuLink6"
                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                How It Works
              </a>
              <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
              </ul>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="about-us.php" id="navbarDropdownMenuLink6"
                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                About
              </a>
              <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
              </ul>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="contact-us.php" id="navbarDropdownMenuLink5"
                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                Contact Us
              </a>
              <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
            </li>

          </ul>
          </li>

          <li class="nav-item submit-property-button">
            <a href="agent-login.php" class="button btn-3">
              Submit Property
            </a>
          </li>
          <li class="nav-item submit-property-button">
            <a href="propertyRequest.php" class="button btn-3">
              Request Property
            </a>
          </li>

          </ul>



        </div>
      </nav>
    </div>
  </header>
  <!-- Main header end -->

  <!-- Sidenav start -->
  <nav id="sidebar" class="nav-sidebar">
    <!-- Close btn-->
    <div id="dismiss">
      <i class="fa fa-close"></i>
    </div>
    <div class="sidebar-inner">
      <div class="sidebar-logo">
        <a href="index.php"> <img src="img/logos/logo.png" alt="sidebarlogo"> </a>
      </div>
      <div class="sidebar-navigation">
        <h3 class="heading">Fyndah PlatForm</h3>
        <ul class="menu-list">
          <li><a href="index.php" class="active pt0">Home <em class="fa fa-chevron-down"></em></a>
          </li>
          <li> <a href="propertygrid.php" class="active pt0">Properties <em class="fa fa-chevron-down"></em></a>
          </li>
          <li><a href="howitworks.php" class="active pt0">How It Works <em class="fa fa-chevron-down"></em></a>
          </li>
          <li><a href="about-us.php" class="active pt0">About <em class="fa fa-chevron-down"></em></a>
          </li>
          <li> <a href="contact-us.php" class="active pt0">Contact Us <em class="fa fa-chevron-down"></em></a>
          </li>
          <li>
            <a href="Agent-login.php">Submit Property</a>
          </li>
          <li>
            <a href="propertyRequest.php">Request Property</a>
          </li>
        </ul>
      </div>
      <div class="get-in-touch">
        <h3 class="heading">Get in Touch</h3>
        <div class="sidebar-contact-info">
          <div class="icon">
            <i class="fa fa-phone"></i>
          </div>
          <div class="body-info">
            <a href="tel:+234-706-534-6076">+234-706-534-6076</a>
          </div>
        </div>
        <div class="sidebar-contact-info">
          <div class="icon">
            <i class="fa fa-envelope"></i>
          </div>
          <div class="body-info">
            <a href="mailto:info@fyndah.com">info@fyndah.com</a>
          </div>
        </div>
        <div class="sidebar-contact-info mb-0">
          <div class="icon">
            <i class="fa fa-fax"></i>
          </div>
          <div class="body-info">
            <a href="tel:+234-706-534-6076">tel:+234-706-534-6076</a>
          </div>
        </div>
      </div>
      <div class="get-social">
        <h3 class="heading">Get Social</h3>
        <a href="#" class="facebook-bg">
          <i class="fa fa-facebook"></i>
        </a>
        <a href="#" class="twitter-bg">
          <i class="fa fa-twitter"></i>
        </a>
        <a href="#" class="google-bg">
          <i class="fa fa-google"></i>
        </a>
        <a href="#" class="linkedin-bg">
          <i class="fa fa-linkedin"></i>
        </a>
      </div>
    </div>
  </nav>
  <!-- Sidenav end -->
