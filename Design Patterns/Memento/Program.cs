using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DesignPattern_Memento
{
    class Program
    {
        static void Main(string[] args)
        {
            var originator = new Originator();

            Console.WriteLine("Write a,b,c to Caretaker");
            originator.Save("a");
            originator.PrintMemento();

            originator.Save("b");
            originator.PrintMemento();

            originator.Save("c");
            originator.PrintMemento();

            Console.WriteLine();
            Console.WriteLine("Undo twice");

            originator.Undo();
            originator.Undo();
            originator.Restore();
            originator.PrintMemento();

            Console.ReadKey();
        }
    }
}
