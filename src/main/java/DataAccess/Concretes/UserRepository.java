package DataAccess.Concretes;
import DataAccess.Abstractions.IUserRepository;
import DataAccess.Entities.User;
import java.sql.SQLException;
import java.sql.*;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

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
        String query = "INSERT INTO User(FirstName,LastName,Email,Password,PhoneNumber,Address,CityID,BirthDate,ImageUrl) VALUES('"+entity.getFirstName()+"','"+entity.getLastName()+"'"
                + ",'"+entity.getEmail()+"','"+entity.getPassword()+"'"
                + ",'"+entity.getPhoneNumber()+"','"+entity.getAddress()+"'"
                + ",'"+entity.getCityID()+"','"+entity.getBirthDate()+"','"+entity.getImageUrl()+"')";
        
        try {
            st=con.createStatement();
            st.execute(query);
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }

    @Override
    public void Update(User user) {
        
        String query="UPDATE User SET FirstName='"+user.getFirstName()+"',LastName='"+user.getLastName()+"'"
                + ",Email='"+user.getEmail()+"',Password='"+user.getPassword()+"',PhoneNumber='"+user.getPhoneNumber()+"'"
                + ",Address='"+user.getAddress()+"',CityID='"+user.getCityID()+"',BirthDate='"+user.getBirthDate()+"',ImageUrl='"+user.getImageUrl()+"' Where ID='"+user.getID()+"'";
        
        try {
            st=con.createStatement();
            st.execute(query);
            
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        
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
        
        String query="SELECT * FROM User Where ID='"+ID+"'";
        
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
            user.setID(rs.getInt("ID"));
            
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        
        return user;
    }

    @Override
    public User getByEmail(String email, String password) {
        String query = "Select ID From User where Email = '"+email+"' and Password = '"+password+"'";
        try {
            st = con.createStatement();
            rs = st.executeQuery(query);
            rs.next();
            int id = rs.getInt("ID");
            
            user=getById(id);
            
            return user;
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return null;
    }
}
