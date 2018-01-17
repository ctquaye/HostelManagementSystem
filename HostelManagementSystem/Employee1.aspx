<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Employee1.aspx.cs" Inherits="HostelManagementSystem.Employee1" %>

<!DOCTYPE html>

<html lang="en">
<head>
	<meta charset="utf-8" />
	<link rel="apple-touch-icon" sizes="76x76" href="assets/img/apple-icon.png">
	<link rel="icon" type="image/png" sizes="96x96" href="assets/img/favicon.png">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

    <!--   Core JS Files   -->
    <script src="assets/js/jquery-1.10.2.js" type="text/javascript"></script>
	<script src="assets/js/bootstrap.min.js" type="text/javascript"></script>
<title>TruVine</title>
</head>
<body>
            
                            <div class="header">
                                <h4 class="title">User Logins</h4>
                               <div class="col-md-5"> <p class="category">Manage your logins here</p></div><div class="col-md-3"><a id="hideGrid" href="#">collapse table</a></div>
                                <div class="col-md-1"><a id="showGrid" href="#">show table</a></div>
                            </div>                           

                         <form runat="server">   
       
                            <div id="hideTable"  runat="server" class="content table-responsive table-full-width">
            
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
           
          
             <UpdateParameters>
                 <asp:parameter Name="emp_fname" type="string" />
                 <asp:parameter Name="emp_sname" type="string"/>
                 <asp:parameter Name="dob" type="string" />
                 <asp:parameter Name="address" type="string"/>
                 <asp:parameter Name="phone" type="string"/>
                 <asp:parameter Name="email" type="string"/>
                 <asp:parameter Name="job_title" type="string"/>
                 <asp:parameter Name="Hostel_id" type="int32"/>                          
             </UpdateParameters>
             <DeleteParameters>
                 <asp:Parameter Name="employee_id" Type="int32"/>
             </DeleteParameters>
    </asp:SqlDataSource>   
                                         
    <br/><br/>


    <asp:GridView ID="gvEmp" runat="server"  DataSourceID="dsAddEmp" CssClass="table table-striped" 
        AutoGenerateColumns="false" GridLines="Horizontal" OnRowDataBound="gvEmp_RowDataBound" DataKeyNames="employee_id">
        <Columns>
            <asp:Boundfield HeaderText="hostelid" DataField="hostel_id" SortExpression="hostel_id"/> 
            <asp:Boundfield HeaderText="First Name" Datafield="emp_fname" SortExpression="emp_fname"/>
            <asp:Boundfield HeaderText="Last Name" DataField="emp_sname" SortExpression="emp_sname"/> 
            <asp:Boundfield HeaderText="Date of Birth" DataField="dob" SortExpression="dob"/> 
            <asp:Boundfield HeaderText="Address" DataField="address" SortExpression="address"/> 
            <asp:Boundfield HeaderText="Email" DataField="email" SortExpression="email"/>  
            <asp:Boundfield HeaderText="phone" DataField="phone" SortExpression="phone"/> 
            <asp:Boundfield HeaderText="Job Title" DataField="job_title" SortExpression="job_title"/>             
            <asp:Boundfield HeaderText="Hostel" DataField="Hostel_name" SortExpression="Hostel_name"/>           
            <asp:CommandField ShowEditButton="true"/>
            <asp:CommandField ShowDeleteButton="true"/>
            </Columns>

    </asp:GridView>
                 
                            </div>
</form>
                            <div class="col-md-12">
                        <div class="card">
                            <div class="header">
                                <h4 class="title">Add New User</h4>
                                <p class="category">Enter employee details</p>
                            </div>
                            <div id="hideTable2" runat="server" class="content table-responsive table-full-width">
                                <div class="content">                                     
    <form method="post" action="Employee.aspx" id="formPanel" >
                                                                   
                                    <div class="row">
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Employee First Name</label>
                                                <input type="text" ID="firstname"   class="form-control border-input" /><br/>
                                         
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Employee Last Name</label>
                                                <input ID="emp_sname"  class="form-control border-input"/><br/>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>Date of Birth</label>
                                                <input ID="dob" class="form-control border-input"><br/>
                                            </div>
                                        </div>
                                    </div>                                                                                                        
                                                                                                                   
                                     <div class="row">
                                         <div class="col-md-5">
                                             <div class="form-group">
                                                  <label>Address</label>
                                                 <input ID="address"  class="form-control border-input"/><br/>   
                                       
                                             </div>
                                         </div>
                                         <div class="col-md-1"></div>
                                         <div class="col-md-5">
                                             <div class="form-group">
                                                  <label>Phone</label>
                                                  <input ID="phone" name="date" class="form-control border-input"/><br/>
                                            
                                             </div>
                                         </div>

                                     </div>  

                                    <div class="row">
                                         <div class="col-md-5">
                                             <div class="form-group">
                                                  <label>Email</label>
                                                 <input ID="email"   class="form-control border-input"/><br/>   
                                       
                                             </div>
                                         </div>
                                         <div class="col-md-1"></div>
                                         <div class="col-md-5">
                                             <div class="form-group">
                                                  <label>Job Title</label>
                                                  <input ID="job_title" name="date"  class="form-control border-input"/><br/>
                                            
                                             </div>
                                         </div>

                                     </div>  

                                    <div class="row">
                                        <div class="col-md-5">
                                        <div class="form-group">
                                <label>Hostel</label>    
                                 <select ID="hostel_id" style="margin-left:20%;" class="form-control">
                                           
                                    </select>
                                     </div>
                                            </div>
                                    </div>


                                    <div class="text-center">
                                        <Button ID="AddEmp" type="submit" onClick="AddEmp_Click" style="margin-left:5%;" class="btn btn-info btn-fill btn-wd"/>
                                                                                
                                    </div>
                                    <div class="clearfix"></div>
                               </form>
                            </div>

                            </div>
                        </div>
                    </div>  
            
                   
               
          
</body>
       
	
</html>