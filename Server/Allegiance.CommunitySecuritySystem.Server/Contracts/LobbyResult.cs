using System.Runtime.Serialization;

namespace ACSSAuth.Server.Contracts
{
    [DataContract]
    public class LobbyResult
    {
        [DataMember]
        public int LobbyId { get; set; }

        [DataMember]
        public string Name { get; set; }

        [DataMember]
        public string Host { get; set; }
    }
}
