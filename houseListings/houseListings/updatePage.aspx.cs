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
    public partial class updatePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string conStr = ConfigurationManager.ConnectionStrings["masterDB"].ConnectionString;
            using (SqlConnection con = new SqlConnection(conStr))
            {
                try
                {
                    con.Open();
                    string oString = "Select * from House_Identifier";
                    SqlCommand oCmd = new SqlCommand(oString, con);
                    using (SqlDataReader oReader = oCmd.ExecuteReader())
                    {
                        while (oReader.Read())
                        {
                            if(!DropDownList1.Items.Contains(new ListItem(oReader["house_id"].ToString())))
                                DropDownList1.Items.Add(oReader["house_id"].ToString());
                        }
                    }
                    con.Close();                  
                }
                catch (Exception ex)
                {
                  
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("homePage.aspx");
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string temp = DropDownList1.SelectedValue;
            string conStr = ConfigurationManager.ConnectionStrings["masterDB"].ConnectionString;
            using (SqlConnection con = new SqlConnection(conStr))
            {
                try
                {
                    con.Open();
                    string oString = "Select * from House_All where house_id= @house";
                    SqlCommand oCmd = new SqlCommand(oString, con);
                    oCmd.Parameters.AddWithValue("@house", temp);
                    using (SqlDataReader oReader = oCmd.ExecuteReader())
                    {
                        while (oReader.Read())
                        {
                            TextBox1.Text = oReader["price"].ToString();
                            TextBox2.Text = oReader["bedroom"].ToString();
                            TextBox3.Text = oReader["bathroom"].ToString();
                            TextBox4.Text = oReader["zip"].ToString();
                            TextBox5.Text = oReader["city"].ToString();
                            TextBox6.Text = oReader["us_state"].ToString();
                            TextBox7.Text = oReader["sqft"].ToString();
                            TextBox8.Text = oReader["house_year"].ToString();
                        }
                    }
                    con.Close();
                }
                catch (Exception ex)
                {
                }
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["masterDB"].ConnectionString))
                {
                    conn.Open();
                    using (SqlCommand cmd = new SqlCommand("update House_All set price=@price, bedroom=@bedroom, bathroom=@bathroom, zip=@zip, city=@city, us_state=@state, sqft=@sqft, house_year=@year where house_id= @house", conn))
                    {
                        cmd.Parameters.AddWithValue("@price", TextBox1.Text);
                        cmd.Parameters.AddWithValue("@bedroom", TextBox2.Text);
                        cmd.Parameters.AddWithValue("@bathroom", TextBox3.Text);
                        cmd.Parameters.AddWithValue("@zip", TextBox4.Text);
                        cmd.Parameters.AddWithValue("@city", TextBox5.Text);
                        cmd.Parameters.AddWithValue("@state", TextBox6.Text);
                        cmd.Parameters.AddWithValue("@sqft", TextBox7.Text);
                        cmd.Parameters.AddWithValue("@year", TextBox8.Text);
                        cmd.Parameters.AddWithValue("@house", DropDownList1.SelectedValue);
                        cmd.ExecuteNonQuery();
                    }
                    conn.Close();
                }
            }
            catch (SqlException ex)
            {
                Label1.Text = ex.ToString();
            }
        }
    }
}