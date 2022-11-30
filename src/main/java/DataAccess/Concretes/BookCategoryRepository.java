package DataAccess.Concretes;

import DataAccess.Abstractions.IBookCategoryRepository;
import java.sql.Connection;

public class BookCategoryRepository extends Repository implements IBookCategoryRepository{

    public BookCategoryRepository(Connection con) {
        super(con);
    }
}
