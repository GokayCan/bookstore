package DataAccess.Concretes;

import DataAccess.Abstractions.ICityRepository;
import DataAccess.Entities.City;
import DataAccess.Entities.Publisher;
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
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void Update(City entity) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void Delete(int ID) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public City getById(int ID) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
}
