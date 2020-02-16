<%@ page import="java.util.HashMap" %>
<%-- 
    Document   : eCommerce
    Created on : 1 Feb, 2020, 8:37:14 AM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="com.vvp.web.Product" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
   <!DOCTYPE html>
<!doctype html>
<html class="no-js" lang="zxx">


<%!
    String errorMessage = "";
%>
<%
    HashMap<Integer, Integer> cartItems = new HashMap<Integer, Integer>();
    String isAddedToCart = request.getParameter("addtocart");
    String quantity = request.getParameter("qty");
    if(isAddedToCart != null){
        if(session.getAttribute("cart") != null)
        {
            cartItems = (HashMap<Integer, Integer>) session.getAttribute("cart");
        }
        try{
            int pid = Integer.parseInt(request.getParameter("pid"));
            int qty = Integer.parseInt(request.getParameter("qty"));
            if(qty <= 0)
                    throw new NumberFormatException();
            cartItems.put(pid,qty);
            session.setAttribute("cart",cartItems);
        }catch(NumberFormatException nfe){
            errorMessage += "Enter valid quantity.";
        }
    }
%>

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
  <body>
        <!--[if lte IE 9]>
                <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="https://browsehappy.com/">upgrade your browser</a> to improve your experience and security.</p>
            <![endif]-->

        <!-- header-start -->

        <!-- about_area_start -->

        <!-- about_area_end -->
        <%
            Product p1 = new Product(1, "Book", "7 Ways to be aa successful person", 360d, 5);
            Product p2 = new Product(2, "Bottle", "Milton jug", 590d, 5);
            Product p3 = new Product(3, "Watch", "Marco Analog", 700d, 5);

            HashMap<Integer, Product> products = new HashMap<Integer, Product>();
            products.put(1, p1);
            products.put(2, p2);
            products.put(3, p3);

            if(application.getAttribute("prodcuts") == null)
            {
                application.setAttribute("products",products);
            }
        %>

        <div class="speakers_area" style="padding-top: 10px">
            <a href="checkout.jsp" class="genric-btn primary-border circle" name="checkout" style="position: fixed; bottom: 10px; right: 10px "> Checkout</a>
            <div class="container">
                <div class="row">
                    <div class="col-xl-12" style="height: 10px">
                        <div class="section_title_large mb-95">
                            <h3>
                                Products
                                <%
                                    int totalItems = 0;
                                    if(session.getAttribute("cart") != null)
                                        totalItems = ((HashMap<Integer,Integer>)session.getAttribute("cart")).size();
                                %>
                                <%= totalItems %>

                            </h3>
                            <h3>
                                <%
                                    out.println(errorMessage);
                                %>
                            </h3>
                        </div>
                    </div>
                </div>

                <section id="team" class="section-bg">
      <div class="container">
        

        <div class="row">

          <div class="col-lg-3 col-md-6 wow fadeInUp">
            <div class="member">
              <img src="img/p1.jpg" class="img-fluid" alt="">
              <div class="member-info">
                <div class="member-info-content">
                  <h4><%= p1.getProductName() %></h4>
                  <span><b>Price:</b> <%= p1.getProductPrice() %></span>
                 <form action="eCommerce.jsp" method="get">
                                    <input type="hidden" name="pid" value="2">
                                    <input type="number" name="qty" placeholder="quantity"/>
                                    <button type="submit" class="genric-btn primary-border circle" name="addtocart" value="submitted">Add to Cart</button>
                                </form>
                </div>
              </div>
            </div>
          </div>

          <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
            <div class="member">
              <img src="img/p2.jpg" class="img-fluid" alt=""/>
              <div class="member-info">
                <div class="member-info-content">
                  <h4><%= p2.getProductName() %> </h4>
                  <span><b>Price:</b> <%= p2.getProductPrice() %></span>
                  <form action="eCommerce.jsp" method="get">
                                    <input type="hidden" name="pid" value="2">
                                    <input type="number" name="qty" placeholder="quantity"/>
                                    <button type="submit" class="genric-btn primary-border circle" name="addtocart" value="submitted">Add to Cart</button>
                                </form>
                </div>
              </div>
            </div>
          </div>

          <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.2s">
          <div class="member">
              <img src="img/p3.jpg" class="img-fluid" alt="">
              <div class="member-info">
                <div class="member-info-content">
                  <h4><%= p3.getProductName() %></h4>
                  <span><b>Price:</b> <%= p3.getProductPrice() %></span>
                  <form action="eCommerce.jsp" method="get">
                                    <input type="hidden" name="pid" value="2">
                                    <input type="number" name="qty" placeholder="quantity"/>
                                    <button type="submit" class="genric-btn primary-border circle" name="addtocart" value="submitted">Add to Cart</button>
                                </form>
                  
                </div>
              </div>
            </div>
                </div>
          
</html>