package DataAccess.Concretes;

import DataAccess.Abstractions.ICategoryRepository;
import DataAccess.Entities.BaseEntity;
import DataAccess.Entities.Category;
import java.sql.Connection;
import java.sql.*;
import java.util.ArrayList;

public class CategoryRepository extends Repository implements ICategoryRepository {

    public ArrayList<Category> categories;
    public Category category;
    
    Statement st;
    ResultSet rs;
    PreparedStatement pst;
    
    public CategoryRepository(){
        
    }

    @Override
    public ArrayList<Category> getList() {
        
        String query = "SELECT * From Category";

        categories = new ArrayList<Category>();

        try {
            st = con.createStatement();
            rs = st.executeQuery(query);

            while (rs.next()) {
                
                category = new Category();
                category.setID(rs.getInt("ID"));
                category.setName(rs.getString("Name"));

                categories.add(category);
                
                System.out.println(categories);
            }

            return categories;

        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        
        return null;
    }

    @Override
    public void Add(Category entity) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void Update(Category category) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void Delete(int ID) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public Category getById(int ID) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
}

