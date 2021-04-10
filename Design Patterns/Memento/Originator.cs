using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DesignPattern_Memento
{
    class Originator
    {
        private Memento Memento;
        private Caretaker Caretaker;

        public Originator()
        {
            Caretaker = new Caretaker();
        }

        public Memento Read()
        {
            return Memento;
        }

        public void Save(string state)
        {
            Memento = new Memento(state);
            Caretaker.AddMemento(Memento);
        }

        public void Undo()
        {
            Caretaker.UndoMemento();
        }

        public void Restore()
        {
            Memento = Caretaker.GetMemento();
        }

        public void PrintMemento()
        {
            Console.WriteLine(Memento.ToString());
        }
    }
}
