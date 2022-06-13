using Saratov.Evstifeev.TestComicsLibrary.Entities.Static;
using System;

namespace Saratov.Evstifeev.TestComicsLibrary.Entitires.Interfaces
{
    public interface IUser : IEntity
    {
        public int PasswordHashCode { get; set; }
        public UserRole UserRole { get; set; }
        public UserPrivileges UserPrivileges { get; set; }
        public DateTime? BannedUntil { get; set; }
    }
}
