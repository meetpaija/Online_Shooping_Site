<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="forgotpwd.aspx.cs" Inherits="Online_shopping_system.customer.forgotpwd" %>

<!DOCTYPE html>



<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>Forgot Password</title>
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
  .c1{
      padding-left:200px;
      padding-right:200px;
      height:300px;
  }

  /* Hide the carousel text when the screen is less than 600 pixels wide */

  .hi{
      color:white;
  }

  .container-fluid{
      padding:0px;
  }

  .navbar navbar-toggle{
      color:white;
  }

  .btn-block:hover{
      color:darkslategrey;
      background-color:white;
  }

  .btn-block{
      background-color:gray;
      color:white;
       border-radius:10px 10px 10px 10px;
       text-shadow:10px;
  }

  </style>
</head>
<body>
    <form runat="server">
        <nav class="navbar glyphicon-text-color">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle"  data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
    <a class="navbar-brand" href="../aboutus.aspx">
         <img src="../images/logo_2.png" style="height:80px; margin-top:-30px;"  />
          </a></div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
        <li class="active"><a href="/master.aspx">Home</a></li>
         <li><a href="login.aspx"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      <li><a href="registration.aspx"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
      
      
      </ul>
    </div>
  </div>
</nav><br /><br />
 <div class="w3-row-padding c1">
     <div class=" w3-card-2">
     <div class="w3-container">
         <p class="w3-xlarge w3-text-blue w3-center">Forgot Password....</p><hr />
     </div>
     <asp:MultiView ID="MultiView1" runat="server">
         <asp:View ID="View1" runat="server">
             <div class="w3-container">
                      <div class="w3-container">
                          <h4 class="w3-center  w3-text-red">
                              <asp:Label ID="Label5" runat="server" Text=""></asp:Label></h4>
                          </div>
                 <div class="w3-container">
                      <div class="form-horizontal">
                            <div class="form-group">
                                    <label class="control-label col-sm-5">Enter email_id which is<br /> registered in your account:</label>
                                    <div class="col-sm-2">
                                   <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server"></asp:TextBox>
                                        <asp:RegularExpressionValidator runat="server" Display="Dynamic" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                                    ControlToValidate="TextBox2" ForeColor="Red" ErrorMessage="Invalid email address." />
                                    </div> 
                             </div>
                          <div class="form-group">
                       <div class="col-sm-offset-5 col-sm-4">
                        <asp:Button ID="Button2" CssClass=" w3-btn w3-light-blue w3-hover-blue w3-round-large" runat="server" Text="Next" OnClick="Button2_Click" />
                    </div>
                </div>
                          </div><br />
                 </div>
                 </div>
         </asp:View>
         <asp:View ID="View2" runat="server">
             <div class="w3-container">
                      <div class="w3-container">
                          <h4 class="w3-center  w3-text-red">
                              <asp:Label ID="Label1" runat="server" Text=""></asp:Label></h4>
                          </div>
                        <div class="form-horizontal">
                        <div class="form-group">
                            <label class="control-label col-sm-5">Your Security Question:</label>
                            <div class="col-sm-2">
                         <asp:Label ID="Label2"  CssClass="control-label" runat="server" Text=""></asp:Label>
                                </div>
                            </div> 
       
             
                             <div class="form-group">
                            <label class="control-label col-sm-5">Your Answer:</label>
                            <div class="col-sm-2">
                                     <asp:TextBox ID="TextBox3" CssClass="form-control" runat="server"></asp:TextBox>
                                </div>
                </div> 
                           
                    </div>
                 <div class="w3-container">
                        <asp:Button ID="Button1" CssClass=" w3-btn w3-light-blue w3-hover-blue w3-round-large col-sm-offset-2 col-sm-6" Width="100" runat="server" Text="Previous" OnClick="Button1_Click"  />
                        <asp:Button ID="Button3" CssClass=" w3-btn w3-light-blue w3-hover-blue w3-round-large col-sm-offset-3 col-sm-4" runat="server"  Text="Next" OnClick="Button3_Click"  />
                   </div>
                 <br /><br />
                </div>
         </asp:View>
         <asp:View ID="View3" runat="server">
             <div class="w3-container">
                      <div class="w3-container">
                          <h4 class="w3-center  w3-text-red">
                              <asp:Label ID="Label3" runat="server" Text=""></asp:Label></h4>
                          </div>
                 <div class="w3-container">
                     <div class="form-horizontal">
        <div class="form-group">
                <label class="control-label col-sm-5">Enter New Password:</label>
                <div class="col-sm-2">
                    <asp:TextBox ID="TextBox1" CssClass="form-control" TextMode="Password" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator Display = "Dynamic" ControlToValidate = "TextBox1" ForeColor="Red" ID="RegularExpressionValidator3" ValidationExpression = "^[\s\S]{5,12}$" runat="server" ErrorMessage="Password must be in 5 to 12 character."></asp:RegularExpressionValidator>
                  
         </div>
            </div>
            <br /><br />
            <div class="form-group">
                <label class="control-label col-sm-5">Confirm Password:</label>
                <div class="col-sm-2">
               <asp:TextBox ID="TextBox4" CssClass="form-control" ForeColor="Red" TextMode="Password" runat="server"></asp:TextBox>
                    <asp:CompareValidator ErrorMessage="Password does not match." ControlToCompare="TextBox1"
                ControlToValidate="TextBox4" Display="Dynamic" runat="server" />

                </div> 
         </div></div>
                 </div>
                 <div class="w3-container">
                        <asp:Button ID="Button4" CssClass=" w3-btn w3-light-blue w3-hover-blue w3-round-large col-sm-offset-2 col-sm-6" runat="server" Width="100" Text="Previous" OnClick="Button4_Click"  />
                        <asp:Button ID="Button5" CssClass=" w3-btn w3-light-blue w3-hover-blue w3-round-large col-sm-offset-3 col-sm-4" runat="server" Text="Done" OnClick="Button5_Click"  />
                   </div>
            </div><br />
         </asp:View>
     </asp:MultiView>
 </div>
     </div>
   <br /><br />
        <br /><br /><br />
       
             <footer class="container-fluid text-center ">
                 <br />
  <p>Online Store Copyright</p>
 <p>@ 1996-2016,moop.com,Inc.or its affilites</p>
    
  
</footer>
        </form>
    </body>
    </html>