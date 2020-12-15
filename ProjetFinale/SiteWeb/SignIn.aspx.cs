using FavoriteDLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SiteWeb
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void connexionUser(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                DBConnect db = new DBConnect();
                User u = new User();
                u.email = inputEmail.Text;
                u.password = inputPassword.Text;

                if (db.userExist(u))
                {
                    Session["connected"] = db.selectUser(u);
                    Session["folders"] = db.selectAllFolderByUser(u);
                    Response.Redirect("AffichageFavoris.aspx");
                }
                else
                {
                    lblError.Text = "Mauvaise adresse courriel ou mot de passe";
                }
            }
        }
    }
}