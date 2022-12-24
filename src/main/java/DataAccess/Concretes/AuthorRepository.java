package DataAccess.Concretes;

import DataAccess.Abstractions.IAuthorRepository;
import DataAccess.Entities.Author;
import java.sql.*;
import java.util.ArrayList;

public class AuthorRepository extends Repository implements IAuthorRepository {

    public ArrayList<Author> authors;
    public Author author;
    public ResultSet rs;
    public Statement st;
    public PreparedStatement pst;

    @Override
    public ArrayList<Author> getList() {
        String query = "SELECT * From Author";

        authors = new ArrayList<Author>();

        try {
            st = con.createStatement();
            rs = st.executeQuery(query);

            while (rs.next()) {

                author = new Author();

                author.setID(rs.getInt("ID"));
                author.setFirstName(rs.getString("FirstName"));
                author.setLastName(rs.getString("LastName"));
                author.setBiography(rs.getString("Biography"));
                author.setBirthDate(rs.getDate("BirthDate"));

                authors.add(author);
            }
            //con.close();
            return authors;

        } catch (SQLException ex) {
            ex.printStackTrace();
        }

        return null;
    }

    @Override
    public void Add(Author entity) {
        String query = "INSERT INTO Author(FirstName,LastName,BirthDate,Biography) VALUES('"+entity.getFirstName()+"','"+entity.getLastName()+"','"+entity.getBirthDate()+"','"+entity.getBiography()+"')";
        
        try {
            st=con.createStatement();
            st.execute(query);
            //con.close();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }

    @Override
    public void Update(Author author) {
        
        String query="UPDATE Author SET FirstName='"+author.getFirstName()+"',LastName='"+author.getLastName()+"',BirthDate='"+author.getBirthDate()+"',Biography='"+author.getBiography()+"' Where ID='"+author.getID()+"'";
        
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
        String query="DELETE FROM Author Where ID='"+ID+"'";
        
        try {
            st=con.createStatement();
            st.execute(query);
            //con.close();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }

    @Override
    public Author getById(int ID) {
        Author author=new Author();
        
        String query="SELECT * FROM Author Where ID='"+ID+"'";
        
        try {
            st=con.createStatement();
            rs=st.executeQuery(query);
            
            rs.next();
            
            author.setFirstName(rs.getString("FirstName"));
            author.setLastName(rs.getString("LastName"));
            author.setBirthDate(rs.getDate("BirthDate"));
            author.setBiography(rs.getString("Biography"));
            author.setID(rs.getInt("ID"));
            //con.close();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        
        return author;
    } 
}
