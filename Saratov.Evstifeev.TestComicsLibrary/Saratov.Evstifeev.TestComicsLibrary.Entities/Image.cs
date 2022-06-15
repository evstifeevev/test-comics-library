using Saratov.Evstifeev.TestComicsLibrary.Entitires.Interfaces;
using System;

namespace Saratov.Evstifeev.TestComicsLibrary.Entities
{
    public class Image : IImage
    {
        public Guid Id { get; init; }
        public DateTime CreatedAt { get; init; } = DateTime.Now;
        public string Name { get; set; }
        public int[] Content { get; set; } = null;
        public string Hyperlink { get; set; } = null;
        public bool IsDeleted { get; set; } = false;
        public IUser Author { get; set; }
        public Guid CreatedBy { get; init; }
    }
}
