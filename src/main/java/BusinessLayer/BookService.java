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
        throw new UnsupportedOperationException("Not supported yet.");
    }

    public void Add(Book entity) {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    public void Update(Book entity) {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    public void Delete(int ID) {
        throw new UnsupportedOperationException("Not supported yet.");
    }
    
}
