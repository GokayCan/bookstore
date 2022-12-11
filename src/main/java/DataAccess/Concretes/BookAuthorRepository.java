package DataAccess.Concretes;
import DataAccess.Abstractions.IBookAuthorRepository;
import DataAccess.Entities.BookAuthor;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class BookAuthorRepository extends Repository implements IBookAuthorRepository{
 
    Statement st;
    ResultSet rs;
    PreparedStatement pst;
    
    @Override
    public ArrayList<BookAuthor> getList() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void Add(BookAuthor entity) {
        String query = "INSERT INTO BookAuthor(BookID,AuthorID) VALUES('"+entity.getBookID()+"','"+entity.getAuthorID()+"')";
        
        try {
            st=con.createStatement();
            st.execute(query);
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }

    @Override
    public void Update(BookAuthor entity) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void Delete(int ID) {
        String query="DELETE FROM BookAuthor Where BookID='"+ID+"'";
        
        try {
            st=con.createStatement();
            st.execute(query);
            
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }

    @Override
    public BookAuthor getById(int ID) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
}
