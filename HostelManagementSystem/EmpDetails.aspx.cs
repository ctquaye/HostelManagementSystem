using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HostelManagementSystem
{
    public partial class EmpDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
              /*  Response.Write("Employee ID: " + Request.QueryString["employee_id"].ToString());
                Response.Write("Employee First Name: " + Request.QueryString["emp_fname"].ToString());
                Response.Write("Employee Last Name: " + Request.QueryString["emp_sname"].ToString());
                //Response.Write("Employee DOB: " + Request.QueryString["dob"].ToString());
                Response.Write("Employee Address: " + Request.QueryString["address"].ToString());*/

            }
        }
    }
}