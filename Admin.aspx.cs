using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _18030819_Nita_Thapa_Magar
{
    public partial class Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (txtUsername.Text == "admin" && txtEmailAddress.Text == "admin2021@gmail.com" && txtPassword.Text == "admin20")
            {
                Response.Redirect("HomePage.aspx");
            }
            else if(txtUsername.Text == "" || txtEmailAddress.Text == "" || txtPassword.Text == "")
            {
                Response.Write("Please enter all the values.");
            }
            else
            {
                Response.Write("The user doesnot exist.");
            }
        }
    }
}