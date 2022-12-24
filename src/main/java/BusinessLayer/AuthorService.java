package BusinessLayer;

import DataAccess.Concretes.AuthorRepository;
import DataAccess.Entities.Author;
import java.util.ArrayList;

public class AuthorService{
    
    private AuthorRepository authoryRepository;
    
    public  AuthorService(){
        authoryRepository = new AuthorRepository();
    }
    
    public ArrayList<Author> List() {     
        ArrayList<Author> authors = authoryRepository.getList();     
        return authors;
    }

    public Author getByID(int ID) {
        Author author = new Author();
        author = authoryRepository.getById(ID);
        return author;
    }

    public void Add(Author entity) {
        
        authoryRepository.Add(entity);
    }

    public void Update(Author entity) {
        
        authoryRepository.Update(entity);
    }

    public void Delete(int ID) {
        
        authoryRepository.Delete(ID);
    }
    
}
