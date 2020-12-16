using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SiteWeb
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["connected"] != null)
            {
                btnSignUp.Text = "Profil";
                btnSignUp.Attributes["href"] = "AffichageFavoris.aspx";
                Button1.Text = "Se déconnecter";
                Button1.Attributes["class"] = "btn btn-outline-danger nav-item";
            }

        }




        protected void Button1_Click(object sender, EventArgs e)
        {

            if (Session["connected"] != null)
            {
                Session.Clear();
                Response.Redirect("Acceuil.aspx");
            } else
            {
                Response.Redirect("SignIn.aspx");
            }
        }
    }
}