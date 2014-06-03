using System.Linq;
using ACSSAuth.Common.Envelopes.AuthInfo;

namespace ACSSAuth.DataAccess
{
    public partial class MachineRecord
    {
        #region Properties

        public DeviceType DeviceType
        {
            get { return (DeviceType)this.RecordTypeId; }
            set { this.RecordTypeId = (int)value; }
        }

        #endregion

		//#region Methods

		//public static IQueryable<MachineRecord> FindMatches(CSSDataContext db, DeviceInfo info)
		//{
		//    return from r in db.MachineRecords
		//           where r.RecordTypeId == (int)info.Type
		//                && r.Identifier == info.Value
		//           select r;
		//}

		//#endregion
    }
}