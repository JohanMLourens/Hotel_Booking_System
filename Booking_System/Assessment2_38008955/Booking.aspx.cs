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
    public partial class Booking : System.Web.UI.Page
    {
        public SqlConnection conn;
        public SqlCommand comm;
        public DataSet ds;
        public SqlDataAdapter adap;
        public String connStr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Lenovo\Desktop\C#\Assessment2_38008955\Assessment2_38008955\App_Data\UserAccount.mdf;Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void cbxRooms_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnBook_Click(object sender, EventArgs e)
        {
            int days, price;
            DateTime Arivaldate = new DateTime(DateTime.Today.Year, DateTime.Today.Month, DateTime.Today.Day);
            DateTime Departure = new DateTime(DateTime.Today.Year, DateTime.Today.Month, DateTime.Today.Day);

            Arivaldate = calArrival.SelectedDate; // storing the date of arrival
            Departure = calDeparture.SelectedDate; // Storing the date of Departure

            days = (Departure.Date - Arivaldate.Date).Days; // Calculating the total nights
            price = (Int32.Parse(rbtnRooms.SelectedValue) * 150) * days; // Calcualting the total price

            HttpCookie _ClientCookie = Request.Cookies["ClientInformation"]; //Recieves Cookie
            lblDisplayPrice.Visible = true;
            lblDisplayPrice.Text = "This will be your total cost R" + price.ToString(); //Displays total cost
            try
            {
                conn = new SqlConnection(connStr);
                conn.Open();

                comm = new SqlCommand($"INSERT INTO ClientBooking(ClientID,RoomType,ClArrival,ClLeaving,Price) VALUES ('{_ClientCookie["ClientNum"]}','{rbtnRooms.SelectedValue.ToString()}','{Arivaldate.ToLongDateString()}','{Departure.ToLongDateString()}','{price}')", conn);

                adap = new SqlDataAdapter(); //creates a new booking and addes it to the data base
                adap.InsertCommand = comm;
                adap.InsertCommand.ExecuteNonQuery();

                conn.Close();


            }
            catch (SqlException error)
            {
                lblBookingError.Visible = true;
                lblBookingError.Text = error.Message;
            }

        }
    }
}