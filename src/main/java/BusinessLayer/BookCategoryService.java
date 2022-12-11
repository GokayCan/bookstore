package BusinessLayer;

import DataAccess.Concretes.BookCategoryRepository;
import DataAccess.Entities.BaseEntity;
import DataAccess.Entities.BookCategory;
import java.util.ArrayList;

public class BookCategoryService {

    public ArrayList<BaseEntity> List() {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    public BaseEntity getByID(int ID) {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    public void Add(BookCategory entity) {
        BookCategoryRepository bookCategoryRepository=new BookCategoryRepository();
        
        bookCategoryRepository.Add(entity);
    }

    public void Update(BaseEntity entity) {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    public void Delete(int ID) {
        BookCategoryRepository bookCategoryRepository=new BookCategoryRepository();
        
        bookCategoryRepository.Delete(ID);
    }
    
}
