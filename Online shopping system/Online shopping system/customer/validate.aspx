<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="validate.aspx.cs" Inherits="Online_shopping_system.customer.validate" %>


<!DOCTYPE html>
<html lang="en">
<head>
  <title>Welcome Page</title>
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

   
    .nav-tabs {
  display: inline-block;
  border-bottom: none;
  padding-top: 15px;
  margin-left:15px;
  font-weight: bold;
}
.nav-tabs > li > a, 
.nav-tabs > li > a:hover, 
.nav-tabs > li > a:focus, 
.nav-tabs > li.active > a, 
.nav-tabs > li.active > a:hover,
.nav-tabs > li.active > a:focus {
  border: none;
  border-radius: 0;
}

.nav-list { border-bottom: initial solid #eee; }
.nav-list > li { 
  padding: 20px 15px 15px;
 
}
.nav-list > li:last-child { border-right: 0px solid #eee; }
.nav-list > li > a:hover { text-decoration: none; }
.nav-list > li > a > span {
  display: block;
  font-weight: bold;
  text-transform: uppercase;
}

#a5{ position: static !important;
                 margin-bottom:-20px;
                 margin-left:125px;
}
.mega-dropdown-menu {
  padding: 20px 15px 15px;
  text-align: center;
  width: 100%;
  
}

.mega-dropdown { position: static !important;
            
}

#carousel div {
    text-align: center;
    width: 200px;
    float: left;
    position: relative;
}
#carousel div img {
    border:none;
}
.span_2 {
    display: none;
}
#carousel div:hover .span_2 {
    background-color: #333;
    color: #fff;
    font-family: Arial, Geneva, SunSans-Regular, sans-serif;
    font-size: 14px;
    line-height: 22px;
    display: inline-block;
    width: 100px;
    padding: 2px 0;
    margin: 0 0 0 -50px;
    position: absolute;
    top:200px;
    left: 50%;
    border-radius: 3px;
}

 
      .search {
       width:200px;
       margin-left:50px;
        padding:10px;
        border-bottom-left-radius:15px;
        border-top-left-radius:15px;
        border:2px solid darkseagreen;
      
      }

      .go{
          padding:10px;
          margin-right:20px;
          background-color:darkseagreen;
          color:white;
          border:2px solid darkseagreen;
          margin-left:-5px;
          cursor:pointer;
          border-bottom-right-radius:15px;
          border-top-right-radius:15px;
            
          }

      .go:hover{
          background-color:green;
          color:white;
          transition: all 0.40s;
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
      border-radius: 0;
      background-color:gray;
      
      padding:20px;
    }

    .navbar-brand{
        color:white;
    }

   .a2 a{
       color:deepskyblue;
   }

   .a2 a:hover{
       color:dodgerblue;
   }

   .a3{
       color:darkseagreen;
       border-radius:10px ;
   }
   .a3:hover{
       color:green;
   }
   .a4{
       background-color:gray;
   }

   .a4:hover{
       color:green;
   }

    /* Add a gray background color and some padding to the footer */
    footer {
      background-color: #f2f2f2;
      padding: 25px;
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
          <li class="active"><a href="validate.aspx" class="a1" ><span class="glyphicon glyphicon-home"></span> Home</a></li>
            <li class="dropdown mega-dropdown">
			   <a href="#" class="dropdown-toggle a1"  data-toggle="dropdown"><i class="glyphicon glyphicon-user"></i> <asp:Label ID="Label1" runat="server" Text=""></asp:Label> Account <i class="caret"></i></a>				
				<ul class=" dropdown-menu mega-dropdown a4">
                    <li ><a href="../cust_account/yourorder.aspx" style="color:darkseagreen; cursor:pointer; border-radius:10px" > Your Order </a></li>
                    <li ><a href="../cust_account/delivery_info.aspx" style="color:darkseagreen; cursor:pointer; border-radius:10px"> Delivery Info </a></li>
                    <li ><a  href="../cust_account/cust_profile.aspx" style="color:darkseagreen; cursor:pointer; border-radius:10px" > Your Profile </a></li>
				</ul>
             </li>
        <li><a Class="a1" href="../cust_account/yourcart.aspx" ><span class="glyphicon glyphicon-shopping-cart"></span> Cart</a></li>
          <li><a Class="a1" href="../cust_account/cust_logout.aspx"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
      </ul>
        
      </div>
      </ div>

    <div>
      
         <ul class="nav navbar-nav navbar-collapse style= collapse in" id="bs-megadropdown-tabs" style="
    padding-left: 0px;">
            <li class="dropdown mega-dropdown" id="a5">
			   <a href="#" class="dropdown-toggle a1"  data-toggle="dropdown"><i class="fa fa-space-shuttle"></i> CATEGORIES <i class="caret"></i></a>				
				<div id="filters" class="dropdown-menu mega-dropdown-menu a4">
                    <ul class="nav nav-tabs " role="tablist">   
                       <li   class="active"><a href="#sports" class="a3" role="tab" data-toggle="tab">Sports</a></li>
                       <li><a href="#kitchen" role="tab" class="a3" data-toggle="tab">Kitchen</a></li>
                        <li><a href="#electronics" role="tab" class="a3" data-toggle="tab">Electronics</a></li>
                        <li><a href="#music" role="tab" class="a3" data-toggle="tab">Music,Camera & Audio</a></li>
                        <li><a href="#jewellery" role="tab" class="a3" data-toggle="tab">Jewellery</a></li>
                        <li><a href="#bags" role="tab" class="a3" data-toggle="tab">Bags</a></li>
                        <li><a href="#clothes" role="tab" class="a3" data-toggle="tab">Clothes</a></li>
                        <li><a href="#shoes" role="tab" class="a3" data-toggle="tab">Shoes</a></li>
                    </ul>  
                    <div class="container-fluid2"> 
    				    <!-- Tab panes -->
                        <div class="tab-content">
                          <div class="tab-pane active" id="sports">
                            <ul class="nav-list list-inline a2">
                                <li><a href="../cust_account/sports/Cricket.aspx"><img src="../images/sports/cricket/cricket_2.png" /><span>Cricket</span></a></li>
                                <li><a href="../cust_account/sports/golf.aspx"><img src="../images/sports/golf/golf.png" /><span>Golf</span></a></li>
                                <li><a href="../cust_account/sports/swimming.aspx"><img src="../images/sports/swimming/swimming.png" /><span>Swimming</span></a></li>
                                <li><a href="../cust_account/sports/table_tennis.aspx"><img src="../images/sports/t-t/table_tennis.png" /><span>Table Tennis</span></a></li>
                                <li><a href="../cust_account/sports/tennis.aspx"><img src="../images/sports/tennis/tennis_2.png" /><span>Tennis</span></a></li>
                               <li><a href="../cust_account/sports/boxing.aspx"><img src="../images/sports/boxing/boxing_gloves.png" /><span>Boxing</span></a></li>
                                <li><a href="../cust_account/sports/football_vollyball.aspx"><img src="../images/sports/football%20or%20volleyball/classic.png" /><span>Football or Vollyball</span></a></li>
                            </ul>
                          </div>
                          <div class="tab-pane" id="kitchen">
                            <ul class="nav-list list-inline a2">                                
                                <li><a href="../cust_account/kitchen/Home%20Appliances.aspx"><img src="../images/kitchen/home/kitchen_icon.png" /><span>Home Appliances</span></a></li>
                                <li><a href="../cust_account/kitchen/Animal%20Appliances.aspx"><img src="../images/kitchen/animal/hot_dog.png" /><span>Animal Appliances</span></a></li>
                                <li> <a href="../cust_account/kitchen/Large%20Appliances.aspx"><img src="../images/kitchen/large/kitchen_icon_2.png" /><span>Large Appliances</span></a></li>
                                <li><a href="../cust_account/kitchen/Home%20Furnishing.aspx"><img src="../images/kitchen/Furnishing/futon_bed.png" /><span>Home Furnishing</span></a></li>
                                <li> <a href="../cust_account/kitchen/Lighting.aspx"><img src="../images/kitchen/lighting/office1.png" /><span>Lighting</span></a></li>
                                
                            </ul>
                          </div>
                            <div class="tab-pane" id="electronics">
                            <ul class="nav-list list-inline a2">                                
                                <li><a href="../cust_account/electronics/Laptop%20and%20Accessories.aspx">
                 <img src="../images/electronics/laptop/portablecomputer.png" /><span>Laptop and Accessories</span></a></li>
                                <li> <a href="../cust_account/electronics/Mobiles%20and%20Accessories.aspx">
                     <img src="../images/electronics/mobile/cellphone.png" /><span>Mobiles and Accessories</span></a></li>
                                <li> <a href="../cust_account/electronics/Printers%20and%20Scanners.aspx">
                         <img src="../images/electronics/printers/print_printer.png" /><span>Printers and Scanners</span></a></li>
                                <li> <a href="../cust_account/electronics/Pendrive%20and%20Accessories.aspx">
                             <img src="../images/electronics/pendrive/pcb.png" /><span>Pendrive and Accessories</span></a></li>
                                <li><a href="../cust_account/electronics/Network%20Accessories.aspx">
                                 <img src="../images/electronics/internet/network.png" /><span>Network Accessories</span></a></li>
                                <li> <a href="../cust_account/electronics/PC%20Accessories.aspx">
                                     <img src="../images/electronics/pc%20accessories/redhat_system_tools.png" /><span>PC Accessories</span></a></li>
                            </ul>
                          </div>
                            <div class="tab-pane" id="music">
                            <ul class="nav-list list-inline a2">                                
                                <li> <a href="../cust_account/musical/Camera.aspx"><img src="../images/music/camera_unmount2.png" /><span>Camera</span></a></li>
                                <li> <a href="../cust_account/musical/Speakers.aspx"><img src="../images/music/alesis_m1_active_mk2_speakers_2.png" /><span>Speakers</span></a></li>
                                <li><a href="../cust_account/musical/Musical%20Instruments.aspx"><img src="../images/music/portable_music_player.png" /><span>Musical Instruments</span></a></li>
                                <li> <a href="../cust_account/musical/Headphones%20,%20Earphones.aspx"><img src="../images/music/headphones.png" /><span>Headphones & Earphones</span></a></li>
                                <li> <a href="../cust_account/musical/Televisions.aspx"><img src="../images/music/tv.png" /><span>Televisions</span></a></li>
                                
                            </ul>
                          </div>
                            <div class="tab-pane" id="jewellery">
                            <ul class="nav-list list-inline a2">                                
                                <li> <a href="../cust_account/jewellery/Watches.aspx"><img src="../images/jewellery/pocket_watch.png" /><span>Watches </span></a></li>
                                <li> <a href="../cust_account/jewellery/Sunglasses.aspx"><img src="../images/jewellery/chanel_pink_glasses.png" /><span>Sunglasses</span></a></li>
                                <li><a href="../cust_account/jewellery/Men%20Jewellery.aspx"><img src="../images/jewellery/spaceclaim.135.png" /><span>Men Jewellery</span></a></li>
                                <li><a href="../cust_account/jewellery/Women%20Jewellery.aspx"><img src="../images/jewellery/pendant.png" /><span>Women Jewellery</span></a></li>
                                <li> <a href="../cust_account/jewellery/Traditionals%20Jewellery.aspx"><img src="../images/jewellery/bracelet.png" /><span>Traditionals Jewellery</span></a></li>
                                <li> <a href="../cust_account/jewellery/Spectacle%20Frames.aspx"><img src="../images/jewellery/kghostview.png" /><span>Spectacle Frames</span></a></li>
                                
                            </ul>
                          </div>
                            <div class="tab-pane" id="bags">
                            <ul class="nav-list list-inline a2">                                
                                <li> <a href="../cust_account/bags/Laptop%20Bags.aspx"><img src="../images/bags/004-128.png" /><span>Laptop Bags</span></a></li>
                                <li> <a href="../cust_account/bags/Luggage.aspx"><img src="../images/bags/y_bag.png" /><span>Luggage</span></a></li>
                                <li><a href="../cust_account/bags/Backpacks.aspx"><img src="../images/bags/bag.png" /><span>Backpacks</span></a></li>
                                <li><a href="../cust_account/bags/Handbags%20,%20Clutches.aspx"><img src="../images/bags/bag_128x128x32.png" /><span>Handbags & Clutches</span></a></li>
                                <li> <a href="../cust_account/bags/Wallets.aspx"><img src="../images/bags/kwallet.png" /><span>Wallets</span></a></li>
                                <li> <a href="../cust_account/bags/Messenger%20Bags.aspx"><img src="../images/bags/leather_bag.png" /><span>Messenger Bags</span></a></li>
                                
                            </ul>
                          </div>
                            <div class="tab-pane" id="clothes">
                            <ul class="nav-list list-inline a2">                                
                                <li><a  href="../cust_account/clothes/Women's%20Clothing.aspx"><img src="../images/clothes/cloth_wearing_dress_fashion_women_tunics_frock-128.png" /><span>Women's Clothing</span></a></li>
                                <li><a href="../cust_account/clothes/Men's%20Clothing.aspx"><img src="../images/clothes/shirt.png" /><span>Men's Clothing</span></a></li>
                                <li><a  href="../cust_account/clothes/Kids's%20Clothing.aspx"><img src="../images/clothes/t_shirt.png" /><span>Kids's Clothing</span></a></li>
                            </ul>
                          </div>
                            <div class="tab-pane" id="shoes">
                            <ul class="nav-list list-inline a2">                                
                                <li> <a href="../cust_account/shoes/Men's%20Shoes.aspx"><img src="../images/shoes/shoes.png" /><span>Men's Shoes</span></a></li>
                                <li> <a href="../cust_account/shoes/Women's%20Shoes.aspx"><img src="../images/shoes/shoe_woman.png" /><span>Women's Shoes</span></a></li>
                                <li><a href="../cust_account/shoes/Sandals%20,%20Floaters.aspx"><img src="../images/shoes/Geart_Shoes_Traditional_Sandals.png" /><span>Sandals & Floaters</span></a></li>
                                <li> <a href="../cust_account/shoes/Casual%20Slippers.aspx"><img src="../images/shoes/slipper2.png" /><span>Casual Slippers</span></a></li>
                                <li><a href="../cust_account/shoes/Sports%20,%20Outdoors.aspx"><img src="../images/shoes/soccer_5.png" /><span>Sports & Outdoors</span></a></li>
                                
                            </ul>
                          </div>
                        </div>
                    </div>
                                   
				</div>	
			</li>
        </ul>

    </div>
    
      
    </nav>
         <div class="w3-container">
             <asp:Label ID="Label2" CssClass="w3-text-blue w3-large w3-center" runat="server" Text=""></asp:Label>
         </div>

         <div class="container" id="hii">
  <div class="row" style="width:1040px">
     <div class="panel panel-success">
        <div class="panel-heading">Today's Deal</div>
        <div class="panel-body">
      
            <div id="myCarousel" class="carousel slide"  data-wrap="false">
                <div class="carousel-inner" role="listbox">
                    <div class="item active"  id="carousel" >
            <div class="col-sm-4">
                <a href="/cust_account/display.aspx?id=10">
                    <img  src="../images/sports/cricket/bat/bat1/21vPOkYGR1L.jpg" style="cursor:pointer; width:100%; height:250px "alt="Image" />
                     <div><asp:Label ID="img1_Label1" runat="server" Text="bat_2"></asp:Label></div>
                     <span class="w3-badge w3-red w3-display-topright">17%<br />off</span><span class="span_2">Quick Look</span>
                    </a>
             </div>

            <div class="col-sm-4">
                <a href="/cust_account/display.aspx?id=12">
                    <img src="../images/sports/tennis/ball/b1/51TbzpKT0JL._SL1200_.jpg"  style="cursor:pointer; width:100%; height:250px "alt="Image" />
                     <div><asp:Label ID="Label3" runat="server" Text="Tennis Ball"></asp:Label></div>
                     <span class="w3-badge w3-red w3-display-topright">50%<br />off</span><span class="span_2">Quick Look</span>
                    </a>
             </div>

            <div class="col-sm-4">
                <a href="/cust_account/display.aspx?id=14">
                    <img src="../images/sports/boxing/boxing/b3/61aNljodYjL._SL1500_.jpg" style="cursor:pointer; width:100%; height:250px "alt="Image" />
                     <div><asp:Label ID="Label4" runat="server" Text="Boxing"></asp:Label></div>
                     <span class="w3-badge w3-red w3-display-topright">10%<br />off</span><span class="span_2">Quick Look</span>
                    </a>
             </div>

            <div class="col-sm-4">
                <a href="/cust_account/display.aspx?id=15">
                    <img src="../images/sports/football%20or%20volleyball/football/f1/51dogMXMekL._SY355_.jpg"  style="cursor:pointer; width:100%; margin-top:30px;  height:160px "alt="Image" /><br /><br /><br /><br />
                     <div><asp:Label ID="Label5" runat="server" Text="Football"></asp:Label></div>
                     <span class="w3-badge w3-red w3-display-topright">20%<br />off</span><span class="span_2">Quick Look</span>
                    </a>
             </div>

            <div class="col-sm-4">
                <a href="/cust_account/display.aspx?id=16">
                    <img src="../images/sports/golf/ball/b1/31tOuQqYMCL._SY355_.jpg" style="cursor:pointer; width:100%; height:250px "alt="Image" />
                     <div><asp:Label ID="Label6" runat="server" Text="Golf_Ball"></asp:Label></div>
                     <span class="w3-badge w3-red w3-display-topright">12%<br />off</span><span class="span_2">Quick Look</span>
                    </a>
             </div>

            
                    </div>
                    <div class="item"  id="carousel" >
              
             <div class="col-sm-4" style="width:300px">
                <a href="/cust_account/display.aspx?id=18">
                    <img src="../images/electronics/laptop/41GPeBcssaL.jpg"  style="cursor:pointer; width:300px; height:250px "alt="Image" />
                     <div><asp:Label ID="Label7" runat="server" Text="Apple Laptop"></asp:Label></div>
                     <span class="w3-badge w3-red w3-display-topright">17%<br />off</span><span class="span_2">Quick Look</span>
                    </a>
             </div>
              
              <div class="col-sm-4">
                <a href="/cust_account/display.aspx?id=19">
                    <img src="../images/electronics/mobile/81OYshSfAaL._SL1500_.jpg" style="cursor:pointer; width:100%; height:250px "alt="Image" />
                     <div><asp:Label ID="Label8" runat="server" Text="Mobile"></asp:Label></div>
                     <span class="w3-badge w3-red w3-display-topright">7%<br />off</span><span class="span_2">Quick Look</span>
                    </a>
             </div>
                        
              <div class="col-sm-4">
                <a href="/cust_account/display.aspx?id=20">
                    <img src="../images/electronics/pendrive/41avAZDsJHL.jpg"  style="cursor:pointer; width:100%; height:250px "alt="Image" />
                    <div><asp:Label ID="Label9" runat="server" Text="pendrive"></asp:Label></div>
                     <span class="w3-badge w3-red w3-display-topright">10%<br />off</span><span class="span_2">Quick Look</span>
                    </a>
             </div>    
           
                    </div>
              
                
                  </div>
                  <a class="left carousel-control" href="#myCarousel" role="button" style="width:20px" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left"  aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
                </a>
                        <a class="right carousel-control" href="#myCarousel" role="button" style="width:20px; padding-right:-10px;" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                  </a>
            </div>
             </div>
        
           <div class="panel-footer">Buy 50 mobiles and get a gift card</div>
    </div>
       
</div>
 </div>
<br>
<br><br>

          <footer class="container-fluid text-center ">
                 <br />
  <p>Online Store Copyright</p>
 <p>@ 1996-2016,moop.com,Inc.or its affilites</p>
    
  
</footer>
        
      </form> 
</body>
</html>

