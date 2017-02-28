<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="add_product.aspx.cs" Inherits="Online_shopping_system.admin.add_product" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <title>Add Product..</title>
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
        
          <li><a " class="a1" href="logout.aspx"  ><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
					
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
                <a class="w3-large" href="#">
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
            <h3 style="color:blue;">Add New Product..</h3><hr />
        </div>
          <div class="w3-container">
             <h4 style="color:blue" class="w3-center"> <asp:Label ID="Label2" runat="server" Text=""></asp:Label></h4>
          </div>
          <div class="w3-container">
              <div class="form-horizontal">
                    <div class="form-group">
                        <label class="control-label col-sm-5">Product Category:</label>
                        <div class="col-sm-4">
                             <asp:DropDownList  ID="DropDownList1" CssClass="form-control" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" >
                            <asp:ListItem>--Please Select Category--</asp:ListItem>
                             </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ForeColor="Red" Display="Dynamic" ErrorMessage="Please select the category" ControlToValidate="DropDownList1" runat="server" />
                  
                        </div> 
                 </div>
                  <div class="form-group">
                        <label class="control-label col-sm-5">Product Sub-Category:</label>
                        <div class="col-sm-4">
                             <asp:DropDownList  ID="DropDownList2" CssClass="form-control" runat="server" AutoPostBack="True" >
                            <asp:ListItem>--Please Select Sub_Category--</asp:ListItem>
                             </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" ForeColor="Red" Display="Dynamic" ErrorMessage="Please select the sub-category" ControlToValidate="DropDownList2" runat="server" />
                  
                        </div> 
                 </div>
                    <div class="form-group">
                        <label class="control-label col-sm-5">Product Name:</label>
                        <div class="col-sm-4">
                            <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ErrorMessage="Please enter Product_name" ForeColor="Red" Display="Dynamic" ControlToValidate="TextBox1" runat="server" />
                        </div> 
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-5">Description:</label>
                        <div class="col-sm-2">
                            <asp:TextBox ID="TextBox2" CssClass="form-control" TextMode="MultiLine" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ErrorMessage="Please give some description" ForeColor="Red" Display="Dynamic" ControlToValidate="TextBox2" runat="server" />
                        </div> 
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-5">Original Price:</label>
                        <div class="col-sm-4">
                            <asp:TextBox ID="TextBox3"  CssClass="form-control" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ErrorMessage="Please enter original_price" ForeColor="Red" Display="Dynamic" ControlToValidate="TextBox3" runat="server" />
                            <asp:RegularExpressionValidator runat="server" Display="Dynamic" ForeColor="Red" ValidationExpression="^\d{0,8}(\.\d{1,4})?$" 
                ControlToValidate="TextBox3" ErrorMessage="Price is Invalid" />
                        </div> 
                    </div>
                  <div class="form-group">
                        <label class="control-label col-sm-5">Discount Price:</label>
                        <div class="col-sm-4">
                            <asp:TextBox ID="TextBox4" CssClass="form-control"  runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ErrorMessage="Please enter discount_price" ForeColor="Red" Display="Dynamic" ControlToValidate="TextBox4" runat="server" />
                            <asp:RegularExpressionValidator runat="server" Display="Dynamic" ForeColor="Red" ValidationExpression="^\d{0,8}(\.\d{1,4})?$" 
                ControlToValidate="TextBox4" ErrorMessage="Price is Invalid" />
                        </div> 
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-5">Quantity:</label>
                        <div class="col-sm-4">
                            <asp:TextBox ID="TextBox5" CssClass="form-control"  runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ErrorMessage="Please enter original_price" ForeColor="Red" Display="Dynamic" ControlToValidate="TextBox5" runat="server" />
                            <asp:RegularExpressionValidator runat="server" Display="Dynamic" ForeColor="Red" ValidationExpression="^\d{0,5}$" 
                ControlToValidate="TextBox5" ErrorMessage="Quantity must be less than 6 digit" />
                        </div> 
                    </div>
                     <div class="form-group">
                        <label class="control-label col-sm-5">Product size:</label>
                        <div class="col-sm-4">
                            <asp:TextBox ID="TextBox6"  CssClass="form-control" runat="server"></asp:TextBox>
                        </div> 
                    </div>
                    <div class="form-group">
                       <div class="col-sm-offset-5 col-sm-4">
                        <asp:Button ID="Button1" CssClass=" w3-btn w3-light-blue w3-hover-blue w3-round-large" runat="server" Text="Submit" OnClick="Button1_Click" />
                    </div>
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

