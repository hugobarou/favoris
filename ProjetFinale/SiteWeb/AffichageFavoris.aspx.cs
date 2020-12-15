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

        protected void btnAddFolder_Click(object sender, EventArgs e)
        {
            btnCxlFolderAdd.Visible = true;
            btnAddFolder.Visible = false;
            panelAddFolder.Visible = true;
        }

        protected void btnCxlFolderAdd_Click(object sender, EventArgs e)
        {
            btnCxlFolderAdd.Visible = false;
            btnAddFolder.Visible = true;
            panelAddFolder.Visible = false;
        }

        protected void BtnMakeFav_Click(object sender, EventArgs e)
        {
            BtnCxlMakeFav.Visible = true;
            BtnMakeFav.Visible = false;
            panelAddFav.Visible = true;
        }

        protected void BtnCxlMakeFav_Click(object sender, EventArgs e)
        {
            BtnCxlMakeFav.Visible = false;
            BtnMakeFav.Visible = true;
            panelAddFav.Visible = false;
        }
    }
}