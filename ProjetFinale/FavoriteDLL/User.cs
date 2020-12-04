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
    public class User : INotifyPropertyChanged
    {
        private int _id;
        private string _firstName, _lastName, _email, _password;

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
        public string firstName
        {
            get { return _firstName; }
            set
            {
                if (_firstName != value)
                    _firstName = value;
                NotifyPropertyChanged("firstName");
            }
        }
        public string lastName
        {
            get { return _lastName; }
            set
            {
                if (_lastName != value)
                    _lastName = value;
                NotifyPropertyChanged("lastName");
            }
        }
        public string email
        {
            get { return _email; }
            set
            {
                if (_email != value)
                    _email = value;
                NotifyPropertyChanged("email");
            }
        }
        public string password
        {
            get { return _password; }
            set
            {
                if (_password != value)
                    _password = value;
                NotifyPropertyChanged("password");
            }
        }
    }
}
