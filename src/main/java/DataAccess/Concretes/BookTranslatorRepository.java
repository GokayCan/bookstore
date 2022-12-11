package DataAccess.Concretes;

import DataAccess.Abstractions.IBookTranslatorRepository;
import DataAccess.Entities.BookTranslator;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class BookTranslatorRepository extends Repository implements IBookTranslatorRepository{
 
    Statement st;
    ResultSet rs;
    PreparedStatement pst;
    
    @Override
    public ArrayList<BookTranslator> getList() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void Add(BookTranslator entity) {
        String query = "INSERT INTO BookTranslator(BookID,TranslatorID) VALUES('"+entity.getBookID()+"','"+entity.getTranslatorID()+"')";
        
        try {
            st=con.createStatement();
            st.execute(query);
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }

    @Override
    public void Update(BookTranslator entity) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void Delete(int ID) {
        String query="DELETE FROM BookTranslator Where BookID='"+ID+"'";
        
        try {
            st=con.createStatement();
            st.execute(query);
            
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }

    @Override
    public BookTranslator getById(int ID) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
}
