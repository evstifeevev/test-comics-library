using System;

namespace Saratov.Evstifeev.TestComicsLibrary.Entitires.Interfaces
{
    public interface IEntity
    {
        public Guid Id { get; init; }
        public DateTime CreatedAt { get; init; }
        public string Name { get; set; }

        // TODO: auto batch should be created to delete entities marked as deleted on schedule
        public bool IsDeleted { get; set; }
        public Guid CreatedBy { get; init; }
    }
}
