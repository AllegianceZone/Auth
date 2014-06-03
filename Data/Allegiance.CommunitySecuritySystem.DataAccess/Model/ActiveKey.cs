using System;

namespace ACSSAuth.DataAccess
{
    public partial class ActiveKey
    {
        #region Fields

        public const int PreferredMinUsedKeys   = 10;

        public const int PreferredMinLifetime   = 12; //Hours

        private const string MutexId            = "Global\\{CSSActiveKey}";

        #endregion
    }
}