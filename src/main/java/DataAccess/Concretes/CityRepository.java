package DataAccess.Concretes;

import DataAccess.Abstractions.ICityRepository;
import DataAccess.Entities.City;
import java.sql.SQLException;
import java.sql.*;
import java.util.ArrayList;

public class CityRepository extends Repository implements ICityRepository{

    public ArrayList<City> cities;
    public City city;
    public ResultSet rs;
    public Statement st;
    public PreparedStatement pst;
    
    @Override
    public ArrayList<City> getList() {
        
       String query = "SELECT * From City";

        city = new City();

        cities = new ArrayList<City>();

        try {
            st = con.createStatement();
            rs = st.executeQuery(query);

            while (rs.next()) {
                
                city = new City();
                
                city.setID(rs.getInt("ID"));
                city.setName(rs.getString("Name"));

                cities.add(city);
            }

            return cities;

        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        
        return null; 
        
    }

    @Override
    public void Add(City entity) {
        String query = "INSERT INTO City(Name) VALUES('"+entity.getName()+"')";
        
        try {
            st=con.createStatement();
            st.execute(query);
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }

    @Override
    public void Update(City city) {
        
        String query="UPDATE City SET Name='"+city.getName()+"' Where ID='"+city.getID()+"'";
        
        try {
            st=con.createStatement();
            st.execute(query);
            
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        
    }

    @Override
    public void Delete(int ID) {
        String query="DELETE FROM City Where ID='"+ID+"'";
        
        try {
            st=con.createStatement();
            st.execute(query);
            
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }

    @Override
    public City getById(int ID) {
        City city=new City();
        
        String query="SELECT * FROM City Where ID='"+ID+"'";
        
        try {
            st =con.createStatement();
            rs =st.executeQuery(query);    
            rs.next();  
            city.setName(rs.getString("Name"));
            city.setID(rs.getInt("ID"));
            
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        
        return city;
    }    

    @Override
    public String getByName(int ID) {
        String query="SELECT Name FROM City Where ID = ?";
        System.out.print(ID);
        try {
            pst=con.prepareStatement(query); 
            pst.setInt(1,ID);
            rs = pst.executeQuery();
            rs.next();
            return rs.getString("Name");            
        } catch (SQLException ex) {
        ex.printStackTrace();
        }
        return "Bos";
    }
}
