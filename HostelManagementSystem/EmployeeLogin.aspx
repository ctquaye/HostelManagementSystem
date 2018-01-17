<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmployeeLogin.aspx.cs" Inherits="HostelManagementSystem.EmployeeLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    
    
    <!-- Bootstrap core CSS     -->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet" />

    <!-- Animation library for notifications   -->
    <link href="assets/css/animate.min.css" rel="stylesheet"/>

    <!--  Paper Dashboard core CSS    -->
    <link href="assets/css/paper-dashboard.css" rel="stylesheet"/>

    <!--  CSS for Demo Purpose, don't include it in your project     -->
    <link href="assets/css/demo.css" rel="stylesheet" />

    <!--  Fonts and icons     -->
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" rel="stylesheet"/>
    <link href='https://fonts.googleapis.com/css?family=Muli:400,300' rel='stylesheet' type='text/css'/>
    <link href="assets/css/themify-icons.css" rel="stylesheet"/>
    <title>Login</title>
</head>
<body> 

     <div class="container">
       <div class="jumbotron" style="text-align:center; color:white; background-image:url(images/dark.jpg);" >
           <h3 style="font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;"> TruVine Hostel Management</h3>
           <br/>
            <h5 style="font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;">
                 Login
            </h5>
           </div>
         <div class="container">
             <form runat="server">
    <div class="row" style="margin-top:10%; margin-bottom:10%";>
    <div class="col-md-5">
        <div class="form-group">            
           <label> User Name</label>         
                <asp:TextBox runat="server" ID="tbox_username" class="form-control border-input" BorderColor="#666699"> </asp:TextBox>
            </div>

    </div>
               
        <div class="col-md-5">
            <div class="form-group">
           <label> Password</label>            
                <asp:TextBox runat="server" ID="tbox_password" TextMode="Password" class="form-control border-input" BorderColor="#666699"> </asp:TextBox>
           </div></div>
           <asp:Button runat="server" style="margin-left:5%" ID="emp_Login"  Class="btn btn-primary btn-round" Text="Login" OnClick="emp_Login_Click"  BackColor="#660066" ForeColor="White" BorderColor="Black" />           
      
   </div>
                 <div class="text-center">
            <div class="col" id="wrongLogin" runat="server"> <h5 style="color:red">wrong username/password combination</h5></div><br/>
            <div class="col" id="emptyLogin" runat="server"> <h5 style="color:red">username/password cannot be empty</h5></div>
            </div>
    </form>
       </div>
         </div>
        
</body>

</html>
