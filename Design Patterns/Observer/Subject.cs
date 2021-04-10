using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Observer_Pattern
{
    class Subject
    {
        private List<Observer> Observers;
        private double Num;

        public Subject()
        {
            Observers = new List<Observer>();
        }

        public void SetNum(double newNum)
        {
            Num = newNum;

            foreach (Observer x in Observers)
            {
                x.Update(Num);
            }
        }

        public void Register(Observer newobserver)
        {
            Observers.Add(newobserver);
        }

        public void Unregister(Observer deleteobserver)
        {
            int observerindex = Observers.IndexOf(deleteobserver);
            Observers.RemoveAt(observerindex);
        }
    }
}
