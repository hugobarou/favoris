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
                List<Folder> lstFolder = (List<Folder>)Session["folders"];
                lblWelcome.Text = "Welcome " + u.firstName + " " + u.lastName;
                rpt.DataSource = lstFolder;
                rpt.DataBind();
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

        protected void rpt_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            DBConnect db = new DBConnect();
            User u = (User)Session["connected"];
            Folder f = new Folder();

            int folderId = Convert.ToInt32(e.CommandArgument);
            f.id = folderId;
            if (e.CommandName == "afficher")
            {
                BtnMakeFav.Visible = true;
                lblSelectedFolder.Text = folderId.ToString();
                List<Favorite> lstFavorite = db.selectAllFavoriteByFolder(f);
                rpt2.DataSource = lstFavorite;
                rpt2.DataBind();
            }
            if(e.CommandName == "deleteDossier")
            {
                db.deleteFolder(f);
                Session["folders"] = db.selectAllFolderByUser(u);
                Response.Redirect("AffichageFavoris.aspx");
            }
        }

        protected void rpt2_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            int favoriteId = Convert.ToInt32(e.CommandArgument);
            int folderId = Convert.ToInt32(lblSelectedFolder.Text);
            DBConnect db = new DBConnect();
            Favorite fav = new Favorite();
            Folder folder = new Folder();
            folder.id = folderId;
            fav.id = favoriteId;

            if (e.CommandName == "deleteFavorite")
            {

                db.deleteFavorite(fav);
                List<Favorite> lstFavorite = db.selectAllFavoriteByFolder(folder);
                rpt2.DataSource = lstFavorite;
                rpt2.DataBind();
            }
            if (e.CommandName == "updateFavorite")
            {

            }
        }

        protected void BtnAddFav_Click(object sender, EventArgs e)
        {
            if (String.IsNullOrEmpty(lblSelectedFolder.Text))
            {
                System.Diagnostics.Debug.WriteLine("Did not select folder");
            }
            else
            {
                if (Page.IsValid)
                {
                    int folderId = Convert.ToInt32(lblSelectedFolder.Text);
                    DBConnect db = new DBConnect();
                    Favorite fav = new Favorite();
                    Folder folder = new Folder();
                    folder.id = folderId;

                    fav.url = favWebSite.Text;
                    fav.name = favName.Text;
                    fav.folderId = folderId;

                    db.insertFavorite(fav);

                    BtnMakeFav.Visible = true;
                    BtnCxlMakeFav.Visible = false;
                    favWebSite.Text = String.Empty;
                    favName.Text = String.Empty;
                    List<Favorite> lstFavorite = db.selectAllFavoriteByFolder(folder);
                    rpt2.DataSource = lstFavorite;
                    rpt2.DataBind();
                }
            }
        }

        protected void btnMakeFolder_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                User u = (User)Session["connected"];
                DBConnect db = new DBConnect();
                Folder folder = new Folder();

                folder.name = folderName.Text;
                folder.userId = u.id;

                btnAddFolder.Visible = true;
                btnCxlFolderAdd.Visible = false;
                db.insertFolder(folder);
                Session["folders"] = db.selectAllFolderByUser(u);
                Response.Redirect("AffichageFavoris.aspx");
            }
        }
    }
}