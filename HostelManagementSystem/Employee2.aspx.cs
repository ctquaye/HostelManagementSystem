using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HostelManagementSystem
{
    public partial class Employee2 : System.Web.UI.Page
    {

        static private SqlConnection con = new SqlConnection(Properties.Settings.Default.conString);
        protected void Page_Load(object sender, EventArgs e)
        {
            
           LoadHostel();
        }

        private void BindTheData()
        {
            gvEmp.DataSourceID = null;
            DataSet dt = new DataSet();
            con.Open();
            SqlCommand cmd = new SqlCommand("Select employee_id, emp_fname, emp_sname,dob, emp_table.address, emp_table.hostel_id, emp_table.phone,email, job_title, Hostel_name from emp_table, Hostel_Table WHERE Hostel_Table.Hostel_id=emp_table.hostel_id;", con);
            SqlDataAdapter Adapter = new SqlDataAdapter(cmd);
            Adapter.Fill(dt);
            con.Close();
            if (dt.Tables[0].Rows.Count > 0)
            {
                gvEmp.DataSource = dt;
                gvEmp.DataBind();
            }

        }

        private void LoadHostel()
        {
            string sqllog = "SELECT * from Hostel_Table;";

            SqlCommand cmdselect = new SqlCommand(sqllog, con);

            DataSet ds = new DataSet();
            SqlDataAdapter adapt = new SqlDataAdapter(cmdselect);
            adapt.Fill(ds);
            int ia = ds.Tables[0].Rows.Count;
            if (ia >= 1)
            {

                hostel_id.DataSource = ds.Tables[0];
                hostel_id.DataTextField = ds.Tables[0].Columns["Hostel_name"].ToString();
                hostel_id.DataValueField = ds.Tables[0].Columns["Hostel_id"].ToString();
                hostel_id.DataBind();
            }
        }

        protected void AddEmp_Click(object sender, EventArgs e)
        {
            dsAddEmp.Insert();
            emp_fname.Text = String.Empty;
            emp_sname.Text = String.Empty;
            address.Text = String.Empty;
            phone.Text = String.Empty;
            job_title.Text = String.Empty;
            email.Text = String.Empty;
            hostel_id.Items.Clear();
            LoadHostel();
        }

        protected void gvEmp_RowEditing(object sender, GridViewEditEventArgs e)
        {
            hideTable2.Visible = false;
            gvEmp.EditIndex = e.NewEditIndex;
            BindTheData();
        }

        protected void gvEmp_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            hideTable2.Visible = true;
            gvEmp.EditIndex = -1;
            BindTheData();
        }              

        protected void gvEmp_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            //find the controls form Gridview for the row which is going to update
            
            GridViewRow row = (GridViewRow)gvEmp.Rows[e.RowIndex];
            TextBox hid = (TextBox)row.Cells[0].Controls[0];
            TextBox fname = (TextBox)row.Cells[2].Controls[0];
            TextBox sname = (TextBox)row.Cells[3].Controls[0];
            TextBox dob = (TextBox)row.Cells[4].Controls[0];
            TextBox address = (TextBox)row.Cells[5].Controls[0];
            TextBox phone = (TextBox)row.Cells[6].Controls[0];
            TextBox email = (TextBox)row.Cells[7].Controls[0];
            TextBox job = (TextBox)row.Cells[8].Controls[0];
            

            int logid = Convert.ToInt32(gvEmp.DataKeys[e.RowIndex].Value.ToString());
            int Hostelid = Convert.ToInt32(hid.Text.ToString());
            gvEmp.EditIndex = -1;
            con.Open();
            //convert string to date
            IFormatProvider culture = new System.Globalization.CultureInfo("en-US", true);
            DateTime DateDob = DateTime.Parse(dob.Text,culture);           

            //update record
            SqlCommand cmd = new SqlCommand
                ("UPDATE [emp_table] SET emp_fname='"+fname.Text+ "', emp_sname='" + sname.Text + "', dob='" + DateDob + "', address='" + address.Text + "', phone='" +phone.Text+ "', email='"+email.Text+ "', job_title='"+job.Text+ "', hostel_id='" +Hostelid+ "' WHERE employee_id='"+logid+"'", con);
            cmd.ExecuteNonQuery();
            con.Close();
            BindTheData();
            hideTable2.Visible = true;
        }

        protected void gvEmp_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            //hides the first two columns on the gridview so i can still be able to pick their values without showing them on page
            e.Row.Cells[0].Visible = false;
            e.Row.Cells[1].Visible = false;

        }

        protected void gvEmp_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            Int32 nRowIndex = Convert.ToInt32(e.CommandArgument.ToString());
            Int32 EmpId = Convert.ToInt32(gvEmp.DataKeys[nRowIndex].Value);

        }
    }
}