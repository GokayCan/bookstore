package DataAccess.Abstractions;

import DataAccess.Entities.BookAuthor;

public interface IBookAuthorRepository{

    public void Add(BookAuthor entity);

    public void Delete(int ID);

}
