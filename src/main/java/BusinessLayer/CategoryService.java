package BusinessLayer;

import DataAccess.Concretes.CategoryRepository;
import DataAccess.Entities.BaseEntity;
import DataAccess.Entities.Category;
import java.sql.*;
import java.util.ArrayList;

public class CategoryService {
    
    public CategoryService(){
        
    }
    

    public ArrayList<Category> List() {
        
        CategoryRepository categoryRepository=new CategoryRepository();
        
        ArrayList<Category> categories=categoryRepository.getList();
        
        return categories;
    }

    public Category getByID(int ID) {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    public void Add(Category entity) {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    public void Update(Category entity) {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    public void Delete(int ID) {
        throw new UnsupportedOperationException("Not supported yet.");
    }
    
}
