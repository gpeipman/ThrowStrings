using System;
using System.Runtime.CompilerServices;

namespace ThrowStrings
{
    class Program
    {
        static void Main(string[] args)
        {
            ThrowAndCatchException();
            ThrowAndCatchString();

            Console.WriteLine("\r\n\r\nPress any key to continue ...");
            Console.ReadKey();
        }

        [MethodImpl(MethodImplOptions.ForwardRef)]
        public static extern void ThrowAndCatchException();

        [MethodImpl(MethodImplOptions.ForwardRef)]
        public static extern void ThrowAndCatchString();
    }
}
