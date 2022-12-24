package BusinessLayer;

import DataAccess.Concretes.CategoryRepository;
import DataAccess.Entities.Category;
import java.util.ArrayList;

public class CategoryService {
    
    private CategoryRepository categoryRepository;
    
    public CategoryService(){
        categoryRepository=new CategoryRepository();
    }
    
    public ArrayList<Category> List() {
        ArrayList<Category> categories=categoryRepository.getList();
        return categories;
    }

    public Category getByID(int ID) {   
        Category category=new Category();
        category=categoryRepository.getById(ID);
        return category;
    }

    public void Add(Category entity) {
        categoryRepository.Add(entity);
    }

    public void Update(Category entity) {
        categoryRepository.Update(entity);
    }

    public void Delete(int ID) {
        categoryRepository.Delete(ID);
    }
    
}
