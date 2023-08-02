using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

//38008955 Johan Lourens
namespace Assessment2_38008955
{
    public partial class Edit_Delete : System.Web.UI.Page
    {
        public SqlConnection conn;
        public SqlCommand comm;
        public DataSet ds;
        public SqlDataAdapter adap;
        public String connStr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Lenovo\Desktop\C#\Assessment2_38008955\Assessment2_38008955\App_Data\UserAccount.mdf;Integrated Security=True";

        

        protected void Page_Load(object sender, EventArgs e)
        {
            

        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            

            Session["uName"] = tbxUName.Text; // Sessions to store all the user info
            Session["uSurname"] = tbxUSurname.Text;
            Session["uEmail"] = tbxUEmail.Text;
            Session["uPassword"] = tbxUPassword.Text;

            HttpCookie _ClientCookie = Request.Cookies["ClientInformation"];

            try
            {
                conn = new SqlConnection(connStr);
                conn.Open();

                comm = new SqlCommand(("UPDATE ClientAccounts SET Name = @name, Surname = @surname, Email = @email, Password = @pass WHERE ClientID = @ID " ), conn);

                comm.Parameters.AddWithValue("@ID", _ClientCookie["ClientNum"]); // updates the users information
                comm.Parameters.AddWithValue("@name", Session["uName"].ToString());
                comm.Parameters.AddWithValue("@surname", Session["uSurname"].ToString());
                comm.Parameters.AddWithValue("@email", Session["uEmail"].ToString());
                comm.Parameters.AddWithValue("@pass", Session["uPassword"].ToString());
                comm.ExecuteNonQuery();
                comm.Dispose();

                conn.Close();

            }
            catch (SqlException error)
            {
                lblLoadError.Visible = true;
                lblLoadError.Text = error.Message;
            }
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            btnYes.Visible = true;
            btnNo.Visible = true;
        }

        protected void btnDisplayData_Click(object sender, EventArgs e)
        {
            conn = new SqlConnection(connStr);
            conn.Open();

            HttpCookie _ClientCookie = Request.Cookies["ClientInformation"]; //Recieves Cookie

            comm = new SqlCommand("SELECT * FROM ClientAccounts", conn);
            SqlDataReader reader = comm.ExecuteReader();


            while (reader.Read())
            {
                if ((reader.GetValue(0).ToString() == _ClientCookie["ClientNum"])) //Loads Information in to textboxes
                {
                    tbxUName.Text = reader.GetValue(1).ToString();
                    tbxUSurname.Text = reader.GetValue(2).ToString();
                    tbxUEmail.Text = reader.GetValue(3).ToString();
                    tbxUPassword.Text = reader.GetValue(4).ToString();
                }

            }

            comm.Dispose();
            conn.Close();
        }

        protected void btnNo_Click(object sender, EventArgs e)
        {
            btnYes.Visible = false;
            btnNo.Visible = false;
        }

        protected void btnYes_Click(object sender, EventArgs e)
        {

            HttpCookie _ClientCookie = Request.Cookies["ClientInformation"];
            try
            {
                conn = new SqlConnection(connStr);
                conn.Open();

                String sql = "DELETE FROM ClientAccounts WHERE ClientID = @ID"; // delete curret user information
                comm = new SqlCommand(sql, conn);
                comm.Parameters.AddWithValue("@ID", _ClientCookie["ClientNum"]);
                comm.ExecuteNonQuery();

                conn.Close();

                btnYes.Visible = false;
                btnNo.Visible = false;

                
            }
            catch (SqlException error)
            {
                lblLoadError.Visible = true;
                lblLoadError.Text = error.Message;
            }
        }
    }
}