package BusinessLayer;

import DataAccess.Concretes.BookAuthorRepository;
import DataAccess.Entities.BaseEntity;
import DataAccess.Entities.BookAuthor;
import java.util.ArrayList;

public class BookAuthorService {

    public ArrayList<BaseEntity> List() {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    public BaseEntity getByID(int ID) {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    public void Add(BookAuthor entity) {
        System.out.println(entity);
        BookAuthorRepository bookAuthorRepository=new BookAuthorRepository();
        
        bookAuthorRepository.Add(entity);
    }

    public void Update(BaseEntity entity) {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    public void Delete(int ID) {
        BookAuthorRepository bookAuthorRepository=new BookAuthorRepository();
        
        bookAuthorRepository.Delete(ID);
    }
    
}
