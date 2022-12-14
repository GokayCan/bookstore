package DataAccess.Concretes;

import DataAccess.Abstractions.IPublisherRepository;
import DataAccess.Entities.Publisher;
import java.sql.SQLException;
import java.sql.*;
import java.util.ArrayList;

public class PublisherRepository extends Repository implements IPublisherRepository{
  
    public ArrayList<Publisher> publishers;
    public Publisher publisher;
    public ResultSet rs;
    public Statement st;
    public PreparedStatement pst;
    
    @Override
    public ArrayList<Publisher> getList() {
        
       String query = "SELECT * From Publisher";


        publishers = new ArrayList<Publisher>();

        try {
            st = con.createStatement();
            rs = st.executeQuery(query);

            while (rs.next()) {
                
                publisher = new Publisher();
                
                publisher.setID(rs.getInt("ID"));
                publisher.setName(rs.getString("Name"));

                publishers.add(publisher);
            }
            //con.close();
            return publishers;

        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        
        return null; 
        
    }

    @Override
    public void Add(Publisher entity) {
        String query = "INSERT INTO Publisher(Name) VALUES('"+entity.getName()+"')";
        
        try {
            st=con.createStatement();
            st.execute(query);
            //con.close();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }

    @Override
    public void Update(Publisher publisher) {
        
        String query="UPDATE Publisher SET Name='"+publisher.getName()+"' Where ID='"+publisher.getID()+"'";
        
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
        String query="DELETE FROM Publisher Where ID='"+ID+"'";
        
        try {
            st=con.createStatement();
            st.execute(query);
            //con.close();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }

    @Override
    public Publisher getById(int ID) {
        Publisher publisher=new Publisher();
        
        String query="SELECT * FROM Publisher Where ID='"+ID+"'";
        
        try {
            st=con.createStatement();
            rs=st.executeQuery(query);
            
            rs.next();
            
            publisher.setName(rs.getString("Name"));
            publisher.setID(rs.getInt("ID"));
            //con.close();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        
        return publisher;
    } 
}
