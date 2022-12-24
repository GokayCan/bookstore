package DataAccess.Abstractions;

public interface IAdminRepository{
    
    public boolean IsAccountExist(String username , String password);
    
}
