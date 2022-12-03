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
        
        Category category=new Category();
        
        CategoryRepository categoryRepository=new CategoryRepository();
        
        category=categoryRepository.getById(ID);
        
        return category;
    }

    public void Add(Category entity) {
        CategoryRepository categoryRepository=new CategoryRepository();
        
        categoryRepository.Add(entity);
    }

    public void Update(Category entity) {
        CategoryRepository categoryRepository=new CategoryRepository();
        
        categoryRepository.Update(entity);
    }

    public void Delete(int ID) {
        CategoryRepository categoryRepository=new CategoryRepository();
        
        categoryRepository.Delete(ID);
    }
    
}
