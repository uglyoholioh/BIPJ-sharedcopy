using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using NBitcoin;
using NBitcoin.RPC;

namespace BIPJ_sharedcopy.Classes
{
    public class Bitcoin
    {
        // bitcoin core 
        // test credentials 
        public static Network network = Network.TestNet;
        public static readonly string rpcHost = "127.0.0.1:8332";
        public static readonly string rpcCredentials = "test123:test123";
        public static readonly string walletPassPhrase = "wizard";
        public static readonly int walletUnlockTime = 20;
    }
}