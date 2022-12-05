package DataAccess.Concretes;

import DataAccess.Abstractions.IAdminRepository;
import DataAccess.Entities.Admin;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

public class AdminRepository extends Repository implements IAdminRepository{
    
    public ResultSet rs;
    public Statement st;
    public PreparedStatement pst;

    @Override
    public ArrayList<Admin> getList() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void Add(Admin entity) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void Update(Admin entity) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void Delete(int ID) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public Admin getById(int ID) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public boolean IsAccountExist(String username, String password) {
        String query = "Select Count(*) as Account From Admin where UserName = '"+ username +"' and Password = '"+ password +"'";
        try{
            st = con.createStatement();
            rs = st.executeQuery(query);
            rs.next();
            int row = rs.getInt("Account");
            if (row > 0){
                return true;
            }           
        }catch(Exception ex){
            ex.printStackTrace();
        }
        return false;
    }
}
