package DataAccess.Abstractions;

import DataAccess.Entities.User;
import java.util.ArrayList;

public interface IUserRepository{
    //buralara özel fonksiyonlar gelecek 
    //cezaları listeleme gibi vs
    
    public ArrayList<User> getList();

    public void Add(User entity);

    public void Update(User entity);

    public void Delete(int ID);

    public User getById(int ID);
    
    public int getByEmail(String email);
}
