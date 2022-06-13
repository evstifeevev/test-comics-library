namespace Saratov.Evstifeev.TestComicsLibrary.Entitires.Interfaces
{
    public interface IImage : IEntity
    {
        public int[] Content { get; set; }
        public string Hyperlink { get; set; }
        public IUser Author { get; set; }
    }
}
