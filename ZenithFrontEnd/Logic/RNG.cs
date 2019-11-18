using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ZenithFrontEnd.Logic
{
    public class RNG
    {
        public static string GetRandomNumber(int length)
        {
            char[] chars = "abcdefghijklmnopqrstyvABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890".ToCharArray();
            string id = "";
            Random random = new Random();

            for (int i = 0; i<length; i++)
            {
                int x = random.Next(1, chars.Length);
                //avoid repitition of char
                if (!id.Contains(chars.GetValue(x).ToString()))
                {
                    id += chars.GetValue(x);
                }
                else
                {
                    i = i - 1;
                }
            }
            return id;
        }
    }
}