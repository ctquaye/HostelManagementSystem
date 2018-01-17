<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Employee2.aspx.cs" Inherits="HostelManagementSystem.Employee2" %>

<!DOCTYPE html>

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
       $(function () {
           $("#gvEmp").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
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
                <li class="active">
                    <a href="Employee2.aspx">
                        <i class="ti-folder"></i>
                        <p>Employee Profile</p>
                    </a>
                </li>
                <li>
                    <a href="employee.aspx">
                        <i class="ti-lock"></i>
                        <p>Logins</p>
                    </a>
                </li>
                <li>
                    <a href="finance.aspx">
                        <i class="ti-map"></i>
                        <p>finances</p>
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
                           

                            
      

                            <div id="hideTable"  runat="server" class="content table-responsive table-full-width" >
 
                          <asp:SqlDataSource ID="dsAddEmp" runat="server" 
    ConnectionString="Data Source=localhost\SqlExpress; Initial Catalog=HostelDb; Persist Security Info=True; Integrated Security=SSPI"
    ProviderName="System.Data.SqlClient" 
           InsertCommand="INSERT INTO [emp_table]  ([emp_fname], [emp_sname], [dob], [address], [phone], [email], [job_title], [hostel_id]) VALUES (@emp_fname, @emp_sname, @dob, @address, @phone, @email, @job_title, @hostel_id)"
            SelectCommand="Select employee_id, emp_fname, emp_sname,dob, emp_table.address, emp_table.hostel_id, emp_table.phone,email, job_title, Hostel_name from emp_table, Hostel_Table WHERE Hostel_Table.Hostel_id=emp_table.hostel_id;"
            UpdateCommand="UPDATE [emp_table] SET emp_fname=@emp_fname, emp_sname=@emp_sname, dob=@dob, address=@address, phone=@phone, email=@email, job_title=@job_title, hostel_id=@hostel_id WHERE employee_id=@employee_id;"
            DeleteCommand="DELETE FROM [emp_table] WHERE [employee_id]=@employee_id"> 
                                                          
             <InsertParameters>                 
                 <asp:controlparameter Name="emp_fname" controlid="emp_fname" />
                 <asp:controlparameter Name="emp_sname" controlid="emp_sname"/>
                 <asp:controlparameter Name="dob" controlid="dob" />
                 <asp:controlparameter Name="address" controlid="address"/>
                 <asp:controlparameter Name="phone" controlid="phone"/>
                 <asp:controlparameter Name="email" controlid="email"/>
                 <asp:controlparameter Name="job_title" controlid="job_title"/>
                 <asp:controlparameter Name="Hostel_id" controlid="Hostel_id"/>
             </InsertParameters>
           
                      
             <DeleteParameters>
                 <asp:Parameter Name="employee_id" Type="int32"/>
             </DeleteParameters>
    </asp:SqlDataSource>   
                                         
    <br/><br/>
      
          
    <asp:GridView ID="gvEmp" runat="server"  DataSourceID="dsAddEmp" OnRowCommand="gvEmp_RowCommand"
        onrowEditing="gvEmp_RowEditing" OnRowCancelingEdit="gvEmp_RowCancelingEdit" OnRowUpdating="gvEmp_RowUpdating" OnRowDataBound="gvEmp_RowDataBound"
         AutoGenerateColumns="false" CssClass="table table-striped" DataKeyNames="employee_id">
       
         <Columns>
               
             <asp:Boundfield HeaderText="hostelid" DataField="hostel_id" SortExpression="hostel_id"/> 
             <asp:Boundfield HeaderText="emp_id" DataField="employee_id" SortExpression="employee_id"/> 
            <asp:Boundfield HeaderText="First Name" Datafield="emp_fname" SortExpression="emp_fname"/>
            <asp:Boundfield HeaderText="Last Name" DataField="emp_sname" SortExpression="emp_sname"/> 
            <asp:Boundfield HeaderText="Date of Birth" DataField="dob" SortExpression="dob"/> 
            <asp:Boundfield HeaderText="Address" DataField="address" SortExpression="address"/> 
             <asp:Boundfield HeaderText="Phone" DataField="phone" SortExpression="phone"/> 
            <asp:Boundfield HeaderText="Email" DataField="email" SortExpression="email"/>  
            <asp:Boundfield HeaderText="Job Title" DataField="job_title" SortExpression="job_title"/> 
            <asp:Boundfield HeaderText="Hostel" DataField="Hostel_name" SortExpression="Hostel_name"/>           
             <asp:CommandField ShowEditButton="true" HeaderText="edit" ButtonType="Button" /> 
            <asp:CommandField ShowDeleteButton="true" HeaderText="delete" ButtonType="Button"/>
             
           <asp:HyperlinkField headerText="details" Text="details"  runat="server" 
               DataNavigateUrlFields="Employee_id,emp_fname,emp_sname,address"
               DataNavigateUrlFormatString="EmpDetails.aspx?Employee_id={0}&emp_fname={1}&emp_sname={2}&address={3}"
                />
            
            </Columns>
         </asp:GridView>
        
   
                   
            </div>
                              
            
                        </div></div>
                       
                    


                    <div class="col-md-12">
                        <div class="card">
                            <div class="header">
                                <h4 class="title">Add New User</h4>
                                <p class="category">Enter employee details</p>
                            </div>
                            <div id="hideTable2" runat="server" class="content table-responsive table-full-width">
                                <div class="content">                                     
   
                                                                   
                                    <div class="row">
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Employee First Name</label>
                                                <asp:TextBox ID="emp_fname"  runat="server" class="form-control border-input"  BorderColor="#666699"></asp:TextBox><br/>
                                         <asp:RequiredFieldValidator runat="server" ErrorMessages="required field" ControlToValidate="emp_fname" Display="Static" />
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Employee Last Name</label>
                                                <asp:TextBox ID="emp_sname" runat="server" class="form-control border-input"  BorderColor="#666699"></asp:TextBox><br/>
                                        <asp:RequiredFieldValidator runat="server" ErrorMessages="required field" ControlToValidate="emp_sname" Display="Static" />
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>Date of Birth</label>
                                                <asp:TextBox ID="dob"  runat="server" class="form-control border-input" BorderColor="#666699"></asp:TextBox><br/>
                                        <asp:RequiredFieldValidator runat="server" ErrorMessages="required field" ControlToValidate="dob" Display="Static"/>
                                            </div>
                                        </div>
                                    </div>                                                                                                        
                                                                               
                                     <div class="row">
                                         <div class="col-md-5">
                                             <div class="form-group">
                                                  <label>Address</label>
                                                 <asp:TextBox ID="address"  runat="server" class="form-control border-input" BorderColor="#666699"></asp:TextBox><br/>   
                                       <asp:RequiredFieldValidator runat="server" ErrorMessages="required field" ControlToValidate="address" Display="Static"/>
                                             </div>
                                         </div>
                                         <div class="col-md-1"></div>
                                         <div class="col-md-5">
                                             <div class="form-group">
                                                  <label>Phone</label>
                                                  <asp:TextBox ID="phone" name="date" runat="server" class="form-control border-input" BorderColor="#666699"></asp:TextBox><br/>
                                      <asp:RequiredFieldValidator runat="server" ErrorMessages="required field" ControlToValidate="phone" Display="Static"/>      
                                             </div>
                                         </div>

                                     </div>  

                                    <div class="row">
                                         <div class="col-md-5">
                                             <div class="form-group">
                                                  <label>Email</label>
                                                 <asp:TextBox ID="email"  runat="server" class="form-control border-input" BorderColor="#666699"></asp:TextBox><br/>   
                                       <asp:RequiredFieldValidator runat="server" ErrorMessages="required field" ControlToValidate="email" Display="Static"/>
                                             </div>
                                         </div>
                                         <div class="col-md-1"></div>
                                         <div class="col-md-5">
                                             <div class="form-group">
                                                  <label>Job Title</label>
                                                  <asp:TextBox ID="job_title" name="date" runat="server" class="form-control border-input" BorderColor="#666699"></asp:TextBox><br/>
                                      <asp:RequiredFieldValidator runat="server" ErrorMessages="required field" ControlToValidate="job_title" Display="Static"/>      
                                             </div>
                                         </div>

                                     </div>  

                                    <div class="row">
                                        <div class="col-md-5">
                                        <div class="form-group">
                                <label>Hostel</label>    
                                 <asp:DropDownList ID="hostel_id" style="margin-left:20%;" runat="server" CssClass="form-control" BorderColor="#666699" AppendDataBoundItems="true">
                                   <asp:ListItem Text="<Select Hostel>" Value="0" />
        
                                    </asp:DropDownList>
                                     </div>
                                            </div>
                                    </div>


                                    <div class="text-center">
                                        <asp:Button ID="AddEmp" runat="server" Text="Add" onClick="AddEmp_Click" style="margin-left:5%;" class="btn btn-info btn-fill btn-wd" BackColor="#660066" ForeColor="white" BorderColor="#666699" />
                                                                                
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