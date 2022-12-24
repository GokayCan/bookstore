package BusinessLayer;

import DataAccess.Concretes.AdminRepository;
import DataAccess.Entities.Admin;
import java.util.ArrayList;

public class AdminService{
    
    private AdminRepository repo;
    
    public AdminService(){
        repo = new AdminRepository();
    }
    
    public boolean IsAccountExist(String username, String password) {
        return repo.IsAccountExist(username, password);
    }
    
}
