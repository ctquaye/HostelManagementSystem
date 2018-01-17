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
    public partial class Employee1 : System.Web.UI.Page
    {

        static private SqlConnection con = new SqlConnection(Properties.Settings.Default.conString);
        protected void Page_Load(object sender, EventArgs e)
        {
          // LoadHostel();

           
        }

        protected void gvEmp_PreRender(object sender, EventArgs e)
        {
            try
            {
                gvEmp.UseAccessibleHeader = true;
                gvEmp.HeaderRow.TableSection = TableRowSection.TableHeader;
                gvEmp.HeaderStyle.HorizontalAlign = HorizontalAlign.Center;
            }
            catch
            { }
        }

       /* private void LoadHostel()
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
        }*/

        protected void AddEmp_Click(object sender, EventArgs e)
        {
           /* dsAddEmp.Insert();
            emp_fname.Text = String.Empty;
            emp_sname.Text = String.Empty;
            address.Text = String.Empty;
            phone.Text = String.Empty;
            job_title.Text = String.Empty;
            email.Text = String.Empty;
            hostel_id.Items.Clear();
            LoadHostel();*/
        }

        protected void gvEmp_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            e.Row.Cells[0].Visible = false;
        }
    }
}