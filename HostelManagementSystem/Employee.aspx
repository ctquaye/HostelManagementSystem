<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Employee.aspx.cs" Inherits="HostelManagementSystem.Employee" %>

<!doctype html>
<html lang="en">
<head>
	<meta charset="utf-8" />
	<link rel="apple-touch-icon" sizes="76x76" href="assets/img/apple-icon.png">
	<link rel="icon" type="image/png" sizes="96x96" href="assets/img/favicon.png">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

	<title>TruVine</title>

	<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
    <meta name="viewport" content="width=device-width" />


    <!-- Bootstrap core CSS     -->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet" />

    <!-- Animation library for notifications   -->
    <link href="assets/css/animate.min.css" rel="stylesheet"/>

    <!--  Paper Dashboard core CSS    -->
    <link href="assets/css/paper-dashboard.css" rel="stylesheet"/>

    <!--  CSS for Demo Purpose, don't include it in your project     -->
    <link href="assets/css/demo.css" rel="stylesheet" />

    <!--  Fonts and icons     -->
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" rel="stylesheet">
    <link href='https://fonts.googleapis.com/css?family=Muli:400,300' rel='stylesheet' type='text/css'>
    <link href="assets/css/themify-icons.css" rel="stylesheet">

     <link href="DataTables/DataTables/css/dataTables.bootstrap.css" type="text/css" rel="stylesheet">
    <link href="DataTables/DataTables/css/dataTables.bootstrap.min.css" type="text/css" rel="stylesheet">

    <link href="DataTables/DataTables/css/dataTables.foundation.css" type="text/css" rel="stylesheet">
    <link href="DataTables/DataTables/css/dataTables.foundation.min.css" type="text/css" rel="stylesheet">

    <link href="DataTables/DataTables/css/dataTables.semanticui.css" type="text/css" rel="stylesheet">
    <link href="DataTables/DataTables/css/dataTables.semanticui.min.css" type="text/css" rel="stylesheet">
    <!--   Core JS Files   -->
    
     <link href="DataTables/datatables.css" rel="stylesheet" type="text/css">
     <link href="DataTables/datatables.min.css" rel="stylesheet" type="text/css">


    <script src="DataTables/jQuery-3.2.1/jQuery-3.2.1.js" type="text/javascript"></script>
	<script src="DataTables/jQuery-3.2.1/jQuery-3.2.1.min.js" type="text/javascript"></script>
   
    <script src="DataTables/datatables.js"></script>
    <script src="DataTables/datatables.min.js"></script>
     <script>
       $(document).ready(function () {
           $('#gvEmpLog').DataTable();
       })
    </script>

</head>
<body>

