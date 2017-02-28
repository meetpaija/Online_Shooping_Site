
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Online_shopping_system.customer.login" %>

<!DOCTYPE html>



<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>Login Form</title>
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
</nav>
 
        <center>
    <form id="form1" runat="server">

        <br />
            
            <asp:Label ID="Label1" CssClass="w3-large" runat="server" Text=""></asp:Label>
  

        <br /><hr />
       <fieldset class="form-group">
           <legend style="color:slategrey;  font-family:'Times New Roman', Times, serif" class="w3-xlarge">Login</legend>
    <div class="w3-row-padding">
        <div class="w3-third">
            <p style="margin-top:30px; margin-left:-30px; " ><img  src="../images/avatar-6.png" /></p>
        </div>
        <div class="w3-twothird w3-card-2" style="margin-left:-20px; "><br /><br />
     <div class="form-horizontal">    
        <div class="form-group">
            <div class="col-sm-offset-5 col-sm-3">
            <asp:DropDownList CssClass="form-control" ID="DropDownList1" runat="server">
                <asp:ListItem>login through customer</asp:ListItem>
                <asp:ListItem>login through admin</asp:ListItem>
            </asp:DropDownList>
                </div>  
        </div>
             <br />
             <div class="form-group">
      <label class="control-label col-sm-5">Username:</label>
      <div class="col-sm-2">
          <asp:TextBox ID="TextBox1" CssClass="form-control" runat ="server"/>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ForeColor="Red" ErrorMessage="Please enter Username" ControlToValidate="TextBox1" runat="server" />
          
      </div> 
    </div>
             <br />
       
              <div class="form-group">
                     <label class="control-label col-sm-5">Password:</label>
                    <div class="col-sm-2">
                            <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" TextMode="Password"/>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ForeColor="red" runat="server" ControlToValidate="TextBox2" ErrorMessage="Please enter Password"/>
                            <asp:RegularExpressionValidator Display = "Dynamic" ControlToValidate = "TextBox2" ForeColor="Red" ID="RegularExpressionValidator3" ValidationExpression = "^[\s\S]{5,12}$" runat="server" ErrorMessage="Password must be in 5 to 12 character."></asp:RegularExpressionValidator>
                
                    </div>
              </div>
    
     <br />
        
           <div class="form-group">
               <div class="col-sm-offset-5 col-sm-2">
    <asp:Button ID="Button1" CssClass="btn-block  w3-btn w3-bordered" runat="server" OnClick="Button1_Click" Text="Login" />
               </div>
               </div>
              <br />

        <div class="form-group">
            <div class="col-sm-offset-5 col-sm-2">
                    <a href="forgotpwd.aspx" class="navbar-link " >Forgot Password</a>
            </div>
        </div>

   </div>
            </div>
        </div>
        </fieldset>
  </form>

       </center>
    <br />
  
           <footer class="container-fluid text-center ">
                 <br />
  <p>Online Store Copyright</p>
 <p>@ 1996-2016,moop.com,Inc.or its affilites</p>
    
  
</footer>
</body>
</html>