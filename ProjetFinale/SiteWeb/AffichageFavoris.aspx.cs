using FavoriteDLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SiteWeb
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["connected"] != null)
            {
                User u = (User)Session["connected"];
                lblWelcome.Text = "Welcome " + u.firstName + " " + u.lastName;
            }
        }
    }
}