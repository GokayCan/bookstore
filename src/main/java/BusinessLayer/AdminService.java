package BusinessLayer;

import DataAccess.Concretes.AdminRepository;
import DataAccess.Entities.Admin;
import java.util.ArrayList;

public class AdminService{
    
    private AdminRepository repo;
    
    public AdminService(){
        repo = new AdminRepository();
    }

    public ArrayList<Admin> List() {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    public Admin getByID(int ID) {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    public void Add(Admin entity) {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    public void Update(Admin entity) {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    public void Delete(int ID) {
        throw new UnsupportedOperationException("Not supported yet.");
    }
    
    public boolean IsAccountExist(String username, String password) {
        return repo.IsAccountExist(username, password);
    }
    
}
