package DataAccess.Concretes;

import DataAccess.Abstractions.IBookCategoryRepository;
import DataAccess.Entities.BookCategory;
import java.sql.*;
import java.sql.SQLException;

public class BookCategoryRepository extends Repository implements IBookCategoryRepository{
    
    Statement st;
    ResultSet rs;
    PreparedStatement pst;
    
    @Override
    public void Add(BookCategory entity) {
        String query = "INSERT INTO BookCategory(BookID,CategoryID) VALUES('"+entity.getBookID()+"','"+entity.getCategoryID()+"')";
        
        try {
            st=con.createStatement();
            st.execute(query);
            //con.close();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }

    @Override
    public void Delete(int ID) {
        String query="DELETE FROM BookCategory Where BookID='"+ID+"'";
        
        try {
            st=con.createStatement();
            st.execute(query);
            //con.close();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }
}
