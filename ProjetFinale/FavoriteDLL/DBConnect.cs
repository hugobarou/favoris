using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MySql.Data.MySqlClient;
using System.Data;
using System.Data.Common;

namespace FavoriteDLL
{
    public class DBConnect
    {
        private MySqlConnection connection;
        private string connectionString;
        private string server;
        private string database;
        private string uid;
        private string password;
        public DBConnect()
        {
            Initialize();
        }
        private void Initialize()
        {
            server = "127.0.0.1";
            database = "projet_finale";
            uid = "root";
            password = "root";
            connectionString = "SERVER=" + server + ";" + "DATABASE=" + database + ";" + "UID=" + uid + ";" + "PASSWORD=" + password + ";";
            connection = new MySqlConnection(connectionString);
        }
        private bool OpenConnection()
        {
            try
            {
                connection.Open();
                return true;
            }
            catch (MySqlException ex)
            {
                switch (ex.Number)
                {
                    case 0:
                        Debug.WriteLine("Cannot connect to server.  Contact administrator");
                        break;

                    case 1045:
                        Debug.WriteLine("Invalid username/password, please try again");
                        break;
                }
                return false;
            }
        }
        private bool CloseConnection()
        {
            try
            {
                connection.Close();
                return true;
            }
            catch (MySqlException ex)
            {
                Debug.WriteLine(ex.Message);
                return false;
            }
        }
        // *** User querys ***
        public void insertUser(User u)
        {
            string query = "INSERT INTO user (firstName, lastName, email, password) VALUES (@firstName,@lastName,@email,@password)";
            try
            {
                this.OpenConnection();
                MySqlCommand cmd = new MySqlCommand(query, connection);
                cmd.Parameters.AddWithValue("@firstName", u.firstName);
                cmd.Parameters.AddWithValue("@lastName", u.lastName);
                cmd.Parameters.AddWithValue("@email", u.email);
                cmd.Parameters.AddWithValue("@password", u.password);
                int result = cmd.ExecuteNonQuery();
                Debug.WriteLine("Insert worked for:"+u.firstName);

            }
            catch (MySqlException ex)
            {
                Debug.WriteLine(ex.Message);
            }
            this.CloseConnection();
        }
        public bool userExist(User u)
        {
            string query = "SELECT * FROM user WHERE email = @email AND password = @password";
            bool result = false;
            int nbUser = 0;

            try
            {
                this.OpenConnection();
                MySqlCommand cmd = new MySqlCommand(query, connection);
                cmd.Parameters.AddWithValue("email", u.email);
                cmd.Parameters.AddWithValue("password", u.password);
                MySqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    nbUser++;
                }
                dr.Close();
                if (nbUser > 0)
                {
                    result = true;
                }
                Debug.WriteLine("userExist worked");

            }
            catch (MySqlException ex)
            {
                Debug.WriteLine(ex.Message);
            }
            this.CloseConnection();
            return result;
        }
        public User selectUser(User u)
        {
            string query = "SELECT * FROM user WHERE email = @email AND password = @password";
            List<User> lst = new List<User>();

            try
            {
                this.OpenConnection();
                MySqlCommand cmd = new MySqlCommand(query, connection);
                cmd.Parameters.AddWithValue("email", u.email);
                cmd.Parameters.AddWithValue("password", u.password);
                MySqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    User user = new User(dr.GetInt32(0), dr["firstName"].ToString(), dr["lastName"].ToString(), dr["email"].ToString(), dr["password"].ToString());
                    lst.Add(user);
                }
                dr.Close();
                Debug.WriteLine("selectUser worked");

            }
            catch (MySqlException ex)
            {
                Debug.WriteLine(ex.Message);
            }
            this.CloseConnection();
            return lst[0];
        }
        // *** Folder querys ***
        public void insertFolder(Folder f)
        {
            string query = "INSERT INTO folder (folderName, userId) VALUES (@folderName, @userId)";
            try
            {
                this.OpenConnection();
                MySqlCommand cmd = new MySqlCommand(query, connection);
                cmd.Parameters.AddWithValue("@folderName", f.name);
                cmd.Parameters.AddWithValue("@userId", f.userId);
                int result = cmd.ExecuteNonQuery();
                Debug.WriteLine("Insert worked for folder:" + f.name);
            }
            catch(MySqlException ex)
            {
                Debug.WriteLine(ex.Message);
            }
            this.CloseConnection();

        }
        public void deleteFolder(Folder f)
        {
            string query = "DELETE FROM folder WHERE id = @id";
            try
            {
                this.OpenConnection();
                MySqlCommand cmd = new MySqlCommand(query, connection);
                cmd.Parameters.AddWithValue("@id", f.id);
                int result = cmd.ExecuteNonQuery();
                Debug.WriteLine("Delete worked for folder:" + f.id);
            }
            catch (MySqlException ex)
            {
                Debug.WriteLine(ex.Message);
            }
            this.CloseConnection();
        }
        public void updateFolder(Folder f)
        {
            string query = "UPDATE folder SET folderName = @name WHERE id = @id";
            try
            {
                this.OpenConnection();
                MySqlCommand cmd = new MySqlCommand(query, connection);
                cmd.Parameters.AddWithValue("@name", f.name);
                cmd.Parameters.AddWithValue("@id", f.id);
                int result = cmd.ExecuteNonQuery();
                Debug.WriteLine("Update worked for folder:" + f.id + f.name);
            }
            catch (MySqlException ex)
            {
                Debug.WriteLine(ex.Message);
            }
            this.CloseConnection();
        }
        public List<Folder> selectAllFolderByUser(User u)
        {
            string query = "SELECT * FROM folder WHERE userId = @userId";
            List<Folder> lst = new List<Folder>();

            try
            {
                this.OpenConnection();
                MySqlCommand cmd = new MySqlCommand(query, connection);
                cmd.Parameters.AddWithValue("@userId", u.id);
                MySqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    Folder f = new Folder(dr.GetInt32(0), dr["folderName"].ToString(), dr.GetInt32(2));
                    lst.Add(f);
                }
                dr.Close();
                Debug.WriteLine("selectAllFolderByUser worked");

            }
            catch (MySqlException ex)
            {
                Debug.WriteLine(ex.Message);
            }
            this.CloseConnection();
            return lst;
        }
        // *** Favorite querys ***
        public void insertFavorite(Favorite f)
        {
            string query = "INSERT INTO favorite (favoriteName, url, folderId) VALUES (@favoriteName, @url, @folderId)";
            try
            {
                this.OpenConnection();
                MySqlCommand cmd = new MySqlCommand(query, connection);
                cmd.Parameters.AddWithValue("@favoriteName", f.name);
                cmd.Parameters.AddWithValue("@url", f.url);
                cmd.Parameters.AddWithValue("@folderId", f.folderId);
                int result = cmd.ExecuteNonQuery();
                Debug.WriteLine("Insert worked for favorite:" + f.name);
            }
            catch (MySqlException ex)
            {
                Debug.WriteLine(ex.Message);
            }
            this.CloseConnection();
        }
        public void deleteFavorite(Favorite f)
        {
            string query = "DELETE FROM favorite WHERE id = @id";
            try
            {
                this.OpenConnection();
                MySqlCommand cmd = new MySqlCommand(query, connection);
                cmd.Parameters.AddWithValue("@id", f.id);
                int result = cmd.ExecuteNonQuery();
                Debug.WriteLine("Delete worked for favorite:" + f.id);
            }
            catch (MySqlException ex)
            {
                Debug.WriteLine(ex.Message);
            }
            this.CloseConnection();
        }
        public void updateFavorite(Favorite f)
        {
            string query = "UPDATE favorite SET favoriteName = @name, url = @url WHERE id = @id";
            try
            {
                this.OpenConnection();
                MySqlCommand cmd = new MySqlCommand(query, connection);
                cmd.Parameters.AddWithValue("@name", f.name);
                cmd.Parameters.AddWithValue("@url", f.url);
                cmd.Parameters.AddWithValue("@id", f.id);
                int result = cmd.ExecuteNonQuery();
                Debug.WriteLine("Update worked for favorite:" + f.id + f.name + f.url);
            }
            catch (MySqlException ex)
            {
                Debug.WriteLine(ex.Message);
            }
            this.CloseConnection();
        }
        public List<Favorite> selectAllFavoriteByFolder(Folder f)
        {
            string query = "SELECT * FROM favorite WHERE folderId = @folderId";
            List<Favorite> lst = new List<Favorite>();

            try
            {
                this.OpenConnection();
                MySqlCommand cmd = new MySqlCommand(query, connection);
                cmd.Parameters.AddWithValue("@folderId", f.id);
                MySqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    Favorite fav = new Favorite(dr.GetInt32(0), dr["favoriteName"].ToString(), dr["url"].ToString(), dr.GetInt32(3));
                    lst.Add(fav);
                }
                dr.Close();
                Debug.WriteLine("selectAllFavoriteByFolder worked");

            }
            catch (MySqlException ex)
            {
                Debug.WriteLine(ex.Message);
            }
            this.CloseConnection();
            return lst;
        }
    }
}
