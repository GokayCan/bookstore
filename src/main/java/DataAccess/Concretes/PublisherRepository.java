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

            return publishers;

        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        
        return null; 
        
    }

    @Override
    public void Add(Publisher entity) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void Update(Publisher entity) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void Delete(int ID) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public Publisher getById(int ID) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
}
