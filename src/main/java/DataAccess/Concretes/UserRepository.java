package DataAccess.Concretes;
import DataAccess.Abstractions.IUserRepository;
import DataAccess.Entities.User;
import java.sql.SQLException;
import java.sql.*;
import java.util.ArrayList;

public class UserRepository extends Repository implements IUserRepository{
    
    public ArrayList<User> users;
    public User user;
    Statement st;
    ResultSet rs;
    PreparedStatement pst;
        
    @Override
    public ArrayList<User> getList() {
        String query = "SELECT U.ID , U.FirstName , U.LastName , U.Email , U.Password , U.PhoneNumber , U.Address , U.CityID , C.Name , U.BirthDate , U.ImageUrl FROM User U " +
                "inner join City C on U.CityID = C.ID";
        String guery2 = "";
        users = new ArrayList<User>();

        try {
            st = con.createStatement();
            rs = st.executeQuery(query);

            while (rs.next()) {
                
                user = new User();
                user.setID(rs.getInt("ID"));
                user.setFirstName(rs.getString("FirstName"));
                user.setLastName(rs.getString("LastName"));
                user.setEmail(rs.getString("Email"));
                user.setPassword(rs.getString("Password"));
                user.setPhoneNumber(rs.getString("PhoneNumber"));
                user.setAddress(rs.getString("Address"));
                user.setCityName(rs.getString("C.Name"));
                user.setBirthDate(rs.getDate("BirthDate"));
                user.setImageUrl(rs.getString("ImageUrl"));
                
                users.add(user);
                
                System.out.println(users);
            }

            return users;

        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        
        return null;
    }

    @Override
    public void Add(User entity) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void Update(User entity) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void Delete(int ID) {
        String query="DELETE FROM User Where ID='"+ID+"'";
        
        try {
            st=con.createStatement();
            st.execute(query);
            
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }

    @Override
    public User getById(int ID) {
        User user = new User();
        
        String query="SELECT * FROM User U "
                + "inner join City C on U.CityID = C.ID"
                + " Where ID='" + ID + "'";
        
        try {
            st=con.createStatement();
            rs=st.executeQuery(query);
            
            rs.next();
            
            user.setFirstName(rs.getString("FirstName"));
            user.setLastName(rs.getString("LastName"));
            user.setEmail(rs.getString("Email"));
            user.setPassword(rs.getString("Password"));
            user.setPhoneNumber(rs.getString("PhoneNumber"));
            user.setAddress(rs.getString("Address"));
            user.setCityName(rs.getString("CityID"));
            user.setBirthDate(rs.getDate("BirthDate"));
            user.setImageUrl(rs.getString("ImageUrl"));
            user.setCityName(rs.getString("Name"));
            user.setID(rs.getInt("ID"));
            
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        
        return user;
    }
}
