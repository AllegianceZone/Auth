using System;
using System.Collections.Generic;
using System.Text;

namespace ACSSAuth.Client.Utility
{
    internal delegate void TaskEventHandler<T>(object sender, T args);

    internal delegate void TaskDelegate(object data);
}