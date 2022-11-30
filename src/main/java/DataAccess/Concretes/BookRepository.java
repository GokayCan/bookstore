package DataAccess.Concretes;

import DataAccess.Abstractions.IBookRepository;
import java.sql.Connection;

public class BookRepository extends Repository implements IBookRepository{

    public BookRepository(Connection con) {
        super(con);
    }
    
}
