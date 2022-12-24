package DataAccess.Concretes;

import DataAccess.Abstractions.IBookAuthorRepository;
import DataAccess.Entities.BookAuthor;
import java.sql.*;
import java.sql.SQLException;


public class BookAuthorRepository extends Repository implements IBookAuthorRepository{
 
    Statement st;
    ResultSet rs;
    PreparedStatement pst;
    

    @Override
    public void Add(BookAuthor entity) {
        String query = "INSERT INTO BookAuthor(BookID,AuthorID) VALUES('"+entity.getBookID()+"','"+entity.getAuthorID()+"')";
        
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
        String query="DELETE FROM BookAuthor Where BookID='"+ID+"'";
        
        try {
            st=con.createStatement();
            st.execute(query);
            //con.close();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }


}
