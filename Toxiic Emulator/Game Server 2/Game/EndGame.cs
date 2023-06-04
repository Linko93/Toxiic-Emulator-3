using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Game_Server.Game
{
    class SP_EndGame : Packet
    {
        public SP_EndGame(User usr)
        {

            Room Room = usr.room;
            //30048 1 0 1 0 0 0 0 0 0 3 0 4 10 0 87 97 481 1169318 2 0 1 2 2 0 41 76 267 2315317 0 0 16 7 8 0 42 100 443 1699204 12 0 16 
            //30048 1 31 60 31 60 0 0 0 0 0 0 0 0 0 186 130360
            newPacket(30048);
            addBlock(1);
            if (Room.channel != 3)
            {
                addBlock(usr.ExpEarned);
                addBlock(usr.DinarEarned);
                Fill(0, 2);
                if (Room.mode != 5)
                {
                    addBlock((Room.channel == 1 && (Room.mode == (int)RoomMode.Explosive || Room.mode == (int)RoomMode.HeroMode) ? Room.DerbRounds : Room.KillsDerbaranLeft)); // Rounds Won Derberan
                    addBlock((Room.channel == 1 && (Room.mode == (int)RoomMode.Explosive || Room.mode == (int)RoomMode.HeroMode) ? Room.NIURounds : Room.KillsNIULeft)); // Rounds Won NIU
                }
                else
                {
                    if (Room.mapid == 42)
                    {
                        addBlock(Room.Mission3 != null ? 1 : 0);
                        addBlock(Room.Mission3 != null ? 0 : 1);
                    }
                    else if (Room.mapid == 56)
                    {
                        addBlock(Room.Mission2 != null ? 1 : 0);
                        addBlock(Room.Mission2 != null ? 0 : 1);
                    }
                    else
                    {
                        Fill(0, 2);
                    }
                }
                Fill(0, 6);
            }
            else
            {
                //30048 1 0 106000 52 69 13 69 0 0 0 0 39 0 0 0 0 580 130685
                if (Room.zombie != null)
                {
                    addBlock(Room.zombie.Wave >= (Room.zombiedifficulty > 0 ? 18 : 22) ? 1 : 0);
                }
                else
                {
                    addBlock(Room.timeattack.Stage >= (Room.zombiedifficulty > 0 ? 2 : 3) ? 1 : 0);
                }
                addBlock(Room.timespent);
                addBlock(usr.ExpEarned);
                addBlock(usr.DinarEarned);
                Fill(0, 10);
            }

            addBlock(Room.master);
            addBlock(usr.exp);
            addBlock(usr.dinar);
        }
    }
}