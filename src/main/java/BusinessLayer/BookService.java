package BusinessLayer;

import DataAccess.Concretes.BookRepository;
import DataAccess.Entities.Book;
import java.util.ArrayList;

public class BookService{
    
    BookRepository repo;
    
    public BookService(){
        repo = new BookRepository();
    }

    public ArrayList<Book> List() {
        return repo.getList();
    }

    public Book getByID(int ID) {
        Book book = new Book();     
        book=repo.getById(ID);
        return book;
    }

    public void Add(Book entity) {
        repo.Add(entity);
    }

    public void Update(Book entity) {  
        repo.Update(entity);
    }

    public void Delete(int ID) {
        repo.Delete(ID);
    }
    
    public ArrayList<Book> getOnlyId_Name() {
        return repo.getOnlyId_Name();
    }
    
    public ArrayList<Book> ListByCategory(int ID) {
        return repo.getBooksByCategory(ID);
    }
    
    public ArrayList<Book> ListByAuthor(int ID) {
        return repo.getBooksByAuthor(ID);
    }
    
   
    public boolean CheckStockAmount(int BookID){
        return repo.CheckStockAmount(BookID);
    }
    
    
    
}
