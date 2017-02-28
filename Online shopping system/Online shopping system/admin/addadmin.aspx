<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addadmin.aspx.cs" Inherits="Online_shopping_system.admin.addadmin" %>




<!DOCTYPE html>
<html lang="en">
<head>
  <title>Admin Info</title>
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
        
       
          <li><a class="a1" href="logout.aspx"  ><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
			   </ul>
        
      </div>
      </div>

  </nav>

<div class="w3-content w3-margin-top" style="max-width:1400px;">
    <div class="w3-container w3-center ">
        <asp:Label ID="Label2" CssClass ="w3-text-red" runat="server" Text=""></asp:Label>
    </div>
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
            <h3 class="w3-large w3-text-blue">Add Another Admin...</h3><hr />
        </div>
           <div class="w3-container">
               <div class="form-horizontal">
        <div class="form-group">
                <label class="control-label col-sm-5">Username:</label>
                <div class="col-sm-4">
                    <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvUser" ErrorMessage="Please enter Username" ForeColor="Red" Display="Dynamic" ControlToValidate="TextBox1" runat="server" />
                 </div> 
        </div>
        <div class="form-group">
                <label class="control-label col-sm-5">FirstName:</label>
                <div class="col-sm-4">
                    <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ErrorMessage="Please enter FirstName" ForeColor="Red" Display="Dynamic" ControlToValidate="TextBox2" runat="server" />
                 </div> 
            </div>
            
         <div class="form-group">
                <label class="control-label col-sm-5">LastName:</label>
                <div class="col-sm-4">
                    <asp:TextBox ID="TextBox3" CssClass="form-control" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ErrorMessage="Please enter LastName" Display="Dynamic" ForeColor="Red" ControlToValidate="TextBox3" runat="server" />
                </div> 
         </div>
            
        <div class="form-group">
                <label class="control-label col-sm-5"> Gender:</label>
               <div class="col-sm-5">    
                    <asp:RadioButtonList CssClass="radio" ID="RadioButtonList1" runat="server">
              <asp:ListItem Selected>Male</asp:ListItem>
                <asp:ListItem >Female</asp:ListItem>
            </asp:RadioButtonList>
                </div>
         </div>
          
         <div class="form-group">
                <label class="control-label col-sm-5"> Email_Id:</label>
                <div class="col-sm-4">
                <asp:TextBox ID="TextBox4" CssClass="form-control" Text="abc@xyz.com"  runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ForeColor="Red" Display="Dynamic" ErrorMessage="Please enter Email_Id" ControlToValidate="TextBox4" runat="server" />
                <asp:RegularExpressionValidator runat="server" Display="Dynamic" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                ControlToValidate="TextBox4" ErrorMessage="Invalid email address." />
                </div> 
         </div>
       
      <div class="form-group">
                <label class="control-label col-sm-5">State:</label>
                <div class="col-sm-4">
                 <asp:DropDownList  ID="DropDownList1" CssClass="form-control" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" >
                <asp:ListItem>--Please Select State--</asp:ListItem>
            </asp:DropDownList>
                </div> 
         </div>
           
          <div class="form-group">
                <label class="control-label col-sm-5"> City:</label>
                <div class="col-sm-4">
                 <asp:DropDownList ID="DropDownList2" CssClass="form-control" runat="server" AutoPostBack="true">
                <asp:ListItem>--Please Select City--</asp:ListItem>
            </asp:DropDownList>
                </div> 
         </div>
           
          <div class="form-group">
                <label class="control-label col-sm-5"> Address:</label>
                <div class="col-sm-4">
                  <asp:TextBox ID="TextBox8" CssClass="form-control" TextMode="MultiLine" Rows="4" Width="200" runat="server"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ForeColor="Red" Display="Dynamic" ErrorMessage="Please enter Proper Address" ControlToValidate="TextBox8" runat="server" />
                  
                </div> 
         </div>
               
         <div class="form-group">
                <label class="control-label col-sm-5"> Mobile_No:</label>
                <div class="col-sm-4">
                  <asp:TextBox ID="TextBox5" CssClass="form-control" runat="server"></asp:TextBox>
               <asp:RequiredFieldValidator ID="RequiredFieldValidator7" Display="Dynamic" ForeColor="Red" ErrorMessage ="Please enter Mobile_no" ControlToValidate="TextBox5" runat="server" />
               <asp:RegularExpressionValidator runat="server" Display="Dynamic" ForeColor="Red" ValidationExpression="^[0-9]{10}$" 
                ControlToValidate="TextBox5" ErrorMessage="Invalid mobile_no." />
                </div> 
         </div>
          
         <div class="form-group">
                <label class="control-label col-sm-5">Select Security Question:</label>
                <div class="col-sm-4">
                   <asp:DropDownList ID="DropDownList3" CssClass="form-control" runat="server">
                       <asp:ListItem>--Please Select Question--</asp:ListItem>
                       <asp:ListItem>Where you were born?</asp:ListItem>
                       <asp:ListItem>What is your pet-name?</asp:ListItem>
                   </asp:DropDownList>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator9" Display="Dynamic" ForeColor="Red" ErrorMessage="Please Select Question" ControlToValidate="DropDownList3" runat="server" />
                </div> 
         </div>
            
         <div class="form-group">
                <label class="control-label col-sm-5">Answer is:</label>
                <div class="col-sm-4">
                    <asp:TextBox ID="TextBox9" CssClass="form-control" runat="server"></asp:TextBox>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator8" Display="Dynamic" ForeColor="Red" ErrorMessage="Please enter Answer" ControlToValidate="TextBox9" runat="server" />
                </div> 
         </div>
             
         <div class="form-group">
                <label class="control-label col-sm-5">Password:</label>
                <div class="col-sm-4">
                   <asp:TextBox ID="TextBox6" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" Display="Dynamic" ForeColor="Red" ErrorMessage="Please enter Password" ControlToValidate="TextBox6" runat="server" />
            <asp:RegularExpressionValidator Display = "Dynamic" ControlToValidate = "TextBox6" ForeColor="Red" ID="RegularExpressionValidator3" ValidationExpression = "^[\s\S]{5,12}$" runat="server" ErrorMessage="Password must be in 5 to 12 character."></asp:RegularExpressionValidator>
                
                </div> 
         </div>
          
         <div class="form-group">
                <label class="control-label col-sm-5">Confirm_Password:</label>
                <div class="col-sm-4">
              <asp:TextBox ID="TextBox7" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" Display="Dynamic" ForeColor="Red" ErrorMessage="Please enter Password for conformation" ControlToValidate="TextBox7" runat="server" />
                <asp:CompareValidator ErrorMessage="Passwords do not match." ControlToCompare="TextBox6" ForeColor="Red"
                ControlToValidate="TextBox7" Display="Dynamic" runat="server" />

                </div> 
         </div>
                    <div class="form-group">
                       <div class="col-sm-offset-5 col-sm-4">
                        <asp:Button ID="Button1" CssClass=" w3-btn w3-light-blue w3-hover-blue w3-round-large" runat="server" Text="ADD" OnClick="Button1_Click" />
                    </div>
                    </div>
              <br />
        
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


