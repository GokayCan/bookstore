package DataAccess.Concretes;

import DataAccess.Abstractions.IAdminRepository;
import java.sql.*;

public class AdminRepository extends Repository implements IAdminRepository{
    
    public ResultSet rs;
    public Statement st;
    public PreparedStatement pst;

    @Override
    public boolean IsAccountExist(String username, String password) {
        String query = "Select Count(*) as Account From Admin where UserName = ? and Password = ? ";
        try{
            pst = con.prepareStatement(query);
            pst.setString(1, username);
            pst.setString(2, password);
            rs = pst.executeQuery();
            rs.next();
            int row = rs.getInt("Account");
            //con.close();
            if (row > 0){
                return true;
            }           
        }catch(Exception ex){
            ex.printStackTrace();
        }
        return false;
    }
}
