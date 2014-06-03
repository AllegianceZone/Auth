using System;
using ACSSAuth.Client.Service;
using ACSSAuth.Client.Utility;

namespace ACSSAuth.Client.ClientService
{
    public partial class PollOption
    {
        public void ApplyVote()
        {
            TaskHandler.RunTask(delegate(object data)
            {
                var parameters  = data as object[];
                var selected    = parameters[0] as PollOption;

                try
                {
                    ServiceHandler.Service.ApplyVote(new PollData()
                    {
                        OptionId            = selected.Id,
                        OptionIdSpecified   = true,
                    });

                    MainForm.SetStatusBar("Vote Response Sent.");
                }
                catch (Exception error)
                {
                    Log.Write(error);
                }
            }, this);
        }

        public override string ToString()
        {
            return this.Option;
        }
    }
}