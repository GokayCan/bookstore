package DataAccess.Concretes;

import DataAccess.Abstractions.IBookAuthorRepository;
import java.sql.Connection;

public class BookAuthorRepository extends Repository implements IBookAuthorRepository{

    public BookAuthorRepository(Connection con) {
        super(con);
    }   
}
