package BusinessLayer;

import DataAccess.Concretes.UserRepository;
import DataAccess.Entities.BaseEntity;
import DataAccess.Entities.User;
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
        throw new UnsupportedOperationException("Not supported yet.");
    }

    public void Add(User entity) {
        throw new UnsupportedOperationException("Not supported yet."); 
    }

    public void Update(User entity) {
        throw new UnsupportedOperationException("Not supported yet."); 
    }

    public void Delete(int ID) {
        throw new UnsupportedOperationException("Not supported yet.");
    }
    
    public int getByEmail(String email) {
        return repo.getByEmail(email);
    }
    
}
