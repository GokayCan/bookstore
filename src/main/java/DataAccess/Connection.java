
package DataAccess;

import java.sql.*;


public class Connection {
    private String url = "jdbc:mysql://app.sobiad.com:3306/grup1?useUnicode=true&characterEncoding=UTF-8&useSSL=false";
    private String username = "grup1";
    private String password = "grup1";
    
    public java.sql.Connection getConnection(){
        try{
            Class.forName("com.mysql.jdbc.Driver");
            java.sql.Connection con =  DriverManager.getConnection(url,username,password);
            return con;
        }
        catch(Exception ex){
            ex.printStackTrace();
        }
        return null;
    }
}
