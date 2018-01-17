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
    public partial class EmployeeLogin : System.Web.UI.Page
    {
        static private SqlConnection con = new SqlConnection(Properties.Settings.Default.conString);

        protected void Page_Load(object sender, EventArgs e)
        {
            wrongLogin.Visible = false;
            emptyLogin.Visible = false;
        }

        protected void emp_Login_Click(object sender, EventArgs e)

        {

            //string h=Sqlfunctions.MD5Hash(unamefield.Text);
            // MessageBox.Show(h);
            if (tbox_username.Text == "" && tbox_password.Text == "")
            {
                emptyLogin.Visible = true;
                return;
            }
            else
            {
                bool validate = LoginMethod(tbox_username.Text, tbox_password.Text);
                if (validate == false)
                {
                    wrongLogin.Visible = true;
                }

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

                HttpContext.Current.Response.Redirect("Employee2.aspx");
                return true;
            }
            else {

                return false;
            }


        }
    }
}