package DataAccess.Concretes;
import DataAccess.Connect;
import java.sql.Connection;
public class Repository{

    Connection con;
    public Repository() {
        Connect connect=new Connect();
        this.con = connect.getConnection();
    }
    
}
