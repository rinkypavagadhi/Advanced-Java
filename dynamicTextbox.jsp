<%-- 
    Document   : dynamicTextbox
    Created on : 1 Feb, 2020, 2:20:38 PM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<head>
  <meta charset="utf-8">
  <title>Rapid Bootstrap Template</title>
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <meta content="" name="keywords">
  <meta content="" name="description">

  <!-- Favicons -->
  <link href="img/favicon.png" rel="icon">
  <link href="img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,500,600,700,700i|Montserrat:300,400,500,600,700" rel="stylesheet">

  <!-- Bootstrap CSS File -->
  <link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Libraries CSS Files -->
  <link href="lib/font-awesome/css/font-awesome.min.css" rel="stylesheet">
  <link href="lib/animate/animate.min.css" rel="stylesheet">
  <link href="lib/ionicons/css/ionicons.min.css" rel="stylesheet">
  <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
  <link href="lib/lightbox/css/lightbox.min.css" rel="stylesheet">

  <!-- Main Stylesheet File -->
  <link href="css/style.css" rel="stylesheet">

  <!-- =======================================================
    Theme Name: Rapid
    Theme URL: https://bootstrapmade.com/rapid-multipurpose-bootstrap-business-template/
    Author: BootstrapMade.com
    License: https://bootstrapmade.com/license/
  ======================================================= -->
</head>

<body>
  <!--==========================
  Header
  ============================-->
  <header id="header">

    <div id="topbar">
      <div class="container">
        <div class="social-links">
          <a href="#" class="twitter"><i class="fa fa-twitter"></i></a>
          <a href="#" class="facebook"><i class="fa fa-facebook"></i></a>
          <a href="#" class="linkedin"><i class="fa fa-linkedin"></i></a>
          <a href="#" class="instagram"><i class="fa fa-instagram"></i></a>
        </div>
      </div>
    </div>

    <div class="container">

      <div class="logo float-left">
        <!-- Uncomment below if you prefer to use an image logo -->
        <h1 class="text-light"><a href="#intro" class="scrollto"><span>Rinky</span></a></h1>
        <!-- <a href="#header" class="scrollto"><img src="img/logo.png" alt="" class="img-fluid"></a> -->
      </div>

      <nav class="main-nav float-right d-none d-lg-block">
        <ul>
          <li class="active"><a href="#intro">Home</a></li>

          <li class="drop-down"><a href="#">Assignment 1</a>
            <ul>
              <li><a href="Login.html">Log in</a></li>
              <li><a href="Signup.html">Sign Up</a></li>
              <li><a href="table1.html">Table Generator</a></li>
              <li><a href="visitor.html">Visitor</a></li>
            </ul>
          </li>
           <li class="drop-down"><a href="#">Assignment 2</a>
            <ul>
              <li><a href="#a2calc">Calculator</a></li>

            </ul>
          </li>

        </ul>
      </nav><!-- .main-nav -->

    </div>
  </header><!-- #header -->

  <!--==========================
    Intro Section
  ============================
  <section id="intro" class="clearfix">
    <div class="container d-flex h-100">
      <div class="row justify-content-center align-self-center">
        <div class="col-md-6 intro-info order-md-first order-last">
          <h2> Advance Java<br>Technology</h2>

        </div>

        <div class="col-md-6 intro-img order-md-last order-first">
          <img src="img/intro-img.svg" alt="" class="img-fluid">
        </div>
      </div>

    </div>
  </section><!-- #intro -->

  <main id="main">




    <!--==========================
      Services Section
    ============================-->
    <section id="services" class="section-bg">
      <div class="container">



        <div class="row">

          <div class="col-md-6 col-lg-4 wow bounceInUp" data-wow-duration="1.4s"> </div>
          <div class="col-md-6 col-lg-4 wow bounceInUp" data-wow-duration="1.4s">
            <div class="box">
              <div class="icon" style="background: #fff0da;"><i class="ion-ios-bookmarks-outline" style="color: #e98e06;"></i></div>
              <h3 class="title"><a href="">Dynamic TextBox Generator</a></h3>
             <form  action="" method="post">
                <div class="form-group">
                  <input type="text" name="n1" class="form-control" placeholder="Enter Number of textboxes..." /><br/>

                </div>


                 <div class="form-group">
                     <input type="submit" class="btn primary-btn btn-lg px-5" name="op" value="Generate" />
                 </div>

<div class="col-md-12 form-group">
<label for="username">
         <%
            if(request.getParameter("op")!=null){
            int n1=Integer.parseInt(request.getParameter("n1"));

            for(int i=1;i<(n1+1);i++)
                {
            out.println("Textbox "+i);


          %>
        <input type="text" class="form-control">
    <%
    }
    }
    %>
</label>
</div>
             </form>
            </div>
          </div>
          </div>
          </div>
    </section>

  </main>



  <a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>
  <!-- Uncomment below i you want to use a preloader -->
  <!-- <div id="preloader"></div> -->

  <!-- JavaScript Libraries -->
  <script src="lib/jquery/jquery.min.js"></script>
  <script src="lib/jquery/jquery-migrate.min.js"></script>
  <script src="lib/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="lib/easing/easing.min.js"></script>
  <script src="lib/mobile-nav/mobile-nav.js"></script>
  <script src="lib/wow/wow.min.js"></script>
  <script src="lib/waypoints/waypoints.min.js"></script>
  <script src="lib/counterup/counterup.min.js"></script>
  <script src="lib/owlcarousel/owl.carousel.min.js"></script>
  <script src="lib/isotope/isotope.pkgd.min.js"></script>
  <script src="lib/lightbox/js/lightbox.min.js"></script>
  <!-- Contact Form JavaScript File -->
  <script src="contactform/contactform.js"></script>

  <!-- Template Main Javascript File -->
  <script src="js/main.js"></script>

</body>
</html>
