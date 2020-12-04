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
        private DbConnection connection;
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
        public void Insert()
        {
        }
        public List<User> selectAllUser()
        {
            string query = "SELECT * FROM user";
            List<User> lst = new List<User>();

            if (this.OpenConnection() == true)
            {
                DbCommand cmd = connection.CreateCommand();
                cmd.CommandText = query;
                cmd.CommandType = CommandType.Text;
                DbDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    User u = new User(dr.GetInt32(0), dr["firstName"].ToString(), dr["lastName"].ToString(), dr["email"].ToString(), dr["password"].ToString());
                    lst.Add(u);
                }
                dr.Close();
            }
            this.CloseConnection();
            return lst;
        }
        public List<Folder> selectAllFolderByUser(User u)
        {
            List<Folder> lst = new List<Folder>();

            return lst;

        }
        public List<Favorite> selectAllFavoriteByUser(User u)
        {
            List<Favorite> lst = new List<Favorite>();

            return lst;
        }


    }
}
