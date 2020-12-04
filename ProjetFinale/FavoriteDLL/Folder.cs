using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web.Script.Serialization;

namespace FavoriteDLL
{
    [Serializable]
    public class Folder : INotifyPropertyChanged
    {
        private int _id, _userId;
        private string _name;
        private List<Favorite> _lstFavorite;

        [field: NonSerialized]
        public event PropertyChangedEventHandler PropertyChanged;

        private void NotifyPropertyChanged(string propriete)
        {
            if (PropertyChanged != null)
            {
                PropertyChanged(this, new PropertyChangedEventArgs(propriete));
            }
        }
        public string serializeJSON()
        {
            var serializer = new JavaScriptSerializer();
            var serializedResult = serializer.Serialize(this);
            return serializedResult;
        }
        public void addFavorite(Favorite f)
        {
            lstFavorite.Add(f);
        }
        public int id
        {
            get { return _id; }
            set
            {
                if (_id != value)
                    _id = value;
                NotifyPropertyChanged("id");
            }
        }
        public int userId
        {
            get { return _userId; }
            set
            {
                if (_userId != value)
                    _userId = value;
                NotifyPropertyChanged("userId");
            }
        }
        public string name
        {
            get { return _name; }
            set
            {
                if (_name != value)
                    _name = value;
                NotifyPropertyChanged("name");
            }
        }
        public List<Favorite> lstFavorite
        {
            get { return _lstFavorite; }
            set
            {
                if (_lstFavorite != value)
                    _lstFavorite = value;
                NotifyPropertyChanged("lstFavorite");
            }
        }
    }
}
