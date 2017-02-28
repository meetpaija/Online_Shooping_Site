<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="master.aspx.cs" Inherits="Online_shopping_system.customer.master" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <title>MOOP:Online Shopping System</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="../Content/w3.css" rel="stylesheet" />
    <link href="../Content/font-awesome.css" rel="stylesheet" />
    <link href="../Content/font-awesome.min.css" rel="stylesheet" />
    <link href="../Content/bootstrap.css" rel="stylesheet" />
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <script src="../Content/jquery.js"></script>
    <script src="../Content/bootstrap.js"></script>
    <script src="../Content/bootstrap.min.js"></script>
  <style>
    /* Remove the navbar's default margin-bottom and rounded borders */
    .navbar {
      margin-bottom: 0;
      border-radius: 0;
      padding:20px;
      background-color:gray;
    }

    .navbar-brand{
        color:white;
    }

    .navbar ul a{
        color:white;
        width:auto;
        font-size:large;
        border-radius:15px 15px 15px 15px;
    }

    .navbar ul a:hover{
        color:gray;
    }

    /* Add a gray background color and some padding to the footer */
    footer {
      background-color:gray;
      height:80px;
    }
    
  .carousel-inner img {
      width: 100%; /* Set width to 100% */
      margin: auto;
      min-height:200px;
  }

  /* Hide the carousel text when the screen is less than 600 pixels wide */
  @media (max-width: 600px) {
    .carousel-caption {
      display: none;
    }
  }
  .hi{
      color:white;
  }

  .container-fluid{
      padding:0px;
  }

  .navbar navbar-toggle{
      color:white;
  }

  </style>
</head>
<body>

<nav class="navbar glyphicon-text-color">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle"  data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
     <a class="navbar-brand" href="../aboutus.aspx">
         <img src="images/logo_2.png" style="height:80px; margin-top:-30px;"  />
          </a></div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
        <li class="active"><a href="master.aspx">Home</a></li>
         <li><a href="customer/login.aspx"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      <li><a href="customer/registration.aspx"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
      
      </ul>
    </div>
  </div>
</nav>
    <br />
<div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
         <li data-target="#myCarousel" data-slide-to="2"></li>
       
    </ol>

    <!-- Wrapper for slides -->
    <div  class="carousel-inner" role="listbox">
      <div class="item active">
            <img src="images/carousal/elearning-banner-blog.png" style="height:700px; width:auto;" alt="Image" />
         
       
        <div class="carousel-caption w3-text-black">
          <h3>Sell $</h3>
          <p>Money Money.</p>
        </div>
      </div>
       
      <div  class="item">
          <img src="images/carousal/c_1.jpg" style="height:700px; width:auto;" alt="Image" />
         
          <div class="carousel-caption">
          <h3>More Sell $</h3>
          <p>Lorem ipsum...</p>
        </div>
      </div>

     <div class="item">
         <img src="images/carousal/onlineshopping.jpg" style="height:700px; width:auto;" alt="Image"  />
        <div class="carousel-caption  w3-text-black">
          <h3>More Sell $</h3>
          <p>Lorem ipsum...</p>
        </div>
      </div>
   

     
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
</div>
  
<br /><br />
           <footer class="container-fluid text-center ">
                 <br />
  <p>Online Store Copyright</p>
 <p>@ 1996-2016,moop.com,Inc.or its affilites</p>
    
  
</footer>

      
           </body>
</html>