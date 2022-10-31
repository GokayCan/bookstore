package Db;

import java.sql.*;

/**
 *
 * @author gokay
 */
public class DbConnector {
    
    String url = "jdbc:mysql://app.sobiad.com:3306/grup1?useUnicode=true&characterEncoding=UTF-8&useSSL=false";
    String uname = "grup1";
    String pass = "grup1";
    
    public void Connect(){
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(url,uname,pass);
            if (!con.isClosed()){
                System.out.println("Baglanti tamam");
            }
            else{
                System.out.println("Baglanti basarisiz");
            }
            
        }catch(Exception ex){
            ex.printStackTrace();
        }
    }
}
