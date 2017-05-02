using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace houseListings
{
    public partial class newHouse : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("homePage.aspx");
        }

        protected void TextBox3_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["masterDB"].ConnectionString))
                {
                    conn.Open();
                    using (SqlCommand cmd = new SqlCommand("insert into House_All(price, bedroom, bathroom, zip, city, us_state, sqft, house_year) values(@price, @bedroom, @bathroom, @zip, @city, @state, @sqft, @year)", conn))
                    {
                        cmd.Parameters.AddWithValue("@price", TextBox1.Text);
                        cmd.Parameters.AddWithValue("@bedroom", TextBox2.Text);
                        cmd.Parameters.AddWithValue("@bathroom", TextBox3.Text);
                        cmd.Parameters.AddWithValue("@zip", TextBox4.Text);
                        cmd.Parameters.AddWithValue("@city", TextBox5.Text);
                        cmd.Parameters.AddWithValue("@state", TextBox6.Text);
                        cmd.Parameters.AddWithValue("@sqft", TextBox7.Text);
                        cmd.Parameters.AddWithValue("@year", TextBox8.Text);
                        cmd.ExecuteNonQuery();
                    }
                    Response.Redirect("homePage.aspx");
                    conn.Close();
                }
            }
            catch (SqlException ex)
            {
            }
        }
    }
}