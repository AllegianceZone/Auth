using System;
using System.Collections.Generic;
using System.Text;

namespace Allegiance.CommunitySecuritySystem.Client.Utility
{
    internal delegate void TaskEventHandler<T>(object sender, T args);

    internal delegate void TaskDelegate(object data);
}