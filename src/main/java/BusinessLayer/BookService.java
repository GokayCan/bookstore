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
        BookRepository bookRepository=new BookRepository();
        
        bookRepository.Update(entity);
    }

    public void Delete(int ID) {
        BookRepository bookRepository=new BookRepository();
        
        bookRepository.Delete(ID);
    }
    
    public ArrayList<Book> getOnlyId_Name() {
        BookRepository repo = new BookRepository();
        return repo.getOnlyId_Name();
    }
    
    
    
}
