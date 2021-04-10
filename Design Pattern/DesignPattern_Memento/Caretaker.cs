using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DesignPattern_Memento
{
    class Caretaker
    {
        private List<Memento> ListMementos;

        public Caretaker()
        {
            ListMementos = new List<Memento>();
        }

        public void AddMemento(Memento memento)
        {
            ListMementos.Add(memento);
        }

        public void UndoMemento()
        {
            ListMementos.RemoveAt(ListMementos.Count - 1);
        }

        public Memento GetMemento()
        {
            return ListMementos[ListMementos.Count - 1];
        }
    }
}
