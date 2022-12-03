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
        Author author=new Author();
        
        AuthorRepository authoryRepository=new AuthorRepository();
        
        author=authoryRepository.getById(ID);
        
        return author;
    }

    public void Add(Author entity) {
        AuthorRepository authoryRepository=new AuthorRepository();
        
        authoryRepository.Add(entity);
    }

    public void Update(Author entity) {
        AuthorRepository authoryRepository=new AuthorRepository();
        
        authoryRepository.Update(entity);
    }

    public void Delete(int ID) {
        AuthorRepository authoryRepository=new AuthorRepository();
        
        authoryRepository.Delete(ID);
    }
    
}