<div class="wrapper">
	<div class="sidebar" data-background-color="red" data-active-color="danger">

    <!--
		Tip 1: you can change the color of the sidebar's background using: data-background-color="white | black"
		Tip 2: you can change the color of the active button using the data-active-color="primary | info | success | warning | danger"
	-->

    	<div class="sidebar-wrapper">
            <div class="logo">
                <a href="http://www.creative-tim.com" class="simple-text">
                    TruVine
                </a>
            </div>

            <ul class="nav">
                <li>
                    <a href="dashboard.html">
                        <i class="ti-panel"></i>
                        <p>Dashboard</p>
                    </a>
                </li>
                <li>
                    <a href="student.aspx">
                        <i class="ti-user"></i>
                        <p>Student Profile</p>
                    </a>
                </li>
                <li >
                    <a href="table.html">
                        <i class="ti-home"></i>
                        <p>Rooms</p>
                    </a>
                </li>
                <li>
                    <a href="employee2.aspx">
                        <i class="ti-folder"></i>
                        <p>Employee Profile</p>
                    </a>
                </li>
                <li class="active">
                    <a href="employee.aspx">
                        <i class="ti-lock"></i>
                        <p>Logins</p>
                    </a>
                </li>
                <li>
                    <a href="maps.html">
                        <i class="ti-map"></i>
                        <p>Maps</p>
                    </a>
                </li>
                <li>
                    <a href="notifications.html">
                        <i class="ti-bell"></i>
                        <p>Notifications</p>
                    </a>
                </li>
				<li class="active-pro">
                    <a href="upgrade.html">
                        <i class="ti-export"></i>
                        <p>Upgrade to PRO</p>
                    </a>
                </li>
            </ul>
    	</div>
    </div>

    <div class="main-panel">
		<nav class="navbar navbar-default">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar bar1"></span>
                        <span class="icon-bar bar2"></span>
                        <span class="icon-bar bar3"></span>
                    </button>
                    <a class="navbar-brand" href="#">Table List</a>
                </div>
                <div class="collapse navbar-collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <li>
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="ti-panel"></i>
								<p>Stats</p>
                            </a>
                        </li>
                        <li class="dropdown">
                              <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                    <i class="ti-bell"></i>
                                    <p class="notification">5</p>
									<p>Notifications</p>
									<b class="caret"></b>
                              </a>
                              <ul class="dropdown-menu">
                                <li><a href="#">Notification 1</a></li>
                                <li><a href="#">Notification 2</a></li>
                                <li><a href="#">Notification 3</a></li>
                                <li><a href="#">Notification 4</a></li>
                                <li><a href="#">Another notification</a></li>
                              </ul>
                        </li>
						<li>
                            <a href="#">
								<i class="ti-settings"></i>
								<p>Settings</p>
                            </a>
                        </li>
                    </ul>

                </div>
            </div>
        </nav>


        <div class="content">
            <div class="container-fluid">
                  <form runat="server">
                <div class="row">
                    <div class="col-md-12">
                        <div class="card" style="padding-left:20px; padding-right:20px">
                            <div class="header">
                                <h4 class="title">User Logins</h4>
                               <div class="col-md-5"> <p class="category">Manage your logins here</p></div><div class="col-md-3"><a id="hideGrid" href="#">collapse table</a></div>
                                <div class="col-md-1"><a id="showGrid" href="#">show table</a></div>
                            </div>
                                                                                 
       
                            <div id="hideTable"  runat="server" class="content table-responsive table-full-width">


   <asp:SqlDataSource ID="dsEmp" runat="server" ConnectionString="Data Source=localhost\SqlExpress; Initial Catalog=HostelDB; Persist Security Info=True; Integrated Security=SSPI"
    ProviderName="System.Data.SqlClient" 
        SelectCommand="SELECT * FROM [login_table]"        
        DeleteCommand="DELETE FROM [login_table] WHERE [login_id]=@login_id">           
             
             <DeleteParameters>
                 <asp:Parameter Name="login_id" Type="int32"/>
             </DeleteParameters>
    </asp:SqlDataSource>
    <br/><br/>
                                
    
    <asp:GridView ID="gvEmpLog" runat="server"  DataSourceID="dsEmp"  CssClass="table table-striped" 
         OnRowUpdating="gvEmp_RowUpdating1" OnRowEditing="gvEmp_RowEditing" OnRowCancelingEdit="gvEmp_RowCancelingEdit" 
          AutoGenerateColumns="false" DataKeyNames="login_id">
        
        <Columns>
            <asp:Boundfield HeaderText="id" Datafield="login_id" SortExpression="username"/>
            <asp:Boundfield HeaderText="username" Datafield="username" SortExpression="username"/>
            <asp:Boundfield HeaderText="password" DataField="password" SortExpression="password"/>            
            <asp:CommandField ShowEditButton="true" HeaderText="edit" ButtonType="Button" /> 
            <asp:CommandField ShowDeleteButton="true" HeaderText="delete" ButtonType="Button"/>
            <asp:HyperLinkField DataTextField="Name" DataNavigateUrlFields="Id" DataNavigateUrlFormatString="~/Details.aspx?Id={0}" HeaderText="Name" ItemStyle-Width = "150" />

            </Columns>

    </asp:GridView>
        
             

                            </div>
                                
            
                        </div>
                    </div>
                    

                    <div class="col-md-12">
                        <div class="card">
                            <div class="header">
                                <h4 class="title">Add New User</h4>
                                <p class="category">Enter a username and a password</p>
                            </div>
                            <div id="hideTable2" runat="server" class="content table-responsive table-full-width">
                                <div class="content">                                
                                    <div class="row">
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Employee First Name</label>
                                                <asp:TextBox ID="fname"  runat="server" class="form-control border-input"  BorderColor="#666699"></asp:TextBox><br/>
                                         <asp:RequiredFieldValidator runat="server" ErrorMessages="required field" ControlToValidate="fname" Display="Static" />
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Employee Last Name</label>
                                                <asp:TextBox ID="sname" runat="server" class="form-control border-input"  BorderColor="#666699"></asp:TextBox><br/>
                                        <asp:RequiredFieldValidator runat="server" ErrorMessages="required field" ControlToValidate="sname" Display="Static" />
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>Username</label>
                                                <asp:TextBox ID="username"  runat="server" class="form-control border-input" BorderColor="#666699"></asp:TextBox><br/>
                                        <asp:RequiredFieldValidator runat="server" ErrorMessages="required field" ControlToValidate="username" Display="Static"/>
                                            </div>
                                        </div>
                                    </div>                                                                                                        
                                                                               
                                     <div class="row">
                                         <div class="col-md-5">
                                             <div class="form-group">
                                                  <label>Enter Password</label>
                                                 <asp:TextBox ID="password"  runat="server" TextMode="Password" class="form-control border-input" BorderColor="#666699"></asp:TextBox><br/>   
                                       <asp:RequiredFieldValidator runat="server" ErrorMessages="required field" ControlToValidate="password" Display="Static"/>
                                             </div>
                                         </div>
                                         <div class="col-md-1"></div>
                                         <div class="col-md-5">
                                             <div class="form-group">
                                                  <label>Confirm Password</label>
                                                  <asp:TextBox ID="confirm_password" name="date"  TextMode="Password" runat="server" class="form-control border-input" BorderColor="#666699"></asp:TextBox><br/>
                                      <asp:RequiredFieldValidator runat="server" ErrorMessages="required field" ControlToValidate="confirm_password" Display="Static"/>      
                                             </div>
                                         </div>

                                     </div>  
                                    <div class="text-center">
                                        <asp:Button ID="AddLogin" runat="server" Text="Add" onClick="AddLogin_Click" style="margin-left:5%;" class="btn btn-info btn-fill btn-wd" BackColor="#660066" ForeColor="white" BorderColor="#666699" />
                                        
                                        <div id="success1" runat="server" style="color:blue"><h5>successfully added</h5></div>
                                        <div id="MustbeEmployed" runat="server" style="color:red"><h5>User must be an existing employee</h5></div>
                                        <div id="unmatchingPasswords" runat="server" style="color:red"><h5>Passwords do not match</h5></div>
                                        <div id="ExistingUser" runat="server" style="color:red"><h5>User already exists!</h5></div>
                                    </div>
                                    <div class="clearfix"></div>
                               
                            </div>

                            </div>
                        </div>
                    </div>


                </div>
            </form>
                 </div>
        </div>

        <footer class="footer">
            <div class="container-fluid">
                <nav class="pull-left">
                    <ul>

                        <li>
                            <a href="http://www.creative-tim.com">
                                Creative Tim
                            </a>
                        </li>
                        <li>
                            <a href="http://blog.creative-tim.com">
                               Blog
                            </a>
                        </li>
                        <li>
                            <a href="http://www.creative-tim.com/license">
                                Licenses
                            </a>
                        </li>
                    </ul>
                </nav>
				<div class="copyright pull-right">
                    &copy; <script>document.write(new Date().getFullYear())</script>, made with <i class="fa fa-heart heart"></i> by <a href="http://www.creative-tim.com">Creative Tim</a>
                </div>
            </div>
        </footer>


    </div>
</div>


</body>

    <!--   Core JS Files   -->
    <script src="assets/js/jquery-1.10.2.js" type="text/javascript"></script>
	<script src="assets/js/bootstrap.min.js" type="text/javascript"></script>

	<!--  Checkbox, Radio & Switch Plugins -->
	<script src="assets/js/bootstrap-checkbox-radio.js"></script>

	<!--  Charts Plugin -->
	<script src="assets/js/chartist.min.js"></script>

    <!--  Notifications Plugin    -->
    <script src="assets/js/bootstrap-notify.js"></script>

    <!--  Google Maps Plugin    -->
    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js"></script>

    <!-- Paper Dashboard Core javascript and methods for Demo purpose -->
	<script src="assets/js/paper-dashboard.js"></script>

	<!-- Paper Dashboard DEMO methods, don't include it in your project! -->
	<script src="assets/js/demo.js"></script>

    <script>
        $("#hideGrid").click(function () {

            $("#hideTable").hide();   return false;                 
                    
        })

        $("#showGrid").click(function () {

            $("#hideTable").show(); return false;

        })
    </script>
</html>
