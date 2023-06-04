using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Game_Server.Game
{
    class CP_CreateRoom : Handler
    {
        public override void Handle(User usr)
        {

            Managers.Channel ch = Managers.ChannelManager.channels[usr.channel];
            int id = ch.GetOpenID;
            if (id >= 0)
            {
                if (usr.room == null)
                {
                    Room r = new Room();
                    r.mapid = int.Parse(getBlock(4));

                    if (r.isPremMap(r.mapid) && usr.premium < 1)
                    {
                        usr.send(new SP_CreateRoom(SP_CreateRoom.ErrorCode.FailedToCreate));
                        return;
                    }
                    else
                    {
                        r.id = id;
                        r.channel = usr.channel;
                        r.name = getBlock(0);
                        r.enablepassword = int.Parse(getBlock(1));
                        r.password = getBlock(2);
                        r.maxusers = (int.Parse(getBlock(3)) + 1);
                        r.supermaster = usr.HasItem("CC02");
                        r.mode = int.Parse(getBlock(5));
                        r.type = int.Parse(getBlock(7));

                        if (r.channel == 3)
                        {
                            r.type = 0;
                            r.zombiedifficulty = byte.Parse(getBlock(13));
                        }

                        r.levellimit = int.Parse(getBlock(8));
                        r.premiumonly = int.Parse(getBlock(9));
                        r.votekickOption = int.Parse(getBlock(10));

                        int index = (r.mode == (int)RoomMode.Explosive || r.mode == (int)RoomMode.HeroMode || r.mode == (int)RoomMode.Annihilation ? 12 : 11);

                        r.rounds = int.Parse(getBlock(index));

                        r.timelimit = int.Parse(getBlock(14));
                        r.autostart = (int.Parse(getBlock(16)) == 1);

                        if (r.type == 1)
                        {
                            r.type = 0;
                            if (usr.clan != null)
                            {
                                int clanrank = usr.clan.clanRank(usr);
                                if (clanrank > 0 && clanrank < 9)
                                {
                                    r.type = 1;
                                }
                            }
                        }

                        if (r.type == 1 && r.mode == 1)
                        {
                            r.mode = 0;
                        }
                        else if (r.mode == 1 && usr.premium == 0)
                        {
                            r.rounds = 2;
                        }

                        r.new_mode = byte.Parse(getBlock(17));
                        r.new_mode_sub = int.Parse(getBlock(18));

                        if (r.new_mode > 6) r.new_mode = 6;

                        bool levelLimit = (usr.level >= (10 * (r.levellimit - 1)) + 1 || usr.level <= 10 && r.levellimit == 1 || r.levellimit == 0);

                        if (levelLimit)
                        {
                            switch (r.channel)
                            {
                                case 1:
                                    {
                                        switch (r.maxusers)
                                        {
                                            case 1: r.maxusers = 8; break;
                                            case 2: r.maxusers = 16; break;
                                            case 3: r.maxusers = 20; break;
                                            case 4: r.maxusers = 24; break;
                                        }
                                        break;
                                    }
                                case 2:
                                    {
                                        switch (r.maxusers)
                                        {
                                            case 1: r.maxusers = 8; break;
                                            case 2: r.maxusers = 16; break;
                                            case 3: r.maxusers = 20; break;
                                            case 4: r.maxusers = 24; break;
                                            case 5: r.maxusers = 32; break;
                                        }
                                        break;
                                    }
                                case 3:
                                    {
                                        r.zombiedifficulty = byte.Parse(getBlock(13));
                                        r.maxusers = 4;
                                        break;
                                    }
                            }

                            r.ch = ch;
                            
                            if (ch.AddRoom(id, r))
                            {
                                if (r.JoinUser(usr, 0))
                                {
                                    if(r.channel == 3 && r.mode != (int)RoomMode.Escape)
                                    {
                                        for (int i = 0; i < 28; i++)
                                        {
                                            r.Zombies.Add(i + 4, new Zombie((i + 4), 0, 0, 0));
                                        }
                                    }

                                    usr.send(new SP_JoinRoom(usr, r));
                                    byte[] buffer = (new SP_RoomListUpdate(r, 0)).GetBytes();
                                    byte[] buffer2 = (new SP_RoomListUpdate(r)).GetBytes();
                                    foreach (User curUsr in Managers.UserManager.GetUsersInChannel(r.channel, false))
                                    {
                                        if (curUsr.lobbypage == Math.Floor((decimal)(r.id / 13)))
                                        {
                                            curUsr.sendBuffer(buffer);
                                            curUsr.sendBuffer(buffer2);
                                        }
                                    }
                                    Managers.UserManager.UpdateUserlist(usr);
                                }
                                else
                                {
                                    // Error while adding room to the stuck
                                    Log.WriteError("Error: " + usr.nickname + " while adding room to the stuck");
                                    usr.send(new SP_CreateRoom(SP_CreateRoom.ErrorCode.FailedToCreate));
                                }
                            }
                            else
                            {
                                // Error while joining in seat 0 (?)

                                Log.WriteError("Error: " + usr.nickname + " while creating a room @ join [0]");
                                usr.send(new SP_CreateRoom(SP_CreateRoom.ErrorCode.FailedToCreate));
                            }
                        }
                        else
                        {
                            usr.send(new SP_CreateRoom(SP_CreateRoom.ErrorCode.FailedToCreate));
                        }
                    }
                }
            }
        }
    }

    class SP_CreateRoom : Packet
    {
        internal enum ErrorCode
        {
            FailedToCreate = 94501
        }

        public SP_CreateRoom(ErrorCode Code)
        {
            newPacket(29440);
            addBlock((int)Code);
        }

        public SP_CreateRoom(Room Room)
        {
            newPacket(29440);
            addBlock(1);
            addBlock(0); // User Room Slot
            addRoomInfo(Room);
        }
    }
}