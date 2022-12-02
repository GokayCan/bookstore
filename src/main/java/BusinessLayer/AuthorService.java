package BusinessLayer;

import DataAccess.Concretes.AuthorRepository;
import DataAccess.Entities.Author;
import DataAccess.Entities.Category;
import java.util.ArrayList;

public class AuthorService{

    public ArrayList<Author> List() {
        AuthorRepository authoryRepository=new AuthorRepository();
        
        ArrayList<Author> authors=authoryRepository.getList();
        
        return authors;
    }

    public Author getByID(int ID) {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    public void Add(Author entity) {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    public void Update(Author entity) {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    public void Delete(int ID) {
        throw new UnsupportedOperationException("Not supported yet.");
    }
    
}
