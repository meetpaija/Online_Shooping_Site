<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="modify_product.aspx.cs" Inherits="Online_shopping_system.admin.modify_product" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <title>Modify Product..</title>
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
  
  <script type = "text/javascript" >

      
      function RadioCheck(rb) {
     
        var gv = document.getElementById("<%=GridView1.ClientID%>");
         var rbs = gv.getElementsByTagName("input");
         var row = rb.parentNode.parentNode;
         for (var i = 0; i < rbs.length; i++) {
             if (rbs[i].type == "radio") {
                 if (rbs[i].checked && rbs[i] != rb) {
                     rbs[i].checked = false;
                    
               
                }
            }
         }
    }    
      </script>
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
        $("input[name='modify']").click(function () {
            if ($("#product_name").is(":checked")) {
                $("#prod_name").show();
            } else {
                $("#prod_name").hide();
            }
            if ($("#description").is(":checked")) {
                $("#desc").show();
            } else {
                $("#desc").hide();
            }
            if ($("#price").is(":checked")) {
                $("#pri").show();
            } else {
                $("#pri").hide();
            }
            if ($("#discount_price").is(":checked")) {
                $("#dis_pri").show();
            } else {
                $("#dis_pri").hide();
            }
            if ($("#quantity").is(":checked")) {
                $("#qnty").show();
            } else {
                $("#qnty").hide();
            }
            if ($("#size").is(":checked")) {
                $("#prod_size").show();
            } else {
                $("#prod_size").hide();
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
  
    .footer {
      background-color: #f2f2f2;
      padding: 25px;
    }

    .rd{
        -webkit-column-count: 2;
        column-count: 2;
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
              <a class="w3-large " href="#">
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
    
        <div class="w3-container w3-card-4 w3-white w3-margin-bottom">
            <div class="w3-container">
                     <h3 style="color:blue;">Modify Any Product..</h3><hr />
                </div>
                  <div class="w3-container">
                     <h4 style="color:blue" class="w3-center"> <asp:Label ID="Label2" runat="server" Text=""></asp:Label></h4>
                 </div>
                
                <asp:MultiView ID="MultiView1" runat="server"   >
               <asp:View ID="View1" runat="server">
                  <div class="w3-container">
                      <div class="w3-container">
                          <h4 class="w3-center  w3-text-red">
                              <asp:Label ID="Label5" runat="server" Text=""></asp:Label></h4>
                      </div>
                      <div class="form-horizontal">
                    <div class="form-group">
                        <label class="control-label col-sm-5">Product Category:</label>
                        <div class="col-sm-4">
                             <asp:DropDownList  ID="DropDownList2" CssClass="form-control" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged"  >
                            <asp:ListItem>--Please Select Category--</asp:ListItem>
                             </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ForeColor="Red" Display="Dynamic" ErrorMessage="Please select the category" ControlToValidate="DropDownList2" runat="server" />
                  
                        </div> 
                 </div>
                  <div class="form-group">
                        <label class="control-label col-sm-5">Product Sub-Category:</label>
                        <div class="col-sm-4">
                             <asp:DropDownList  ID="DropDownList3" CssClass="form-control" runat="server" AutoPostBack="True"  >
                            <asp:ListItem>--Please Select Sub_Category--</asp:ListItem>
                             </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" ForeColor="Red" Display="Dynamic" ErrorMessage="Please select the sub-category" ControlToValidate="DropDownList3" runat="server" />
                        </div> 
                 </div>
                   <div class="form-group">
                       <div class="col-sm-offset-5 col-sm-4">
                        <asp:Button ID="Button1" CssClass=" w3-btn w3-light-blue w3-hover-blue w3-round-large" runat="server" Text="Next" OnClick="Button1_Click" />
                    </div>
                </div>
                    </div>  
                  </div>

                    </asp:View> 
					
               <asp:View ID="View2" runat="server">
                  <div class="w3-container">
                      <asp:Label ID="Label9" CssClass="w3-center w3-text-red" runat="server" Text=""></asp:Label>
                  </div>
            <div class="w3-container">
                <div class="form-horizontal">
                    <div class="form-group  w3-center">
                      <label class="control-label w3-text-blue">Select One Product Which You Want To Modify:</label>
                  </div>
                  <div class="form-group w3-center col-sm-offset-5">
                      <asp:GridView ID="GridView1" AutoGenerateColumns = "false" runat="server" CssClass="w3-table w3-bordered" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4">
                          <Columns>
                                <asp:TemplateField>
                                    <ItemTemplate>
                                       
                                            <asp:RadioButton ID="RadioButton1" runat="server"
                                                onclick = "javascript:RadioCheck(this);"/>
                                           <!-- <asp:HiddenField ID="HiddenField1" runat="server"
                                                Value = '<%#Eval("Product_Id")%>' />-->
                                        </ItemTemplate>
                                </asp:TemplateField>
                              <asp:BoundField DataField="Product_Id" HeaderText="Product_Id" />
                              <asp:BoundField DataField="Product_Name" HeaderText="Product_Name" />
                          </Columns>
                          <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                          <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                          <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                          <RowStyle BackColor="White" ForeColor="#003399" />
                          <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                          <SortedAscendingCellStyle BackColor="#EDF6F6" />
                          <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                          <SortedDescendingCellStyle BackColor="#D6DFDF" />
                          <SortedDescendingHeaderStyle BackColor="#002876" />
                      </asp:GridView>
                  </div>
                  <div class="form-group">
                       
                        <asp:Button ID="Button2" CssClass=" w3-btn w3-light-blue w3-hover-blue w3-round-large col-sm-offset-1 col-sm-4" runat="server" Text="Previous" OnClick="Button2_Click"  />
                        <asp:Button ID="Button3" CssClass=" w3-btn w3-light-blue w3-hover-blue w3-round-large col-sm-offset-2 col-sm-4" runat="server" Text="Next" OnClick="Button3_Click"  />
                    
                    </div>
                </div>
            </div>

                  </asp:View> 

               <asp:View ID="View3" runat="server">
                  <div class="w3-content w3-margin-top" style="max-width:800px;">
                      <div class="w3-row-padding">
                          
                          <div class="w3-container">
                                 <h4 style="color:blue" class="w3-center"> <asp:Label ID="Label4" runat="server" Text=""></asp:Label></h4>
                             </div>
                          <div class="w3-half">
                              <div class="w3-container w3-card-2  w3-light-grey ">
                                    <p>
                                    <input class="w3-radio" type="radio" id="product_name" name="modify" />
                                    <label class="w3-validate"> Product Name</label></p>
                   
                                    <p>
                                    <input class="w3-radio" type="radio" id="description" name="modify" />
                                    <label class="w3-validate"> Description</label></p>
                 
                                    <p>
                                    <input class="w3-radio" type="radio" id="price" name="modify" />
                                    <label class="w3-validate"> Price</label></p>
                                    <p>
                                    <p>
                                    <input class="w3-radio" type="radio" id="discount_price" name="modify" />
                                    <label class="w3-validate"> Discount Price</label></p>
                   
                                    <p>
                                    <input class="w3-radio" type="radio" id="quantity" name="modify" />
                                    <label class="w3-validate"> Quantity</label></p>
                                    <p>
                   
                                    <input class="w3-radio" type="radio" id="size" name="modify" />
                                    <label class="w3-validate"> Size</label></p>
                                    <p>
                
                            </div>
                          </div>
                          <div class="w3-half">
                              <div class="w3-card-1">
                                <div class="w3-container" id="prod_name" style="display: none">
                                      <div class="form-horizontal">
                                          <div class="form-group">
                                                <label class="control-label col-sm-6">New Product Name:</label>
                                                <div class=" col-sm-5">
                                                    <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server"></asp:TextBox>
                                                     </div>
                                              </div>

                                                <div class="form-group">
                                                    <div class="col-sm-offset-5 col-sm-4">
                                                        <asp:Button ID="Button6" CssClass=" w3-btn w3-light-grey w3-border w3-hover-dark-grey w3-round-large" runat="server" OnClick="Button6_Click" Text="Update" />
                                                    </div>
                                               </div>
                                        
                                 </div>
                                    </div>
                                <div class="w3-container" id="desc" style="display: none">
                                      <div class="form-horizontal">
                                          <div class="form-group">
                                                    <label class="control-label col-sm-6">New Description:</label>
                                                    <div class="col-sm-6">
                                                        <asp:TextBox ID="TextBox2" CssClass="form-control" TextMode="MultiLine" runat="server"></asp:TextBox>
                                                    </div> 
                                                </div>
                                                <div class="form-group">
                                                    <div class="col-sm-offset-5 col-sm-4">
                                                        <asp:Button ID="Button7" OnClick="Button7_Click" CssClass=" w3-btn w3-light-grey w3-border w3-hover-dark-grey w3-round-large" runat="server" Text="Update" />
                                                    </div>
                                               </div>
                                        
                                 </div>
                                    </div>
                                <div class="w3-container" id="pri" style="display: none">
                                      <div class="form-horizontal">
                                          <div class="form-group">
                                                <label class="control-label col-sm-6">New Price:</label>
                                                <div class="col-sm-5">
                                                    <asp:TextBox ID="TextBox3"  CssClass="form-control" runat="server"></asp:TextBox>
                                                     <asp:RegularExpressionValidator runat="server" Display="Dynamic" ForeColor="Red" ValidationExpression="^\d{0,8}(\.\d{1,4})?$" 
                                        ControlToValidate="TextBox3" ErrorMessage="Price is Invalid" />
                                                </div> 
                                            </div> 
                                                <div class="form-group">
                                                    <div class="col-sm-offset-5 col-sm-4">
                                                        <asp:Button ID="Button8" OnClick="Button8_Click" CssClass=" w3-btn w3-light-grey w3-border w3-hover-dark-grey w3-round-large" runat="server" Text="Update" />
                                                    </div>
                                               </div>
                                      
                                 </div>
                                        </div>  
                                <div class="w3-container" id="dis_pri" style="display: none">
                                      <div class="form-horizontal">
                                          <div class="form-group">
                                                    <label class="control-label col-sm-6">New Discount Price:</label>
                                                    <div class="col-sm-5">
                                                        <asp:TextBox ID="TextBox4" CssClass="form-control"  runat="server"></asp:TextBox>
                                                        <asp:RegularExpressionValidator runat="server" Display="Dynamic" ForeColor="Red" ValidationExpression="^\d{0,8}(\.\d{1,4})?$" 
                                            ControlToValidate="TextBox4" ErrorMessage="Price is Invalid" />
                                                    </div> 
                                                </div> 
                                                <div class="form-group">
                                                    <div class="col-sm-offset-5 col-sm-4">
                                                        <asp:Button ID="Button9" OnClick="Button9_Click" CssClass=" w3-btn w3-light-grey w3-border w3-hover-dark-grey w3-round-large" runat="server" Text="Update" />
                                                    </div>
                                               </div>
                                        </div>
                                 </div>   
                                <div class="w3-container" id="qnty" style="display: none">
                                      <div class="form-horizontal">
                                          <div class="form-group">
                                                        <label class="control-label col-sm-6">New Quantity:</label>
                                                        <div class="col-sm-5">
                                                            <asp:TextBox ID="TextBox5" CssClass="form-control"  runat="server"></asp:TextBox>
                                                            <asp:RegularExpressionValidator runat="server" Display="Dynamic" ForeColor="Red" ValidationExpression="^\d{0,5}$" 
                                                ControlToValidate="TextBox5" ErrorMessage="Quantity must be less than 6 digit" />
                                                        </div> 
                                                    </div>
                                                <div class="form-group">
                                                    <div class="col-sm-offset-5 col-sm-4">
                                                        <asp:Button ID="Button10" OnClick="Button10_Click" CssClass=" w3-btn w3-light-grey w3-border w3-hover-dark-grey w3-round-large" runat="server" Text="Update" />
                                                    </div>
                                               </div>                  
                                 </div>
                                    </div>
                                <div class="w3-container" id="prod_size" style="display: none">
                                      <div class="form-horizontal">
                                          <div class="form-group">
                                                    <label class="control-label col-sm-6">New Product size:</label>
                                                    <div class="col-sm-5">
                                                        <asp:TextBox ID="TextBox6"  CssClass="form-control" runat="server"></asp:TextBox>
                                                          
                                                    </div> 
                                                </div>
                                                <div class="form-group">
                                                    <div class="col-sm-offset-5 col-sm-4">
                                                        <asp:Button ID="Button11" OnClick="Button11_Click" CssClass=" w3-btn w3-light-grey w3-border w3-hover-dark-grey w3-round-large" runat="server" Text="Update" />
                                                    </div>
                                               </div>
                                     
                                 </div>
                                    </div>
                                
                          </div>
                              </div>
                        </div>
                        </div>     
             <br />
                          
                   <div class="w3-container">
                        <asp:Button ID="Button4" CssClass=" w3-btn w3-light-blue w3-hover-blue w3-round-large col-sm-offset-1 col-sm-4" runat="server" Text="Previous" OnClick="Button4_Click"  />
                        <asp:Button ID="Button5" CssClass=" w3-btn w3-light-blue w3-hover-blue w3-round-large col-sm-offset-2 col-sm-4" runat="server" Text="Done" OnClick="Button5_Click"  />
                   </div>
                   <br />
                  </asp:View> 
               
            </asp:MultiView>
           
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

