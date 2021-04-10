using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DesignPattern_Memento
{
    class Memento
    {
        private readonly string Content;

        public Memento(string memento)
        {
            Content = memento;
        }

        public override string ToString()
        {
            return Content;
        }
    }
}
