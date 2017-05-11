using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace houseListings
{
    public partial class searchHouse : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.Columns[0].HeaderText = "House ID#";
            GridView1.Columns[1].HeaderText = "Price";
            GridView1.Columns[2].HeaderText = "Bedrooms";
            GridView1.Columns[3].HeaderText = "Bathrooms";
            GridView1.Columns[4].HeaderText = "Zip";
            GridView1.Columns[5].HeaderText = "City";
            GridView1.Columns[6].HeaderText = "State";
            GridView1.Columns[7].HeaderText = "Sq ft.";
            GridView1.Columns[8].HeaderText = "Year Built";

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("homePage.aspx");
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}