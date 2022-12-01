package DataAccess.Abstractions;

import DataAccess.Entities.BaseEntity;
import DataAccess.Entities.BookCategory;
import java.util.ArrayList;

public interface IBookCategoryRepository{
    public ArrayList<BookCategory> getList();

    public void Add(BookCategory entity);

    public void Update(BookCategory entity);

    public void Delete(int ID);

    public BookCategory getById(int ID);
}
