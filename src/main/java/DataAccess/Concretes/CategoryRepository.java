package DataAccess.Concretes;

import DataAccess.Abstractions.ICategoryRepository;
import DataAccess.Entities.Category;
import java.sql.*;
import java.util.ArrayList;

public class CategoryRepository extends Repository implements ICategoryRepository {

    public ArrayList<Category> categories;
    public Category category;
    
    Statement st;
    ResultSet rs;
    PreparedStatement pst;
    

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
                
            }
            //con.close();
            return categories;

        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        
        return null;
    }

    @Override
    public void Add(Category entity) {
       
        String query = "INSERT INTO Category(Name) VALUES('"+entity.getName()+"')";
        
        try {
            st=con.createStatement();
            st.execute(query);
            //con.close();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        
    }

    @Override
    public void Update(Category category) {
        
        String query="UPDATE Category SET Name='"+category.getName()+"' Where ID='"+category.getID()+"'";
        
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
        String query="DELETE FROM Category Where ID='"+ID+"'";
        
        try {
            st=con.createStatement();
            st.execute(query);
            //con.close();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        
    }

    @Override
    public Category getById(int ID) {
        
        Category category=new Category();
        
        String query="SELECT * FROM Category Where ID='"+ID+"'";
        
        try {
            st=con.createStatement();
            rs=st.executeQuery(query);
            
            rs.next();
            
            category.setName(rs.getString("Name"));
            category.setID(rs.getInt("ID"));
            //con.close();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        
        return category;
    }
}

