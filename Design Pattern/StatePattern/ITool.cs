using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StatePattern
{
    interface ITool
    {
        string ToolName { get; }

        void MouseDown();

        void MouseUp();

    }
}
