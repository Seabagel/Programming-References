using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StatePattern
{
    class Program
    {
        static void Main(string[] args)
        {
            var canvas = new Canvas();
            canvas.SelectTool(new EraseTool());
            canvas.ToolName();
            canvas.MouseDown();
            canvas.MouseUp();
            canvas.SelectTool(new BrushTool());
            canvas.ToolName();
            canvas.MouseDown();
            canvas.MouseUp();

            Console.ReadLine();
        }
    }
}
