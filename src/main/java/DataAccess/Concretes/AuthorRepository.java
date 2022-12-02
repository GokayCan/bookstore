package DataAccess.Concretes;
import DataAccess.Abstractions.IAuthorRepository;
import DataAccess.Entities.Author;
import java.sql.*;
import java.util.ArrayList;

public class AuthorRepository extends Repository implements IAuthorRepository{
    
    public ArrayList<Author> authors;
    public Author author;
    public ResultSet rs;
    public Statement st;
    public PreparedStatement pst;

    @Override
    public ArrayList<Author> getList() {
        String query = "SELECT * From Author";

        author = new Author();

        authors = new ArrayList<Author>();

        try {
            st = con.createStatement();
            rs = st.executeQuery(query);

            while (rs.next()) {

                author.setID(rs.getInt("ID"));
                author.setFirstName(rs.getString("FirstName"));
                author.setLastName(rs.getString("LastName"));
                author.setBiography(rs.getString("Biography"));
                author.setBirthDate(rs.getDate("BirthDate"));

                authors.add(author);
            }

            return authors;

        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        
        return null;
    }

    @Override
    public void Add(Author entity) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void Update(Author entity) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void Delete(int ID) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public Author getById(int ID) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
}
