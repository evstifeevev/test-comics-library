using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Saratov.Evstifeev.TestComicsLibrary.Entities.Static
{
    public enum UserPrivileges
    {
        Denied = 0,
        Read = 1,
        Write = 2,
        Create = 4,
        Update = 8,
        Delete = 16,
    }
}
