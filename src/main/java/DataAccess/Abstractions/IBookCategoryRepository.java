package DataAccess.Abstractions;

import DataAccess.Entities.BookCategory;

public interface IBookCategoryRepository{

    public void Add(BookCategory entity);

    public void Delete(int ID);

}
