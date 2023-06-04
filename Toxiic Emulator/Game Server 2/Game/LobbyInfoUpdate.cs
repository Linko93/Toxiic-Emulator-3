using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Game_Server.Game
{
    class SP_LobbyInfoUpdate : Packet
    {
        public SP_LobbyInfoUpdate(User usr)
        {
            newPacket(32258);
            addBlock(usr.kills); // Kills
            addBlock(usr.deaths); // Deaths
            addBlock(usr.wonMatchs); // Won
            addBlock(usr.lostMatchs); // Lose
        }
    }
}
