package DataAccess.Concretes;

import DataAccess.Abstractions.IBookRepository;
import DataAccess.Entities.Book;
import java.sql.*;
import java.util.ArrayList;

public class BookRepository extends Repository implements IBookRepository{
    
    public ArrayList<Book> books;
    public Book book;
    Statement st;
    ResultSet rs;
    PreparedStatement pst;

    @Override
    public ArrayList<Book> getList() {
        String query = "SELECT B.ID,B.Name,B.Stock,B.Enable,P.Name as Publisher,B.PublishDate,B.PageNumber,B.PrintCount,B.ImageUrl FROM Book B " +
                        "inner join Publisher P on B.PublisherID = P.ID";
        String query2 = "SELECT B.Name as BookName, CONCAT(A.FirstName,\" \",A.LastName) As AuthorName FROM Book B " +
                        "inner join BookAuthor BA on B.ID = BA.BookID " +
                        "inner join Author A on A.ID = BA.AuthorID";
        books = new ArrayList<Book>();

        try {
            st = con.createStatement();
            rs = st.executeQuery(query);
            
            while (rs.next()) {
                book = new Book();
                book.setID(rs.getInt("ID"));
                book.setName(rs.getString("Name"));
                book.setPageNumber(rs.getString("PageNumber"));
                book.setEnable(rs.getBoolean("Enable"));
                book.setPrintCount(rs.getString("PrintCount"));
                book.setStock(rs.getInt("Stock"));
                book.setPublishDate(rs.getDate("PublishDate"));
                book.setPublisherName(rs.getString("Publisher"));
                book.setImageUrl(rs.getString("ImageUrl"));          
                books.add(book);   
            }
            return books;

        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        
        return null;
    }

    @Override
    public void Add(Book entity) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void Update(Book entity) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void Delete(int ID) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public Book getById(int ID) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
    
}
