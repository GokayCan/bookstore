package BusinessLayer;

import DataAccess.Concretes.BookAuthorRepository;
import DataAccess.Entities.BookAuthor;


public class BookAuthorService {
    
    private BookAuthorRepository bookAuthorRepository;
    
    public BookAuthorService() {
        bookAuthorRepository = new BookAuthorRepository();
    }

    public void Add(BookAuthor entity) {     
        bookAuthorRepository.Add(entity);
    }

    public void Delete(int ID) {
        bookAuthorRepository.Delete(ID);
    }
    
}
