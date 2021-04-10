using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;

namespace Observer_Pattern
{
    class Program
    {
        static void Main(string[] args)
        {
            var subject = new Subject();
            var observer1 = new Observer(subject);
            var observer2 = new Observer(subject);
            var observer3 = new Observer(subject);
            var observer4 = new Observer(subject);

            var timer = new Timer(e => Run(), null, TimeSpan.Zero, TimeSpan.FromSeconds(1));
            Console.ReadLine();

            void Run()
            {
                Console.Clear();
                var rand1 = new Random().Next(1, 100);
                subject.SetNum(rand1);
            }
        }


    }
}
