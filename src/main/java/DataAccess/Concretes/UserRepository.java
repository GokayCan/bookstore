package DataAccess.Concretes;
import DataAccess.Abstractions.IUserRepository;
import java.sql.Connection;

public class UserRepository extends Repository implements IUserRepository{
     
    public UserRepository(Connection con) {
        super(con);
    }   
}
