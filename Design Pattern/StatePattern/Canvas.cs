using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StatePattern
{
    class Canvas
    {
        private ITool CurrentTool;

        public void SelectTool(ITool selectedTool)
        {
            CurrentTool = selectedTool;

        }

        public void ToolName()
        {
            Console.WriteLine(CurrentTool.ToolName);
        }

        public void MouseDown()
        {
            CurrentTool.MouseDown();
        }

        public void MouseUp()
        {
            CurrentTool.MouseUp();
        }
    }
}
