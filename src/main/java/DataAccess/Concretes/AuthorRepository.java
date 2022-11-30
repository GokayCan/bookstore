package DataAccess.Concretes;

import DataAccess.Abstractions.IAuthorRepository;
import java.sql.Connection;

public class AuthorRepository extends Repository implements IAuthorRepository{

    public AuthorRepository(Connection con) {
        super(con);
    }
}
