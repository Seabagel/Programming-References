using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Observer_Pattern
{
    class Observer
    {
        private double Num;
        private static int Count = 0;
        private int ID;

        public Observer(Subject subject)
        {
            ID = ++Count;
            subject.Register(this);
        }

        public void Update(double num)
        {
            Num = num;
            PrintNum();
        }

        private void PrintNum()
        {
            Console.WriteLine("This ID: " + ID + "\nNum: " + Num);
            Console.WriteLine();
        }
    }
}
