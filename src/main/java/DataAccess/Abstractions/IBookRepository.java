package DataAccess.Abstractions;

import DataAccess.Entities.BaseEntity;
import DataAccess.Entities.Book;
import java.util.ArrayList;

public interface IBookRepository{
    public ArrayList<Book> getList();

    public void Add(Book entity);

    public void Update(Book entity);

    public void Delete(int ID);

    public Book getById(int ID);
    
}
