package DataAccess.Concretes;
import DataAccess.Connect;
import java.sql.*;
import javax.servlet.http.HttpServlet;
public class Repository extends HttpServlet{

    public Connection con;
    
    
    public Repository() {
        Connect connect=new Connect();
        this.con = connect.getConnection();
    }
    
}
