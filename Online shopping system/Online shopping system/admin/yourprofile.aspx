<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="yourprofile.aspx.cs" Inherits="Online_shopping_system.admin.yourprofile" %>


<!DOCTYPE html>
<html lang="en">
<head>
  <title>Your Profile..</title>
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
    
    <script type="text/javascript">
        $(function () {
            $("input[name='change']").click(function () {
                if ($("#name").is(":checked")) {
                    $("#f_name").show();
                } else {
                    $("#f_name").hide();
                }
                if ($("#email").is(":checked")) {
                    $("#email_id").show();
                } else {
                    $("#email_id").hide();
                }
                if ($("#mob").is(":checked")) {
                    $("#mob_no").show();
                } else {
                    $("#mob_no").hide();
                }
                if ($("#pwd").is(":checked")) {
                    $("#passwd").show();
                } else {
                    $("#passwd").hide();
                }
            });
        });
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
        
          <li><a class="a1" href="logout.aspx"  ><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
					
      </ul>
        
      </div>
      </div>

  </nav>

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
    <div class="w3-twothird">
    
      <div class="w3-container w3-card-2 w3-white w3-margin-bottom">
        <div class="w3-container">
            <h3 style="color:blue;">Your Profile..</h3><hr />
        </div>
          <div class="w3-container">
              <asp:Label CssClass="w3-center w3-center w3-text-blue" ID="Label2" runat="server" Text=""></asp:Label>
          </div>
          <div class="w3-row-padding">
              <div class="w3-half">
                  <div class="form-horizontal">
                      <div class="form-group">
                          <p class="col-sm-4"><input class="w3-radio" type="radio" id="name" name="change" />
                             <label class="w3-validate"> First Name:</label></p>
                          <asp:Label ID="Label3" CssClass="w3-label col-sm-4" runat="server" Text=""></asp:Label>
                      </div>
                      <div class="form-group">
                          <p class="col-sm-4"><input class="w3-radio" type="radio" id="email" name="change" />
                             <label class="w3-validate"> Email_Id:</label></p>
                          <asp:Label ID="Label4" CssClass="w3-label a5" runat="server" Text=""></asp:Label>
                      </div>
                      <div class="form-group">
                          <p class="col-sm-4"><input class="w3-radio" type="radio" id="mob" name="change" />
                             <label class="w3-validate"> Mobile_No:</label></p>
                          <asp:Label ID="Label5" CssClass="w3-label a5" runat="server" Text=""></asp:Label>
                      </div>
                      <div class="form-group">
                          <p class="col-sm-4"><input class="w3-radio" type="radio" id="pwd" name="change" />
                             <label class="w3-validate"> Password:</label></p>
                          <asp:Label ID="Label6" CssClass="w3-label a5" runat="server" Text=""></asp:Label>
                      </div>
                  </div>
              </div>
              <div class="w3-half">
                  <div class="w3-container" id="f_name" style="display: none">
                                      <div class="form-horizontal">
                                          <div class="form-group">
                                                <label class="control-label col-sm-5">First_Name:</label>
                                                <div class="col-sm-4">
                                                    <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server"></asp:TextBox>
                                                     </div> 
                                              </div>
                                                <div class="form-group">
                                                    <div class="col-sm-offset-5 col-sm-4">
                                                        <asp:Button ID="Button6" CssClass=" w3-btn w3-light-blue w3-hover-blue w3-round-large" runat="server" OnClick="Button6_Click" Text="Update" />
                                                    </div>
                                               </div>
                                          
                                        </div>
                                    </div>
                  <div class="w3-container" id="passwd" style="display: none">
                                      <div class="form-horizontal">
                                          <div class="form-group">
                                                <label class="control-label col-sm-5">New Password:</label>
                                                <div class="col-sm-4">
                                                    <asp:TextBox ID="TextBox2" TextMode="Password" CssClass="form-control" runat="server"></asp:TextBox>
                                                <asp:RegularExpressionValidator Display = "Dynamic" ControlToValidate = "TextBox2" ForeColor="Red" ID="RegularExpressionValidator3" ValidationExpression = "^[\s\S]{5,12}$" runat="server" ErrorMessage="Password must be in 5 to 12 character."></asp:RegularExpressionValidator>
                     
                                                </div>
                                              </div> 
                                           <div class="form-group">
                                                    <label class="control-label col-sm-5">Confirm_Password:</label>
                                                    <div class="col-sm-4">
                                                  <asp:TextBox ID="TextBox7" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                                                    <asp:CompareValidator ErrorMessage="Passwords do not match." ControlToCompare="TextBox2" ForeColor="Red"
                                                    ControlToValidate="TextBox7" Display="Dynamic" runat="server" />
                                                  </div> 
                                             </div>
                                                <div class="form-group">
                                                    <div class="col-sm-offset-5 col-sm-4">
                                                        <asp:Button ID="Button1" CssClass=" w3-btn w3-light-blue w3-hover-blue w3-round-large" runat="server" OnClick="Button1_Click" Text="Update" />
                                                    </div>
                                               </div>
                                             
                                        </div>
                                    </div>
                  <div class="w3-container" id="email_id" style="display: none">
                                      <div class="form-horizontal">
                                          <div class="form-group">
                                                <label class="control-label col-sm-5">Email_id:</label>
                                                <div class="col-sm-4">
                                                    <asp:TextBox ID="TextBox3" CssClass="form-control" runat="server"></asp:TextBox>
                                                    <asp:RegularExpressionValidator runat="server" Display="Dynamic" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                ControlToValidate="TextBox3" ErrorMessage="Invalid email address." />
                                                     </div> 
                                              </div>
                                                <div class="form-group">
                                                    <div class="col-sm-offset-5 col-sm-4">
                                                        <asp:Button ID="Button2" CssClass=" w3-btn w3-light-blue w3-hover-blue w3-round-large" runat="server" OnClick="Button2_Click" Text="Update" />
                                                    </div>
                                               </div>
                                            
                                        </div>
                                    </div>
                  <div class="w3-container" id="mob_no" style="display: none">
                                      <div class="form-horizontal">
                                          <div class="form-group">
                                                <label class="control-label col-sm-5">Enter New Number:</label>
                                                <div class="col-sm-4">
                                                    <asp:TextBox ID="TextBox4" CssClass="form-control" runat="server"></asp:TextBox>
                                                    <asp:RegularExpressionValidator runat="server" Display="Dynamic" ForeColor="Red" ValidationExpression="^[0-9]{10}$" 
                ControlToValidate="TextBox4" ErrorMessage="Invalid mobile_no." />
                                                     </div> 
                                              </div>
                                                <div class="form-group">
                                                    <div class="col-sm-offset-5 col-sm-4">
                                                        <asp:Button ID="Button3" CssClass=" w3-btn w3-light-blue w3-hover-blue w3-round-large" runat="server" OnClick="Button3_Click" Text="Update" />
                                                    </div>
                                               </div>
                                            
                                        </div>
                                    </div>
              </div>
          </div>
          <div class="w3-container form-horizontal">
                        <div class="form-group">
                       <div class="col-sm-offset-5 col-sm-4">
                        <asp:Button ID="Button4" CssClass=" w3-btn w3-light-blue w3-hover-blue w3-round-large" runat="server" Text="Done" OnClick="Button4_Click" />
                    </div>
                            </div>
              </div>
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

