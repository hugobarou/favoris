using FavoriteDLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SiteWeb
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }
        protected void createUser(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                DBConnect db = new DBConnect();
                User u = new User();
                u.firstName = inputFirstName.Text;
                u.lastName = inputLastName.Text;
                u.email = inputEmail.Text;
                u.password = inputPassword.Text;

                db.insertUser(u);
                Response.Redirect("SignIn.aspx");
            }

        }
    }
}