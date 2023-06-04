using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Game_Server.Game
{
    /// <summary>
    /// This class is used for crypt/uncrypt packets or MD5
    /// </summary>
    class Cryption
    {
        public const byte clientXor = 0x5b; //142; // Original = 10
        public const byte serverXor = 0x38; //85; // Original = 91

        public static byte[] encrypt(byte[] inputByte)
        {
            for (int i = 0; i < inputByte.Length; i++)
            {
                inputByte[i] ^= serverXor;
            }
            return inputByte;
        }

        public static byte[] decrypt(byte[] inputByte)
        {
            for (int i = 0; i < inputByte.Length; i++)
            {
                inputByte[i] ^= clientXor;
            }
            return inputByte;
        }
    }
}
