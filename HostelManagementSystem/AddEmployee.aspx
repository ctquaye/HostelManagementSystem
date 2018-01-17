<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddEmployee.aspx.cs" Inherits="HostelManagementSystem.AddEmployee" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server" >

     <script type="text/javascript">
         $(document).ready(function (){
             $("id$=datepicker").datepicker();
         });
        
    </script>

     <br/><br/>   
         
    <div class="container" style=" background-color:white; border-radius:20px 20px 20px 20px; " >
    <asp:SqlDataSource ID="dsAddEmployee" runat="server" 
    ConnectionString="Data Source=localhost\SqlExpress; Initial Catalog=HostelDb; Persist Security Info=True; Integrated Security=SSPI"
    ProviderName="System.Data.SqlClient" 
             InsertCommand="INSERT INTO [emp_table] 
            ([emp_fname], [emp_sname], [dob], [address], [phone], [email], [job_title], [hostel_id]) VALUES (@emp_fname, @emp_sname, @dob, @address, @phone, @email, @job_title, @hostel_id)">
             <InsertParameters>                 
                 <asp:controlparameter Name="emp_fname" controlid="emp_fname" />
                 <asp:controlparameter Name="emp_sname" controlid="emp_sname"/>
                 <asp:controlparameter Name="dob" controlid="dob" Type="String"/>
                 <asp:controlparameter Name="address" controlid="address"/>
                 <asp:controlparameter Name="phone" controlid="phone"/>
                 <asp:controlparameter Name="email" controlid="emp_email"/>
                 <asp:controlparameter Name="job_title" controlid="emp_title"/>
                 <asp:controlparameter Name="hostel_id" controlid="hostel_id"/>
             </InsertParameters>
           
    </asp:SqlDataSource>
     <div class="row"> <div class="col-md-6">


        <div class="form-group">   
    <label>First Name</label>
    <asp:TextBox ID="emp_fname" style="margin-left:20%;" runat="server" CssClass="form-control"  BorderColor="#666699"></asp:TextBox><br/><br/>
    <asp:RequiredFieldValidator runat="server" ErrorMessages="required field" ControlToValidate="emp_fname"/>
        </div>

        <div class="form-group">
     <label>Last Name</label>
    <asp:TextBox ID="emp_sname" style="margin-left:20%;" runat="server" CssClass="form-control" BorderColor="#666699"></asp:TextBox><br/><br/>   
    <asp:RequiredFieldValidator runat="server" ErrorMessages="required field" ControlToValidate="emp_sname"/>
        </div>

        <div class="form-group">
     <label>Date of Birth</label>
    <asp:TextBox ID="dob" name="date" style="margin-left:20%;" runat="server" CssClass="form-control" BorderColor="#666699"></asp:TextBox><br/><br/>   
        </div>

        <div class="form-group">
     <label>Address</label>
    <asp:TextBox ID="address" style="margin-left:20%;" runat="server" CssClass="form-control" BorderColor="#666699"></asp:TextBox><br/><br/>
    <asp:RequiredFieldValidator runat="server" ErrorMessages="required field" ControlToValidate="address"/>
        </div>
         </div>
         

           <div class="col-md-6">

        <div class="form-group">
     <label>Phone</label>
    <asp:TextBox ID="phone" style="margin-left:20%;" runat="server" CssClass="form-control" BorderColor="#666699"></asp:TextBox><br/><br/>
    <asp:RequiredFieldValidator runat="server" ErrorMessages="required field" ControlToValidate="phone"/>
        </div>

        <div class="form-group">
     <label>Email</label>
    <asp:TextBox ID="emp_email" style="margin-left:20%;" runat="server" CssClass="form-control" BorderColor="#666699"></asp:TextBox><br/><br/>
    
        </div>

        <div class="form-group">
     <label>Job Title</label>
    <asp:TextBox ID="emp_title" style="margin-left:20%;" runat="server" CssClass="form-control" BorderColor="#666699"></asp:TextBox><br/><br/>
    <asp:RequiredFieldValidator runat="server" ErrorMessages="required field" ControlToValidate="emp_title"/>
        </div>

        <div class="form-group">
     <label>Hostel</label>    
    <asp:DropDownList ID="hostel_id" style="margin-left:20%;" runat="server" CssClass="form-control" BorderColor="#666699" AppendDataBoundItems="true">
        <asp:ListItem Text="<Select Hostel>" Value="0" />
        
    </asp:DropDownList>
        </div>
             </div>
            </div>

        <div class="row ">
            <div class="col-md-4"></div>

            <div class="col-md-4 text-center" >
        <div class="form-group">
    <asp:Button ID="AddEmp" runat="server" Text="Add" onClick="AddEmp_Click" style="margin-left:5%;" Class="btn btn-info btn-round" BackColor="#660066" ForeColor="white" BorderColor="#666699" />
    </div>
                </div>
            <div class="col-md-4"></div>
        </div>
    </div>
   

</asp:Content>

