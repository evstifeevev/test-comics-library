using Saratov.Evstifeev.TestComicsLibrary.Entities.Static;
using Saratov.Evstifeev.TestComicsLibrary.Entitires.Interfaces;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Saratov.Evstifeev.TestComicsLibrary.Entities
{
    public class User : IUser
    {
        public Guid Id { get; init; }
        public DateTime CreatedAt { get; init; } = DateTime.Now;
        public int PasswordHashCode { get; set; }
        public string Name { get; set; }
        public bool IsDeleted { get; set; } = false;
        public UserRole UserRole { get; set; } = UserRole.User;
        public UserPrivileges UserPrivileges { get; set; } = UserPrivileges.Read;
        public DateTime? BannedUntil { get; set; } = null;
    }
}
