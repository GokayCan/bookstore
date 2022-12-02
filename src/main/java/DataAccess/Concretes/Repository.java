package DataAccess.Concretes;
import DataAccess.Connect;
import java.sql.*;
public class Repository{

    public Connection con;
    
    
    public Repository() {
        Connect connect=new Connect();
        this.con = connect.getConnection();
    }
    
}
