package DataAccess.Abstractions;

import DataAccess.Entities.Author;
import java.util.ArrayList;

public interface IAuthorRepository{
    
    public ArrayList<Author> getList();

    public void Add(Author entity);

    public void Update(Author entity);

    public void Delete(int ID);

    public Author getById(int ID);
    
}
