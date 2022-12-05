package BusinessLayer;

import DataAccess.Concretes.BookRepository;
import DataAccess.Entities.Book;
import java.util.ArrayList;

public class BookService{

    public ArrayList<Book> List() {
        BookRepository repo = new BookRepository();
        return repo.getList();
    }

    public Book getByID(int ID) {
        Book book=new Book();
        
        BookRepository bookRepository=new BookRepository();
        
        book=bookRepository.getById(ID);
        
        return book;
    }

    public void Add(Book entity) {
        BookRepository bookRepository=new BookRepository();
        
        bookRepository.Add(entity);
    }

    public void Update(Book entity) {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    public void Delete(int ID) {
        BookRepository bookRepository=new BookRepository();
        
        bookRepository.Delete(ID);
    }
    
    
    
}
