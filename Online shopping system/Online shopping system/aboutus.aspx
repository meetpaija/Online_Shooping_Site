<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="aboutus.aspx.cs" Inherits="Online_shopping_system.aboutus" %>

<!DOCTYPE html>



<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>About Us</title>
  <meta charset="utf-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1"/>
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
  

  /* Hide the carousel text when the screen is less than 600 pixels wide */

  .hi{
      color:white;
  }

  .container-fluid{
      padding:0px;
  }

  .navbar-toggle{
      color:white;
  }

  .btn-block:hover{
      box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24),0 17px 50px 0 rgba(0,0,0,0.19);
      color:darkslategrey;
      background-color:white;
  }

  .btn-block{
      background-color:gray;
      color:white;
       border-radius:10px 10px 10px 10px;
       text-shadow:10px;
  }

  .navbar-link:hover{
      color:red;
  }

  </style>
</head>
<body>

<nav class="navbar glyphicon-text-color">
  <div class="container-fluid">
    
          <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="../aboutus.aspx">
         <img src="images/logo_2.png" style="height:80px; margin-top:-30px;"  />
          </a></div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
        <li class="active"><a href="/master.aspx">Home</a></li>
         <li><a href="customer/login.aspx"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      <li><a href="customer/registration.aspx"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
    
      </ul>
    </div>
      
  </div>
</nav>
    <br />
 <div  class="w3-row-padding ">
     <div class="w3-card-2">
     <div class="w3-container">
         <p class="w3-xxlarge w3-text-blue">About Us...</p><hr />
     </div>
     <div class="w3-container">
         <h2>
          "NOTHING BUT THE BEST"
        </h2>
We will provide the "BEST" value in terms of products and services and adopt "best" processes for stakeholders, without compromise, thereby matching global standards of performance.
       <hr /></div>
     <div class="w3-container">
         <h2>
           "IT’S COMFORTABLE, IT’S MY STORE"
       </h2>
        We will create an environment which is unique and enjoyable for the customer and employee.
        We will ensure that each stakeholder feels a sense of involvement, satisfaction and commitment to the organization, as if it were his/her own.
        <hr /></div>
        <div class="w3-container">
            <h2>
            SIMPLE AND SECURE SHOPPING
        </h2>
        Shopping on our website is 100% safe and secure as we do not store complete details or payment information of your credit/debit card in our system.
        For enhanced security, we do not store any financial information on our servers.
        However, caution must always be taken by the customer while making transactions on any online venue.
            <hr /></div>
     <div class="w3-container">        <h2>
          why shop with us
        </h2>
         1. Shop Anytime & Anywhere: Whether you shop online or in store or any of the leading third party marketplaces you get the same experience in terms of merchandise, price & service.
         2.Return & Exchange at any Store
         3. 100% Original Guaranteed: We are responsible for what we sell.
     </div>
     <br />
         </div>
 </div>
    <br />
  
     <footer class="container-fluid text-center ">
                 <br />
  <p>Online Store Copyright</p>
 <p>@ 1996-2016,moop.com,Inc.or its affilites</p>
    
  
</footer>
</body>
</html>