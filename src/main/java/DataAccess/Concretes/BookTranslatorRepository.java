package DataAccess.Concretes;

import DataAccess.Abstractions.IBookTranslatorRepository;
import DataAccess.Entities.BookTranslator;
import java.sql.*;
import java.sql.SQLException;

public class BookTranslatorRepository extends Repository implements IBookTranslatorRepository{
 
    Statement st;
    ResultSet rs;
    PreparedStatement pst;
    

    @Override
    public void Add(BookTranslator entity) {
        String query = "INSERT INTO BookTranslator(BookID,TranslatorID) VALUES('"+entity.getBookID()+"','"+entity.getTranslatorID()+"')";
        
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
        String query="DELETE FROM BookTranslator Where BookID='"+ID+"'";
        
        try {
            st=con.createStatement();
            st.execute(query);
            //con.close();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }

}
