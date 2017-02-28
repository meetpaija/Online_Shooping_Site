<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registration.aspx.cs" Inherits="Online_shopping_system.customer.registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>MOOP:Online Shopping System</title>
    

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

  .navbar navbar-toggle{
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

  </style>
</head>
<body>

<nav class="navbar glyphicon-text-color">
  <div  class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle"  data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
     <a class="navbar-brand" href="../aboutus.aspx">
         <img src="../images/logo_2.png" style="height:80px; margin-top:-30px;"  />
          </a>

    </div>
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
       
    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        <br />
     
        <fieldset class="class1">
            <legend style="color:darkslategrey; font-family:'Times New Roman', Times, serif" class="w3-xlarge">Registration <asp:Label ID="Label2" runat="server" CssClass=" w3-large w3-text-red" Text="">(Only For Customer..)</asp:Label></legend>
     <div class="form-horizontal">
        <div class="form-group">
                <label class="control-label col-sm-5">Username:</label>
                <div class="col-sm-2">
                    <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvUser" ErrorMessage="Please enter Username" ForeColor="Red" Display="Dynamic" ControlToValidate="TextBox1" runat="server" />
                 </div> 
        </div>
        <div class="form-group">
                <label class="control-label col-sm-5">FirstName:</label>
                <div class="col-sm-2">
                    <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ErrorMessage="Please enter FirstName" ForeColor="Red" Display="Dynamic" ControlToValidate="TextBox2" runat="server" />
                 </div> 
            </div>
            
         <div class="form-group">
                <label class="control-label col-sm-5">LastName:</label>
                <div class="col-sm-2">
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
                <div class="col-sm-2">
                <asp:TextBox ID="TextBox4" CssClass="form-control"  runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ForeColor="Red" Display="Dynamic" ErrorMessage="Please enter Email_Id" ControlToValidate="TextBox4" runat="server" />
                <asp:RegularExpressionValidator runat="server" Display="Dynamic" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                ControlToValidate="TextBox4" ErrorMessage="Invalid email address." />
                </div> 
         </div>
       
      <div class="form-group">
                <label class="control-label col-sm-5">State:</label>
                <div class="col-sm-2">
                 <asp:DropDownList  ID="DropDownList1" CssClass="form-control" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" >
                <asp:ListItem>--Please Select State--</asp:ListItem>
            </asp:DropDownList>
                </div> 
         </div>
           
          <div class="form-group">
                <label class="control-label col-sm-5"> City:</label>
                <div class="col-sm-2">
                 <asp:DropDownList ID="DropDownList2" CssClass="form-control" runat="server" AutoPostBack="true">
                <asp:ListItem>--Please Select City--</asp:ListItem>
            </asp:DropDownList>
                </div> 
         </div>
           
          <div class="form-group">
                <label class="control-label col-sm-5"> Address:</label>
                <div class="col-sm-2">
                  <asp:TextBox ID="TextBox8" CssClass="form-control" TextMode="MultiLine" Rows="4" Width="200" runat="server"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ForeColor="Red" Display="Dynamic" ErrorMessage="Please enter Proper Address" ControlToValidate="TextBox8" runat="server" />
                  
                </div> 
         </div>
               
         <div class="form-group">
                <label class="control-label col-sm-5"> Mobile_No:</label>
                <div class="col-sm-2">
                  <asp:TextBox ID="TextBox5" CssClass="form-control" runat="server"></asp:TextBox>
               <asp:RequiredFieldValidator ID="RequiredFieldValidator7" Display="Dynamic" ForeColor="Red" ErrorMessage ="Please enter Mobile_no" ControlToValidate="TextBox5" runat="server" />
               <asp:RegularExpressionValidator runat="server" Display="Dynamic" ForeColor="Red" ValidationExpression="^[0-9]{10}$" 
                ControlToValidate="TextBox5" ErrorMessage="Invalid mobile_no." />
                </div> 
         </div>
          
         <div class="form-group">
                <label class="control-label col-sm-5">Select Security Question:</label>
                <div class="col-sm-2">
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
                <div class="col-sm-2">
                    <asp:TextBox ID="TextBox9" CssClass="form-control" runat="server"></asp:TextBox>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator8" Display="Dynamic" ForeColor="Red" ErrorMessage="Please enter Answer" ControlToValidate="TextBox9" runat="server" />
                </div> 
         </div>
             
         <div class="form-group">
                <label class="control-label col-sm-5">Password:</label>
                <div class="col-sm-2">
                   <asp:TextBox ID="TextBox6" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" Display="Dynamic" ForeColor="Red" ErrorMessage="Please enter Password" ControlToValidate="TextBox6" runat="server" />
                <asp:RegularExpressionValidator Display = "Dynamic" ControlToValidate = "TextBox6" ForeColor="Red" ID="RegularExpressionValidator3" ValidationExpression = "^[\s\S]{5,12}$" runat="server" ErrorMessage="Password must be in 5 to 12 character."></asp:RegularExpressionValidator>
                </div> 
         </div>
          
         <div class="form-group">
                <label class="control-label col-sm-5">Confirm_Password:</label>
                <div class="col-sm-2">
              <asp:TextBox ID="TextBox7" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" Display="Dynamic" ForeColor="Red" ErrorMessage="Please enter Password for conformation" ControlToValidate="TextBox7" runat="server" />
                <asp:CompareValidator ErrorMessage="Passwords do not match." ControlToCompare="TextBox6" ForeColor="Red"
                ControlToValidate="TextBox7" Display="Dynamic" runat="server" />

                </div> 
         </div>
            
      <div class="form-group">
               <div class="col-sm-offset-5 col-sm-2">
    <asp:Button ID="Button1" CssClass="btn-block w3-btn w3-bordered" runat="server" OnClick="Button1_Click" Text="Submit" />
               </div>
        </div>
              <br />
        
         </div>
            </fieldset>
       <br />
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
