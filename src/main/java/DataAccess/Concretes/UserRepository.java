package DataAccess.Concretes;
import DataAccess.Abstractions.IUserRepository;
import DataAccess.Entities.*;
import java.sql.SQLException;
import java.sql.*;
import java.util.ArrayList;

public class UserRepository extends Repository implements IUserRepository{
    
    public ArrayList<User> users;
    public ArrayList<Book> books;
    public User user;
    public Book book;
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
    public void Register(User entity) {
        String query = "INSERT INTO User(FirstName,LastName,Email,Password) VALUES('"+entity.getFirstName()+"','"+entity.getLastName()+"'"
                + ",'"+entity.getEmail()+"','"+entity.getPassword()+"')";

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
            user.setCityID(Integer.parseInt(rs.getString("CityID")));
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
        String query = "Select ID From User where Email = ? and Password = ?";
        try {
            pst = con.prepareStatement(query);
            pst.setString(1, email);
            pst.setString(2, password);
            rs=pst.executeQuery();
            rs.next();
            int id = rs.getInt("ID");
            
            user=getById(id);
            
            return user;
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return null;
    }

    @Override
    public int getIDByEmail(String email) {
        String query = "Select ID From User where Email = '"+email+"'";
        try {
            st = con.createStatement();
            rs = st.executeQuery(query);
            
            rs.next();
            int id = rs.getInt("ID");

            return id;
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return -1;
    }
    
    @Override
    public ArrayList<Book> getMyBooks(int ID) {
        String query="SELECT B.ID,B.Name,B.Subject,B.Stock,B.Enable,P.Name as Publisher ,B.PublishDate,B.PageNumber,B.PrintCount,B.ImageUrl FROM Book B inner join Publisher P on B.PublisherID = P.ID inner join Loan L on L.UserID='"+ID+"' where B.ID=L.BookID";
        
        books = new ArrayList<Book>();

        try {
            st = con.createStatement();
            rs = st.executeQuery(query);
            
            while (rs.next()) {
                book = new Book();
                book.setID(rs.getInt("ID"));
                book.setName(rs.getString("Name"));
                book.setSubject(rs.getString("Subject"));
                book.setPageNumber(rs.getString("PageNumber"));
                book.setEnable(rs.getBoolean("Enable"));
                book.setPrintCount(rs.getString("PrintCount"));
                book.setStock(rs.getInt("Stock"));
                book.setPublishDate(rs.getDate("PublishDate"));
                book.setPublisherName(rs.getString("Publisher"));
                book.setImageUrl(rs.getString("ImageUrl"));
                
                books.add(book);   
            }
            return books;

        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        
        return null;
    }

    @Override
    public boolean EmailExist(String email) {
        String query = "Select COUNT(*) as Row  From User Where Email = '"+ email +"'";
        try{
            st = con.createStatement();
            rs = st.executeQuery(query);
            rs.next();
            int row = rs.getInt("Row");
            if (row == 0){
                return false;
            }
        }catch(Exception ex){
            ex.printStackTrace();
        }
        return true;
    }
    
    
   
}
