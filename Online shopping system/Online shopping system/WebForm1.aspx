<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Online_shopping_system.WebForm1" %>


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
                                <li><a href="../cust_account/sports/Cricket.aspx"><img src="../images/sports/cricket/cricket_2.png" /><span>Cricket</span></></li>
                                <li><a><img src="../images/sports/golf/golf.png" /><span>Golf</span></a></li>
                                <li><a><img src="../images/sports/swimming/swimming.png" /><span>Swimming</span></a></li>
                                <li><a><img src="../images/sports/t-t/table_tennis.png" /><span>Table Tennis</span></a></li>
                                <li><a><img src="../images/sports/tennis/tennis_2.png" /><span>Tennis</span></a></li>
                               <li><a><img src="../images/sports/boxing/boxing_gloves.png" /><span>Boxing</span></a></li>
                                <li><a><img src="../images/sports/football%20or%20volleyball/classic.png" /><span>Football or Vollyball</span></a></li>
                            </ul>
                          </div>
                          <div class="tab-pane" id="kitchen">
                            <ul class="nav-list list-inline a2">                                
                                <li><a><img src="../images/kitchen/home/kitchen_icon.png" /><span>Home Appliances</span></a></li>
                                <li><a ><img src="../images/kitchen/animal/hot_dog.png" /><span>Animal Appliances</span></a></li>
                                <li><a ><img src="../images/kitchen/large/kitchen_icon_2.png" /><span>Large Appliances</span></a></li>
                                <li><a ><img src="../images/kitchen/Furnishing/futon_bed.png" /><span>Home Furnishing</span></a></li>
                                <li><a ><img src="../images/kitchen/lighting/office1.png" /><span>Lighting</span></a></li>
                                
                            </ul>
                          </div>
                            <div class="tab-pane" id="electronics">
                            <ul class="nav-list list-inline a2">                                
                                <li><a>
                 <img src="../images/electronics/laptop/portablecomputer.png" /><span>Laptop and Accessories</span></a></li>
                                <li><a >
                     <img src="../images/electronics/mobile/cellphone.png" /><span>Mobiles and Accessories</span></a></li>
                                <li><a >
                         <img src="../images/electronics/printers/print_printer.png" /><span>Printers and Scanners</span></a></li>
                                <li><a >
                             <img src="../images/electronics/pendrive/pcb.png" /><span>Pendrive and Accessories</span></a></li>
                                <li><a>
                                 <img src="../images/electronics/internet/network.png" /><span>Network Accessories</span></a></li>
                                <li><a >
                                     <img src="../images/electronics/pc%20accessories/redhat_system_tools.png" /><span>PC Accessories</span></a></li>
                            </ul>
                          </div>
                            <div class="tab-pane" id="music">
                            <ul class="nav-list list-inline a2">                                
                                <li><a ><img src="../images/music/camera_unmount2.png" /><span>Camera</span></a></li>
                                <li><a ><img src="../images/music/alesis_m1_active_mk2_speakers_2.png" /><span>Speakers</span></a></li>
                                <li><a ><img src="../images/music/portable_music_player.png" /><span>Musical Instruments</span></a></li>
                                <li><a ><img src="../images/music/headphones.png" /><span>Headphones & Earphones</span></a></li>
                                <li><a ><img src="../images/music/tv.png" /><span>Televisions</span></a></li>
                                
                            </ul>
                          </div>
                            <div class="tab-pane" id="jewellery">
                            <ul class="nav-list list-inline a2">                                
                                <li><a ><img src="../images/jewellery/pocket_watch.png" /><span>Watches </span></a></li>
                                <li><a ><img src="../images/jewellery/chanel_pink_glasses.png" /><span>Sunglasses</span></a></li>
                                <li><a><img src="../images/jewellery/spaceclaim.135.png" /><span>Men Jewellery</span></a></li>
                                <li><a><img src="../images/jewellery/pendant.png" /><span>Women Jewellery</span></a></li>
                                <li><a ><img src="../images/jewellery/bracelet.png" /><span>Traditionals Jewellery</span></a></li>
                                <li><a ><img src="../images/jewellery/kghostview.png" /><span>Spectacle Frames</span></a></li>
                                
                            </ul>
                          </div>
                            <div class="tab-pane" id="bags">
                            <ul class="nav-list list-inline a2">                                
                                <li><a ><img src="../images/bags/004-128.png" /><span>Laptop Bags</span></a></li>
                                <li><a ><img src="../images/bags/y_bag.png" /><span>Luggage</span></a></li>
                                <li><a><img src="../images/bags/bag.png" /><span>Backpacks</span></a></li>
                                <li><a ><img src="../images/bags/bag_128x128x32.png" /><span>Handbags & Clutches</span></a></li>
                                <li><a ><img src="../images/bags/kwallet.png" /><span>Wallets</span></a></li>
                                <li><a ><img src="../images/bags/leather_bag.png" /><span>Messenger Bags</span></a></li>
                                
                            </ul>
                          </div>
                            <div class="tab-pane" id="clothes">
                            <ul class="nav-list list-inline a2">                                
                                <li><a ><img src="../images/clothes/cloth_wearing_dress_fashion_women_tunics_frock-128.png" /><span>Women's Clothing</span></a></li>
                                <li><a><img src="../images/clothes/shirt.png" /><span>Men's Clothing</span></a></li>
                                <li><a ><img src="../images/clothes/t_shirt.png" /><span>Kids's Clothing</span></a></li>
                            </ul>
                          </div>
                            <div class="tab-pane" id="shoes">
                            <ul class="nav-list list-inline a2">                                
                                <li><a ><img src="../images/shoes/shoes.png" /><span>Men's Shoes</span></a></li>
                                <li><a ><img src="../images/shoes/shoe_woman.png" /><span>Women's Shoes</span></a></li>
                                <li><a ><img src="../images/shoes/Geart_Shoes_Traditional_Sandals.png" /><span>Sandals & Floaters</span></a></li>
                                <li><a ><img src="../images/shoes/slipper2.png" /><span>Casual Slippers</span></a></li>
                                <li><a ><img src="../images/shoes/soccer_5.png" /><span>Sports & Outdoors</span></a></li>
                                
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
                
                                  <span class="w3-badge w3-red w3-display-topright">17%<br />off</span><span class="span_2">Quick Look</span></a></div>
            <div class="col-sm-4"><a href="/cust_account/display.aspx?id= " ><img src="https://placehold.it/150x80?text=IMAGE" style="cursor:pointer; width:100%; height:250px " alt="Image">
                <div><asp:Label ID="img2_Label1" runat="server" Text=""></asp:Label></div>
                
            <span class="w3-badge w3-red w3-display-topright">40%<br />off</span><span class="span_2">Quick Look</span></a></div>
           
            <div class="col-sm-4"><a ><img src="https://placehold.it/150x80?text=IMAGE" style="cursor:pointer; width:100%; height:250px " alt="Image">
                <div><asp:Label ID="img3_Label1" runat="server" Text=""></asp:Label></div>
                <div><asp:Label ID="img3_Label2" runat="server" Text=""></asp:Label></div>
                <div><asp:Label ID="img3_Label3" runat="server" Text=""></asp:Label></div>
                <div><asp:Label ID="img3_Label4" runat="server" Text=""></asp:Label></div>
            </a><span class="span_2">bat</span></div>
                    
            <div class="col-sm-4"><asp:LinkButton ID="LinkButton5" runat="server" ><img src="https://placehold.it/150x80?text=IMAGE" style="cursor:pointer; width:100%; height:250px " alt="Image">
                <div><asp:Label ID="img4_Label1" runat="server" Text=""></asp:Label></div>
                <div><asp:Label ID="img4_Label2" runat="server" Text=""></asp:Label></div>
                <div><asp:Label ID="img4_Label3" runat="server" Text=""></asp:Label></div>
                <div><asp:Label ID="img4_Label4" runat="server" Text=""></asp:Label></div>
           </asp:LinkButton><span class="span_2">bat</span></div>
            <div class="col-sm-4"><asp:LinkButton ID="LinkButton6" runat="server" ><img src="https://placehold.it/150x80?text=IMAGE" style="cursor:pointer; width:100%; height:250px " alt="Image">
                <div><asp:Label ID="img5_Label1" runat="server" Text=""></asp:Label></div>
                <div><asp:Label ID="img5_Label2" runat="server" Text=""></asp:Label></div>
                <div><asp:Label ID="img5_Label3" runat="server" Text=""></asp:Label></div>
                <div><asp:Label ID="img5_Label4" runat="server" Text=""></asp:Label></div>
            </asp:LinkButton><span class="span_2">bat</span></div>
             
                    </div>
                    <div class="item"  id="carousel" >
                        
            <div class="col-sm-4"><asp:LinkButton ID="LinkButton7" runat="server" ><img src="https://placehold.it/150x80?text=IMAGE" style="cursor:pointer; width:100%; height:250px " alt="Image">
                <div><asp:Label ID="img6_Label1" runat="server" Text=""></asp:Label></div>
                <div><asp:Label ID="img6_Label2" runat="server" Text=""></asp:Label></div>
                <div><asp:Label ID="img6_Label3" runat="server" Text=""></asp:Label></div>
                <div><asp:Label ID="img6_Label4" runat="server" Text=""></asp:Label></div>
            </asp:LinkButton><span class="span_2">bat</span></div>
            <div class="col-sm-4"><asp:LinkButton ID="LinkButton8" runat="server" ><img src="https://placehold.it/150x80?text=IMAGE" style="cursor:pointer; width:100%; height:250px " alt="Image">
                <div><asp:Label ID="img7_Label1" runat="server" Text=""></asp:Label></div>
                <div><asp:Label ID="img7_Label2" runat="server" Text=""></asp:Label></div>
                <div><asp:Label ID="img7_Label3" runat="server" Text=""></asp:Label></div>
                <div><asp:Label ID="img7_Label4" runat="server" Text=""></asp:Label></div>
            </asp:LinkButton><span class="span_2">bat</span></div>
            <div class="col-sm-4"><asp:LinkButton ID="LinkButton9" runat="server" ><img src="https://placehold.it/150x80?text=IMAGE" style="cursor:pointer; width:100%; height:250px " alt="Image">
                <div><asp:Label ID="img8_Label1" runat="server" Text=""></asp:Label></div>
                <div><asp:Label ID="img8_Label2" runat="server" Text=""></asp:Label></div>
                <div><asp:Label ID="img8_Label3" runat="server" Text=""></asp:Label></div>
                <div><asp:Label ID="img8_Label4" runat="server" Text=""></asp:Label></div>
            </asp:LinkButton><span class="span_2">bat</span></div>
            <div class="col-sm-4"><asp:LinkButton ID="LinkButton10" runat="server" ><img src="https://placehold.it/150x80?text=IMAGE" style="cursor:pointer; width:100%; height:250px " alt="Image">
                <div><asp:Label ID="img9_Label1" runat="server" Text=""></asp:Label></div>
                <div><asp:Label ID="img9_Label2" runat="server" Text=""></asp:Label></div>
                <div><asp:Label ID="img9_Label3" runat="server" Text=""></asp:Label></div>
                <div><asp:Label ID="img9_Label4" runat="server" Text=""></asp:Label></div>
            </asp:LinkButton><span class="span_2">bat</span></div>
            <div class="col-sm-4"><asp:LinkButton ID="LinkButton11" runat="server" ><img src="https://placehold.it/150x80?text=IMAGE" style="cursor:pointer; width:100%; height:250px " alt="Image">
                <div><asp:Label ID="img10_Label1" runat="server" Text=""></asp:Label></div>
                <div><asp:Label ID="img10_Label2" runat="server" Text=""></asp:Label></div>
                <div><asp:Label ID="img10_Label3" runat="server" Text=""></asp:Label></div>
                <div><asp:Label ID="img10_Label4" runat="server" Text=""></asp:Label></div>
            </asp:LinkButton><span class="span_2">bat</span></div>
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


