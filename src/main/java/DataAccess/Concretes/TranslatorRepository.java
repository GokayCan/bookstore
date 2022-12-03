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
                
                translator = new Translator();

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
        String query = "INSERT INTO Translator(FirstName,LastName) VALUES('"+entity.getFirstName()+"','"+entity.getLastName()+"')";
        
        try {
            st=con.createStatement();
            st.execute(query);
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }

    @Override
    public void Update(Translator translator) {
        
        String query="UPDATE Translator SET FirstName='"+translator.getFirstName()+"',LastName='"+translator.getLastName()+"' Where ID='"+translator.getID()+"'";
        
        try {
            st=con.createStatement();
            st.execute(query);
            
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        
    }

    @Override
    public void Delete(int ID) {
        String query="DELETE FROM Translator Where ID='"+ID+"'";
        
        try {
            st=con.createStatement();
            st.execute(query);
            
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }

    @Override
    public Translator getById(int ID) {
        Translator translator=new Translator();
        
        String query="SELECT * FROM Translator Where ID='"+ID+"'";
        
        try {
            st=con.createStatement();
            rs=st.executeQuery(query);
            
            rs.next();
            
            translator.setFirstName(rs.getString("FirstName"));
            translator.setLastName(rs.getString("LastName"));
            translator.setID(rs.getInt("ID"));
            
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        
        return translator;
    } 
}
