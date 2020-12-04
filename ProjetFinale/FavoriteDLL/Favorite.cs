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
    public class Favorite : INotifyPropertyChanged
    {
        private int _id, _folderId;
        private string _name, _url;

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
        public int folderId
        {
            get { return _folderId; }
            set
            {
                if (_folderId != value)
                    _folderId = value;
                NotifyPropertyChanged("folderId");
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
        public string url
        {
            get { return _url; }
            set
            {
                if (_url != value)
                    _url = value;
                NotifyPropertyChanged("url");
            }
        }
    }
}
