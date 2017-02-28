<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="orderhistory.aspx.cs" Inherits="Online_shopping_system.admin.orderhistory" %>


<!DOCTYPE html>
<html lang="en">
<head>
  <title>Order History</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
   <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat">
    <link href="../Content/w3.css" rel="stylesheet" />
    <link href="../Content/font-awesome.css" rel="stylesheet" />
    <link href="../Content/font-awesome.min.css" rel="stylesheet" />
    <link href="../Content/bootstrap.css" rel="stylesheet" />
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <script src="../Content/jquery.js"></script>
    <script src="../Content/bootstrap.js"></script>
    <script src="../Content/bootstrap.min.js"></script>
  <script src="jquery.carouFredSel-6.0.4-packed.js"></script>
  
  <script>
     $(document).ready(function(){
    $(".dropdown").hover(            
        function() {
            $('.dropdown-menu', this).stop( true, true ).slideDown("fast");
            $(this).toggleClass('open');        
        },
        function() {
            $('.dropdown-menu', this).stop( true, true ).slideUp("fast");
            $(this).toggleClass('open');       
        }
    );
});
    
    

     function myFunction() {
         var input, filter, table, tr, td, i;
         input = document.getElementById("myInput");
         filter = input.value.toUpperCase();
         table = document.getElementById("GridView1");
         tr = table.getElementsByTagName("tr");
         for (i = 0; i < tr.length; i++) {
             td = tr[i].getElementsByTagName("td")[0];
             if (td) {
                 if (td.innerHTML.toUpperCase().indexOf(filter) > -1) {
                     tr[i].style.display = "";
                 } else {
                     tr[i].style.display = "none";
                 }
             }
         }
     }
</script>
    
    <style>
    /* Remove the navbar's default rounded borders and increase the bottom margin */


.mega-dropdown-menu {
  padding: 20px 15px 15px;
  text-align: center;
  width: 100%;
  
}

.mega-dropdown { position: static !important;
            
}

    
    .a1{
        color:darkseagreen;
        width:auto;
        font-size:large;
        border-radius:15px 15px 15px 15px;
        
    }

    .a1:hover{
        color:gray;
    }

    
     .navbar {
      margin-bottom: 50px;
      border-radius: 0px;
      background-color:gray;
      
      padding:20px;
    }

    .navbar-brand{
        color:white;
    }

 
   .a4{
      background-color:gray;
       
   }

   .a4:hover{
       color:green;
       
   }

   .nav2{
       margin-top:-50px;
   }

   .nav2 a{
       background-color:black;
       color:darkseagreen;
   }
  
    footer {
      background-color: #f2f2f2;
      padding: 25px;
    }

    grid{
        width   :auto;
    }
   
  </style>
</head>
<body>
     <form runat="server">
<nav class="navbar glyphicon-text-color">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" style="color:white" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"  style="background-color:white" ></span>
        <span class="icon-bar" style="background-color:white"></span>
        <span class="icon-bar" style="background-color:white"></span>
      </button>
     <img src="../images/logo_2.png" style="height:80px; margin-top:-20px; margin-left:-20px;"  />
    </div>
         <div class="collapse navbar-collapse" id="myNavbar">
         
      <ul class="nav navbar-nav navbar-right">
           <li class="active"><a href="admin_info.aspx" class="a1" ><span class="glyphicon glyphicon-home"></span> Home</a></li>
            <li class="dropdown mega-dropdown">
			   <a href="#" class="dropdown-toggle a1"  data-toggle="dropdown"><i class="glyphicon glyphicon-user"></i> <asp:Label ID="Label1" runat="server" Text=""></asp:Label> Account <i class="caret"></i></a>				
				<ul class=" dropdown-menu mega-dropdown a4">
                    <li><a style="color:darkseagreen; cursor:pointer; border-radius:10px" href="orderhistory.aspx" >Order History</a></li>
                    <li ><a style="color:darkseagreen; cursor:pointer; border-radius:10px" href="addadmin.aspx" >Add Admin</a></li>
                    <li ><a style="color:darkseagreen; cursor:pointer; border-radius:10px" href="yourprofile.aspx">Your Profile</a></li>
				</ul>
             </li>
        
      
          <li><a  class="a1" href="logout.aspx"  ><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
			      </ul>
        
      </div>
      </div>

  </nav>
<div class="w3-container w3-center">
        <asp:Label ID="Label2" CssClass=" w3-text-blue" runat="server" Text=""></asp:Label>
    </div>
<div class="w3-content w3-margin-top" style="max-width:1400px;">
    
  <!-- The Grid -->
  <div class="w3-row-padding">
  
    <!-- Left Column -->
    <div class= "w3-quarter">
    
      <div class=" w3-light-grey w3-text-green w3-card-4 w3-center">
        <br />
          
        <div class="w3-container w3-text-black">
           <h3>For Products..</h3>
           
                <hr style="color:black">
            </div>
          <div class="w3-container">
          <div class="w3-container">
                <a class="w3-large" href="add_product.aspx">
                <i class="fa fa-plus-circle w3-xxlarge"></i>
                <p>ADD PRODUCT</p>
              </a>
        </div>
              
          <div class="w3-container">
              <a class="w3-large" href="delete_product.aspx">
                <i class="fa fa-minus-circle w3-xxlarge"></i>
                <p>DELETE PRODUCT</p>
              </a>
              </div>
              <div class="w3-container">
              <a class="w3-large " href="modify_product.aspx">
                <i class="fa fa-wrench w3-xxlarge"></i>
                <p>MODIFY PRODUCT</p>
              </a>
        </div>
              </div>
      </div><br>

    <!-- End Left Column -->
    </div>

    <!-- Right Column -->
    <div class="w3-twothird w3-card-2">
    <div class="w3-container">
        <p class="w3-xxlarge w3-text-blue">Order History..</p><hr />
    </div>
        <div class="w3-container">
            <asp:GridView ID="GridView1" CssClass="w3-table w3-bordered" runat="server"></asp:GridView>
            <br />
        </div>
    <!-- End Right Column -->
    </div>
    
  <!-- End Grid -->
  </div>
  
  <!-- End Page Container -->
</div>

 

     <br /><br />
          <footer class="container-fluid text-center ">
                 <br />
  <p>Online Store Copyright</p>
 <p>@ 1996-2016,moop.com,Inc.or its affilites</p>
    
  
</footer>
        

        
      </form> 
</body>
</html>

