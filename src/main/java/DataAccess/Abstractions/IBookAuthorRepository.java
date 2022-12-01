package DataAccess.Abstractions;

import DataAccess.Entities.BookAuthor;
import DataAccess.Entities.BaseEntity;
import java.util.ArrayList;

public interface IBookAuthorRepository{
    public ArrayList<BookAuthor> getList();

    public void Add(BookAuthor entity);

    public void Update(BookAuthor entity);

    public void Delete(int ID);

    public BookAuthor getById(int ID);
}
