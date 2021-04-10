using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StatePattern
{
    class EraseTool : ITool
    {
        public string ToolName
        {
            get { return "Erase Tool"; }
        }

        public void MouseDown()
        {
            Console.WriteLine("Erasing..");
        }

        public void MouseUp()
        {
            Console.WriteLine("Stopped erasing");

        }
    }
}
