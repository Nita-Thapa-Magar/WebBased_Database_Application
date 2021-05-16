using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _18030819_Nita_Thapa_Magar
{
    public partial class HomePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("BasicForms/CustomerDetails.aspx");
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("BasicForms/RestaurantDetails.aspx");
        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("BasicForms/DishDetails.aspx");
        }
        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("BasicForms/LoyaltyPointsDetails.aspx");
        }
        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("BasicForms/DeliveryAddressDetails.aspx");
        }
        protected void Button6_Click(object sender, EventArgs e)
        {
            Response.Redirect("ComplexForms/CustomerOrderDetails.aspx");
        }
        protected void Button7_Click(object sender, EventArgs e)
        {
            Response.Redirect("ComplexForms/DishSearch.aspx");
        }
        protected void Button8_Click(object sender, EventArgs e)
        {
            Response.Redirect("ComplexForms/OrderActivity.aspx");
        }
    }
}