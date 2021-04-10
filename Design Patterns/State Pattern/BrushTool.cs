using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StatePattern
{
    class BrushTool : ITool
    {
        public string ToolName
        {
            get { return "Brush Tool"; }
        }

        public void MouseDown()
        {
            Console.WriteLine("Brushing..");
        }

        public void MouseUp()
        {
            Console.WriteLine("Stopped brushing");

        }
    }
}
