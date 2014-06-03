using System;
using System.Collections.Generic;
using ACSSAuth.Client.ClientService;
using ACSSAuth.Client.Utility;

namespace ACSSAuth.Client.Service
{
    static class Poll
    {
        public static List<ClientService.Poll> CurrentPolls { get; private set; }

        /// <summary>
        /// Retrieve polls from the server
        /// </summary>
        internal static void RetrievePolls(TaskDelegate onCompleteDelegate)
        {
            if (CurrentPolls != null)
            {
                onCompleteDelegate(CurrentPolls);
                return;
            }

            TaskHandler.RunTask(delegate(object data)
            {
                var parameters  = data as object[];
                var signal      = parameters[0] as TaskDelegate;
				var pollList = new List<ClientService.Poll>();
                
                try
                {
                    pollList.AddRange(ServiceHandler.Service.ListPolls(new ClientService.AuthenticatedData()));

                    CurrentPolls = pollList;
                }
                catch (Exception error)
                {
                    Log.Write(error);
                }

                //Signal to the calling thread that the operation is complete
                signal(pollList);

            }, onCompleteDelegate);
        }
    }
}