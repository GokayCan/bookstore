package BusinessLayer;

import DataAccess.Concretes.*;
import DataAccess.Entities.*;
import java.util.ArrayList;

public class UserService{
    UserRepository repo;
    
    public UserService(){
        repo = new UserRepository();
    }
    
    public ArrayList<User> List() {
        return repo.getList();
    }

    public User getByID(int ID) {
        User user=new User();
        user=repo.getById(ID);
        return user;
    }

    public void Add(User entity) {
        repo.Add(entity);
    }
    public void Register(User entity) {
        repo.Register(entity);
    }

    public void Update(User entity) {
        repo.Update(entity);
    }

    public void Delete(int ID) {
        repo.Delete(ID);
    }
    
    public User getByEmail(String email,String password) {
        return repo.getByEmail(email,password);
    }
    
    public ArrayList<Book> MyBookList(int ID){
        return repo.getMyBooks(ID);
    }

    public int getIDByEmail(String email) {
        return repo.getIDByEmail(email);
    }
    
    public boolean EmailExist(String email){
        return repo.EmailExist(email);
    }
    
}
