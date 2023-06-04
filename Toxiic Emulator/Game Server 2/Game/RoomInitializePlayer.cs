using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Game_Server.Game
{
    class SP_RoomInitializeUsers : Packet
    {
        public SP_RoomInitializeUsers(Room room)
        {
            newPacket(30017);

            addBlock(room.users.Count);
            foreach (User usr in room.users.Values)
            {
                addBlock(usr.roomslot);
                addBlock(usr.Health);
                addBlock((usr.currentVehicle == null ? -1 : usr.currentVehicle.ID));
                addBlock((usr.currentSeat == null ? -1 : usr.currentSeat.ID));
                addBlock(-1); // <- To remove if Chapter 1
            }

            addBlock(room.Vehicles.Count);
            foreach (Vehicle Object in room.Vehicles.Values)
            {
                addBlock(Object.ID); // <- To remove if Chapter1
                addBlock(Object.Health);
                addBlock(Object.MaxHealth);
                addBlock("NULL"); // <- To remove if Chapter1
            }
        }
    }
}
