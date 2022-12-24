package BusinessLayer;

import DataAccess.Concretes.BookCategoryRepository;
import DataAccess.Entities.BookCategory;

public class BookCategoryService {

    private BookCategoryRepository bookCategoryRepository;
    
    public BookCategoryService() {
        bookCategoryRepository = new BookCategoryRepository();
    }


    public void Add(BookCategory entity) {       
        bookCategoryRepository.Add(entity);
    }


    public void Delete(int ID) {
        bookCategoryRepository.Delete(ID);
    }
    
}
