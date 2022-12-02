package BusinessLayer;

import DataAccess.Concretes.UserRepository;
import DataAccess.Entities.BaseEntity;
import DataAccess.Entities.User;
import java.util.ArrayList;

public class UserService{

    public ArrayList<User> List() {
        UserRepository repo = new UserRepository();
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
    
}
