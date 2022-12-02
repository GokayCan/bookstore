package DataAccess.Concretes;
import DataAccess.Abstractions.ITranslatorRepository;
import DataAccess.Entities.Translator;
import java.sql.SQLException;
import java.sql.*;
import java.util.ArrayList;

public class TranslatorRepository extends Repository implements ITranslatorRepository{
    
    public ArrayList<Translator> translators;
    public Translator translator;
    public ResultSet rs;
    public Statement st;
    public PreparedStatement pst;
    
    @Override
    public ArrayList<Translator> getList() {
        
       String query = "SELECT * From Translator";

        translator = new Translator();

        translators = new ArrayList<Translator>();

        try {
            st = con.createStatement();
            rs = st.executeQuery(query);

            while (rs.next()) {

                translator.setID(rs.getInt("ID"));
                translator.setFirstName(rs.getString("FirstName"));
                translator.setLastName(rs.getString("LastName"));

                translators.add(translator);
            }

            return translators;

        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        
        return null; 
        
    }

    @Override
    public void Add(Translator entity) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void Update(Translator entity) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void Delete(int ID) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public Translator getById(int ID) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
}
