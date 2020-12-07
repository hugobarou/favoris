using FavoriteDLL;
using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data.Common;
using System.Data;
using System.Linq;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Test
{
    static class Program
    {
        /// <summary>
        /// The main entry point for the application.
        /// </summary>
        [STAThread]
        static void Main()
        {
            Application.EnableVisualStyles();
            Application.SetCompatibleTextRenderingDefault(false);
            Application.Run(new Form1());

            User user = new User();
            user.id = 1;
            user.firstName = "Hugo";
            user.lastName = "Barou";
            user.email = "hugo@hotmail.com";
            user.password = "password";

            Folder folder = new Folder();
            folder.id = 1;
            folder.name = "Programmation";
            folder.userId = 1;

            Favorite favorite = new Favorite();
            favorite.id = 1;
            favorite.name = "W3S";
            favorite.url = "https://www.w3schools.com/";
            favorite.folderId = 1;

            Favorite favorite2 = new Favorite();
            favorite2.id = 2;
            favorite2.name = "Stack Over Flow";
            favorite2.url = "https://stackoverflow.com/";
            favorite2.folderId = 1;

            Favorite favorite3 = new Favorite();
            favorite3.id = 3;
            favorite3.name = "Code Academy";
            favorite3.url = "https://www.codecademy.com/";
            favorite3.folderId = 1;

            folder.lstFavorite = new List<Favorite>();
            folder.addFavorite(favorite);
            folder.addFavorite(favorite2);
            folder.addFavorite(favorite3);

            Console.WriteLine(user);
            Console.WriteLine(folder);
            foreach(Favorite fav in folder.lstFavorite)
            {
                Console.WriteLine(fav);
            }
            string json = folder.serializeJSON();
            Console.WriteLine(json);

            DBConnect db = new DBConnect();
            List<User> lst = db.selectAllUser();
            foreach (User u in lst)
            {
                Console.WriteLine(u);
            }
            User jc = new User();
            jc.id = 1;

            List<Folder> lstFolder =  db.selectAllFolderByUser(jc);
            foreach (Folder f in lstFolder)
            {
                Console.WriteLine(f);
            }

            Folder test = new Folder();
            test.id = 1;
            List<Favorite> lstFav = db.selectAllFavoriteByFolder(test);
            foreach (Favorite fav in lstFav)
            {
                Console.WriteLine(fav);
            }

            Favorite fa = new Favorite(28, "Ceci est un test", "www.runescape.com", 1);
            db.insertFavorite(fa);

            Folder fol = new Folder(15, "Ceci est un test folder",1);
            db.insertFolder(fol);

            fa.id = 1;
            fol.id = 3;
            db.deleteFavorite(fa);
            db.deleteFolder(fol);

            fa.id = 2;
            fa.name = "wow";
            fa.url = "www.wow.com";
            db.updateFavorite(fa);

            fol.id = 2;
            fol.name = "C'EST VRAIMENT TROP COOL LA PROGRAMMATION";
            db.updateFolder(fol);
        }
    }
}
