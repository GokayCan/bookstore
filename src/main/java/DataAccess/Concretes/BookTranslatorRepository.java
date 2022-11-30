package DataAccess.Concretes;

import DataAccess.Abstractions.IBookTranslatorRepository;
import java.sql.Connection;

public class BookTranslatorRepository extends Repository implements IBookTranslatorRepository{

    public BookTranslatorRepository(Connection con) {
        super(con);
    }   
}
