package DataAccess.Abstractions;

import DataAccess.Entities.Category;
import java.util.ArrayList;

public interface ICategoryRepository {
    
    public ArrayList<Category> getList();

    public void Add(Category entity);

    public void Update(Category entity);

    public void Delete(int ID);

    public Category getById(int ID);
    
}
