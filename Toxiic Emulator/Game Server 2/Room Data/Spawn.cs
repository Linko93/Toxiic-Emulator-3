/*
 _____   ___ __  __  _____ _____   ___  _  __              ___   ___   __    __ 
/__   \ /___\\ \/ /  \_   \\_   \ / __\( )/ _\            / __\ /___\ /__\  /__\
  / /\///  // \  /    / /\/ / /\// /   |/ \ \            / /   //  /// \// /_\  
 / /  / \_//  /  \ /\/ /_/\/ /_ / /___    _\ \          / /___/ \_/// _  \//__  
 \/   \___/  /_/\_\\____/\____/ \____/    \__/          \____/\___/ \/ \_/\__/  
__________________________________________________________________________________

Created by: ToXiiC
Thanks to: CodeDragon, Kill1212, CodeDragon

*/
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using Game_Server.Game;
using Game_Server.Managers;

namespace Game_Server.Room_Data
{
    class RoomHandler_Spawn : RoomDataHandler
    {
        public override void Handle(User usr, Room room)
        {
            if (!room.gameactive) return;
            if (usr.IsAlive() && room.mode != 1) return;

            int mode = room.new_mode;
            int selection = room.new_mode_sub;

            #region New Modes
            switch (mode)
            {
                case 1:
                    if (selection == 0)
                    {
                        Item item = ItemManager.GetItem("DA02");
                        if (item != null)
                        {
                            usr.weapon = item.ID;
                        }
                    }
                    break;
                case 3:
                    if (selection == 0)
                    {
                        Item item = ItemManager.GetItem("DB01");
                        if (item != null)
                        {
                            usr.weapon = item.ID;
                        }
                    }
                    break;
                case 4:
                    if (selection == 0)
                    {
                        Item item = ItemManager.GetItem("DN01");
                        if (item != null)
                        {
                            usr.weapon = item.ID;
                        }
                    }
                    else if (selection == 1)
                    {
                        Item item = ItemManager.GetItem("D202");
                        if (item != null)
                        {
                            usr.weapon = item.ID;
                        }
                    }
                    break;
                case 5:
                    if (selection == 0)
                    {
                        Item item = ItemManager.GetItem("DB25");
                        if (item != null)
                        {
                            usr.weapon = item.ID;
                        }
                    }
                    else if (selection == 1)
                    {
                        Item item = ItemManager.GetItem("DC74");
                        if (item != null)
                        {
                            usr.weapon = item.ID;
                        }
                    }
                    else if (selection == 2)
                    {
                        Item item = ItemManager.GetItem("DG42");
                        if (item != null)
                        {
                            usr.weapon = item.ID;
                        }
                    }
                    break;
                case 6:
                    if (selection == 1)
                    {
                        Item item = ItemManager.GetItem("DA06");
                        if (item != null)
                        {
                            usr.weapon = item.ID;
                        }
                    }
                    break;
            }
            #endregion

            //Log.WriteDebug(string.Join(" ", sendBlocks));

            usr.Class = int.Parse(getBlock(7));
            if (usr.Class < 0 || usr.Class > 4)
            {
                /* Invalid spawn branch */

                Log.WriteLine(usr.nickname + " -> Invalid branch at spawn");
                return;
            }

            room.SpawnLocation++;
            if (room.SpawnLocation >= 15) room.SpawnLocation = 0;
            if (room.mode == 1)
            {
                sendBlocks[12] = room.SpawnLocation;
            }

            /* Snow fight */

            /*if(room.mapid == 72 && room.new_mode == 6 && room.new_mode_sub == 2)
            {
                usr.weapon = 122;
            }*/

            if (room.channel == 3)
            {
                room.SpawnedZombieplayers++;
                if (room.SpawnedZombieplayers >= room.users.Count && !room.FirstWaveSent)
                {
                    if (room.mode == 12)
                    {
                        room.send(new SP_Unknown(30053, 0, 0, 5, 5));
                    }
                    room.SendFirstWave = true;
                    room.zombieRunning = true;
                    if (room.zombie != null)
                    {
                        room.SleepTime = 15;
                    }

                    if (room.timeattack != null)
                    {
                        room.timeattack.time.Start();
                    }
                }
            }

            usr.classCode = getBlock(27);
            usr.Health = 1000;
            usr.Plantings = usr.skillPoints = 0;
            usr.spawnprotection = 3;
            usr.currentVehicle = null;
            usr.HPLossTick = 0;
            usr.rKillSinceSpawn = 0;
            usr.throwNades = usr.throwRockets = 0;
            usr.currentSeat = null;
            if (room.mapid == 68 || room.mapid == 67) usr.spawnprotection = 10;
            room.firstspawn = true;
            usr.ExplosiveAlive = true;
            usr.isSpawned = true;

            /* Important */

            sendPacket = true;
        }
    }
}
