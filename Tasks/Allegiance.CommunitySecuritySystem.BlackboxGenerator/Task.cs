using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Allegiance.CommunitySecuritySystem.DataAccess;

namespace Allegiance.CommunitySecuritySystem.BlackboxGenerator
{
    public class Task
    {
        #region Methods

        public static void Execute(int numBlackboxes, bool debugMode)
        {
            Console.Write("Generating {0} blackbox(es)... ", numBlackboxes);

            using (var db = new CSSDataContext())
            {
                for (int i = 0; i < numBlackboxes; i++)
					GenerateBlackbox(db, debugMode);
            }

            Console.WriteLine("Done.");
        }

		internal static ActiveKey GenerateBlackbox(CSSDataContext db, bool debugMode)
        {
			var key = Compiler.Build(debugMode);

            db.ActiveKeys.InsertOnSubmit(key);
            db.SubmitChanges();

            return key;
        }

        #endregion
    }
}