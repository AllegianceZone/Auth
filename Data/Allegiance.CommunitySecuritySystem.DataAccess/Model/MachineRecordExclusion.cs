using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.Linq.SqlClient;
using ACSSAuth.Common.Envelopes.AuthInfo;

namespace ACSSAuth.DataAccess
{
	public partial class MachineRecordExclusion
	{
		public DeviceType DeviceType
		{
			get
			{
				return (DeviceType)this.RecordTypeId;
			}

			set
			{
				this.RecordTypeId = (int) value;
			}
		}


		public static bool IsMachineRecordExcluded(MachineRecord machineRecord)
		{
			using (CSSDataContext db = new CSSDataContext())
			{
				if (db.MachineRecordExclusions.FirstOrDefault(p => SqlMethods.Like(machineRecord.Identifier, p.IdentifierMask) && p.RecordTypeId == machineRecord.RecordTypeId) != null)
					return true;
			}

			return false;
		}
	}
}
