package DataAccess.Abstractions;

import DataAccess.Entities.BaseEntity;
import DataAccess.Entities.Admin;
import java.util.ArrayList;

public interface IAdminRepository{
    
    public ArrayList<Admin> getList();

    public void Add(Admin entity);

    public void Update(Admin entity);

    public void Delete(int ID);

    public Admin getById(int ID);
    
    public boolean IsAccountExist(String username , String password);
    
}
