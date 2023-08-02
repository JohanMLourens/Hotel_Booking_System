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
    public partial class SignIn : System.Web.UI.Page
    {
        public SqlConnection conn;
        public SqlCommand comm;
        public DataSet ds;
        public SqlDataAdapter adap;
        public String connStr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Lenovo\Desktop\C#\Assessment2_38008955\Assessment2_38008955\App_Data\UserAccount.mdf;Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {
            conn = new SqlConnection(connStr);
            conn.Open();
            conn.Close();
            
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
                   
            conn = new SqlConnection(connStr);
            conn.Open();

            lblError.Visible = false;

            comm = new SqlCommand("SELECT * FROM ClientAccounts", conn);
            SqlDataReader reader = comm.ExecuteReader();


            HttpCookie _ClientCookie = new HttpCookie("ClientInformation");


            while (reader.Read())
                {
                    if ((reader.GetValue(3).ToString() == tbxEmail.Text) && (reader.GetValue(4).ToString() == tbxPassword.Text)) //Validates email and password
                    {
                        _ClientCookie["ClientNum"] = reader.GetValue(0).ToString();
                        Response.Cookies.Add(_ClientCookie); 
                        
                        conn.Close();
                        Response.Redirect("Booking.aspx"); // Show booking page
                    }
                    else
                    {
                        lblError.Visible = true;
                        lblError.Text = "Email or Password is invalid.";
                    }


                }//Reader end

            conn.Close();
        }

        protected void btnEditAcc_Click(object sender, EventArgs e)
        {
            conn = new SqlConnection(connStr);
            conn.Open();

            HttpCookie _ClientCookie = new HttpCookie("ClientInformation"); //Create Cookie

            comm = new SqlCommand("SELECT * FROM ClientAccounts", conn);
            SqlDataReader reader = comm.ExecuteReader();

            while (reader.Read())
            {
                if ((reader.GetValue(3).ToString() == tbxEmail.Text) && (reader.GetValue(4).ToString() == tbxPassword.Text)) //Validates email and password
                {
                    _ClientCookie["ClientNum"] = reader.GetValue(0).ToString(); //Stores Cookie
                    Response.Cookies.Add(_ClientCookie);

                    conn.Close();
                    
                }
                else
                {
                    lblError.Visible = true;
                    lblError.Text = "Email or Password is invalid.";
                }

                Response.Redirect("Edit_Delete.aspx"); // show Edit_Delete page
            }
        }

        protected void btnSignUP_Click(object sender, EventArgs e)
        {
            String fName, fSurname, fEmail, fPassword;

            fName = tbxSetName.Text;
            fSurname = tbxSetSurname.Text;
            fEmail = tbxSetEmail.Text;
            fPassword = tbxSetPassword.Text;

            try
            {
                conn = new SqlConnection(connStr);
                conn.Open();

                comm = new SqlCommand($"INSERT INTO ClientAccounts(Name,Surname,Email,Password) VALUES ('{fName}','{fSurname}','{fEmail}','{fPassword}')", conn);

                adap = new SqlDataAdapter(); //Creates new user in database
                adap.InsertCommand = comm;
                adap.InsertCommand.ExecuteNonQuery();

                conn.Close();

            }
            catch (SqlException error)
            {
                lblSignupError.Visible = true;
                lblSignupError.Text = error.Message;
            }

        }
    }   
}