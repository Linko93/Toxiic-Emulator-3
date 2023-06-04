using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Game_Server.Game
{
    class SP_Unknown : Packet
    {
        public SP_Unknown(ushort packetId, params object[] Params)
        {
            newPacket(packetId);
            Params.ToList().ForEach(p => { addBlock(p); });
        }
    }
}
