using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HostelManagementSystem
{
    public partial class Employee : System.Web.UI.Page
    {
        

        static private SqlConnection con = new SqlConnection(Properties.Settings.Default.conString);

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) {
                BindTheData();
            }

            success1.Visible = false;
            MustbeEmployed.Visible = false;
            unmatchingPasswords.Visible = false;
            ExistingUser.Visible = false;
            //hideTable.Visible = false;
          

        }

        static public bool checkPassword(string pass, string confirmpass)
        {
            if (pass == confirmpass)
            {
                return true;
            }
            else { return false; }
        }
              
        
        protected void AddLogin_Click(object sender, EventArgs e)
            
        {
           

            bool x = checkPassword(password.Text, confirm_password.Text);


            if (x == true)
            {
                string Hash = EncryptPassword(confirm_password.Text);

                string sql1 = "SELECT employee_id FROM emp_table WHERE emp_fname ='" + fname.Text + "'AND emp_sname = '" + sname.Text + "'";
                string sql2 = "SELECT username FROM login_table WHERE username ='" + username.Text + "'";

                SqlCommand cmd = new SqlCommand(sql1, con);
                DataSet ds = new DataSet();
                SqlDataAdapter adapt = new SqlDataAdapter(cmd);
                adapt.Fill(ds);
                string id = "empty";
                int emp_id = 0;
                int a1 = ds.Tables[0].Rows.Count;

                SqlCommand command = new SqlCommand(sql2, con);

                SqlDataAdapter adapt2 = new SqlDataAdapter(command);
                DataSet ds2 = new DataSet();
                adapt2.Fill(ds2);
                int a2 = ds2.Tables[0].Rows.Count;

                if (a1 == 1 && a2 == 0)
                {
                    id = ds.Tables[0].Rows[0]["employee_id"].ToString();
                    emp_id = int.Parse(id);
                    con.Close();

                    string sql3 = "INSERT INTO login_table (username, password, emp_id) VALUES ('" + username.Text + "','" + Hash + "','" + emp_id + "')";
                    con.Open();
                    SqlCommand cmd2 = con.CreateCommand();
                    cmd2.CommandType = System.Data.CommandType.Text;
                    cmd2.CommandText = sql3;
                    cmd2.ExecuteNonQuery();
                    success1.Visible = true;
                    con.Close();
                    BindTheData();
                    
                }
                else if (a1 == 1 && a2 == 1)
                {
                    ExistingUser.Visible = true;
                }
                else { MustbeEmployed.Visible = true; }
            }
            else {
                unmatchingPasswords.Visible = true;

            }


        }

        static public bool LoginMethod(string uname, string pass)
        {

            MD5 md5two = new MD5CryptoServiceProvider();
            //compute hash from the bytes of text

            md5two.ComputeHash(ASCIIEncoding.ASCII.GetBytes(pass));
            //get hash result after compute it


            byte[] result2 = md5two.Hash;
            StringBuilder strBuilder2 = new StringBuilder();
            for (int i = 0; i < result2.Length; i++)
            {
                //change it into 2 hexadecimal digits
                //for each byte
                strBuilder2.Append(result2[i].ToString("x2"));
            }
            pass = strBuilder2.ToString();

            //static private SqlConnection con = new SqlConnection(Properties.Settings.Default.DataConString);

            string sqllog = "SELECT * from login_table where username = '" + uname + "'and password='" + pass + "'";

            SqlCommand cmdselect = new SqlCommand(sqllog, con);
            // IPdatabaseDataSet ds = new IPdatabaseDataSet();
            DataSet ds = new DataSet();
            SqlDataAdapter adapt = new SqlDataAdapter(cmdselect);
            adapt.Fill(ds);
            int ia = ds.Tables[0].Rows.Count;
            if (ia == 1)
            {

                HttpContext.Current.Response.Redirect("Dashboard.aspx");
                return true;
            }
            else {

                return false;
            }



        }

        static public string EncryptPassword(string pass)
        {
            MD5 md5two = new MD5CryptoServiceProvider();
            //compute hash from the bytes of text


            md5two.ComputeHash(ASCIIEncoding.ASCII.GetBytes(pass));
            //get hash result after compute it


            byte[] result2 = md5two.Hash;
            StringBuilder strBuilder2 = new StringBuilder();
            for (int i = 0; i < result2.Length; i++)
            {
                //change it into 2 hexadecimal digits
                //for each byte
                strBuilder2.Append(result2[i].ToString("x2"));
            }
            pass = strBuilder2.ToString();

            return pass;

        }

        private void BindTheData()
        {
            gvEmpLog.DataSourceID = null;
            DataSet dt = new DataSet();
            con.Open();
            SqlCommand cmd = new SqlCommand("Select login_id, username, password FROM login_table", con);
            SqlDataAdapter Adapter = new SqlDataAdapter(cmd);
            Adapter.Fill(dt);
            con.Close();
            if (dt.Tables[0].Rows.Count > 0)
            {
                gvEmpLog.DataSource = dt;
                gvEmpLog.DataBind();
            }

        }

       

          

        protected void gvEmp_RowUpdating1(object sender, GridViewUpdateEventArgs e)
        {
            //find the controls form Gridview for the row which is going to update
            GridViewRow row = (GridViewRow)gvEmpLog.Rows[e.RowIndex];
            TextBox username = (TextBox)row.Cells[1].Controls[0];
            TextBox password = (TextBox)row.Cells[2].Controls[0];
            int logid = Convert.ToInt32(gvEmpLog.DataKeys[e.RowIndex].Value.ToString());
            gvEmpLog.EditIndex = -1;
            con.Open();
            //Encrypt password
            string EncryptedPass = password.Text;
            EncryptedPass=EncryptPassword(EncryptedPass);
            //update record
            SqlCommand cmd = new SqlCommand("Update login_table SET username='" + username.Text + "', password='" + EncryptedPass + "'Where login_id='"+logid+"'",con);
            cmd.ExecuteNonQuery();
            con.Close();           
            BindTheData();
            hideTable2.Visible = true;
        }

        protected void gvEmp_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            hideTable2.Visible = true;
            gvEmpLog.EditIndex = -1;
            BindTheData();
        }

        protected void gvEmp_RowEditing(object sender, GridViewEditEventArgs e)
        {
            hideTable2.Visible = false;
            gvEmpLog.EditIndex = e.NewEditIndex;
            BindTheData();
            
        }

       
    }
}