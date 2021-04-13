using System;

namespace online_business_card
{
    internal class sqlconnection
    {
        private string strcon;

        public sqlconnection(string strcon)
        {
            this.strcon = strcon;
        }

        public object State
        {
            get;
            internal set;
        }
        public object ExecuteNonQ
        {
            get;
            internal set;
        }
        public object ExecuteNonQuery
        {
            get;
            internal set;
        }

        internal void open()
        {
            throw new NotImplementedException();
        }

        internal void Open()
        {
            throw new NotImplementedException();
        }

        internal void Close()
        {
            throw new NotImplementedException();
        }
    }
}